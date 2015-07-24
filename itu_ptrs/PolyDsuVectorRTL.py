#=========================================================================
# PolyDsuVectorRTL
#=========================================================================
# PyMTL implementation of the vector data-structure unit. The vector
# data-structure unit has a data-structure request interface over which it
# receives a message sent by the dispatch unit to service a iterator-based
# request. The results of the computation are returned to the processor
# via the iterator response interface.
#
# NOTE: Currently the design handles only primitive data-types.
# TBD: Handle user-defined data-types.
# XXX: The abstraction currently only supports bidirectional iterator
# category and needs to be updated to support random access iterators

from pymtl      import *
from pclib.ifcs import InValRdyBundle, OutValRdyBundle
from pclib.rtl  import RegEn

from IteratorMsg       import IteratorMsg
from PipeCtrlFuture    import PipeCtrlFuture
from dstu.MemMsgFuture import MemMsg

#-------------------------------------------------------------------------
# PolyDsuVectorRTL
#-------------------------------------------------------------------------

class PolyDsuVectorRTL( Model ):

  def __init__( s ):

    #---------------------------------------------------------------------
    # Interfaces
    #---------------------------------------------------------------------

    s.xcelreq    = InValRdyBundle  ( IteratorMsg(32).req  )
    s.xcelresp   = OutValRdyBundle ( IteratorMsg(32).resp )

    s.memreq     = OutValRdyBundle ( MemMsg(8,32,32).req   )
    s.memresp    = InValRdyBundle  ( MemMsg(8,32,32).resp  )

    s.dtdesc     = InPort ( 32 )

    #---------------------------------------------------------------------
    # Send stage
    #---------------------------------------------------------------------

    @s.combinational
    def send_request():

      # get request
      if   s.xcelreq.msg.opcode == 0:
        s.memreq.msg.opaque.value = s.xcelreq.msg.opaque
        s.memreq.msg.type_.value  = 0
        s.memreq.msg.addr.value   = s.xcelreq.msg.addr
        s.memreq.msg.len.value    = ( s.dtdesc >> 16 ) & 0x3
        s.memreq.msg.data.value   = 0

        # we do accept a new message unless the memory port can accept a
        # new request and if the receive stage is not blocking
        s.xcelreq.rdy.value       = s.memreq.rdy  &  ~s.pipe_SR.prev_stall
        s.memreq.val.value        = s.xcelreq.val &  ~s.pipe_SR.prev_stall

      # set request
      elif s.xcelreq.msg.opcode == 1:
        s.memreq.msg.opaque.value = s.xcelreq.msg.opaque
        s.memreq.msg.type_.value  = 1
        s.memreq.msg.addr.value   = s.xcelreq.msg.addr
        s.memreq.msg.len.value    = ( s.dtdesc >> 16 ) & 0x3
        s.memreq.msg.data.value   = s.xcelreq.msg.data

        # we do accept a new message unless the memory port can accept a
        # new request and if the receive stage is not blocking
        s.xcelreq.rdy.value       = s.memreq.rdy  &  ~s.pipe_SR.prev_stall
        s.memreq.val.value        = s.xcelreq.val &  ~s.pipe_SR.prev_stall

      # increment request
      elif s.xcelreq.msg.opcode == 2:
        s.memreq.val.value  = 0
        s.xcelreq.rdy.value = ~s.pipe_SR.prev_stall
      # decrement request
      elif s.xcelreq.msg.opcode == 3:
        s.memreq.val.value  = 0
        s.xcelreq.rdy.value = ~s.pipe_SR.prev_stall

    #---------------------------------------------------------------------
    # State
    #---------------------------------------------------------------------

    s.pipe_SR = PipeCtrlFuture()
    s.connect( s.pipe_SR.next_squash, 0              )
    s.connect( s.pipe_SR.curr_squash, 0              )

    s.ds_id   = RegEn( 11 )
    s.connect( s.ds_id.in_, s.xcelreq.msg.ds_id   )
    s.connect( s.ds_id.en,  s.pipe_SR.curr_reg_en )
    s.connect( s.ds_id.out, s.xcelresp.msg.ds_id  )

    s.opaque  = RegEn( 8 )
    s.connect( s.opaque.in_, s.xcelreq.msg.opaque  )
    s.connect( s.opaque.en,  s.pipe_SR.curr_reg_en )
    s.connect( s.opaque.out, s.xcelresp.msg.opaque )

    s.dtdesc_reg = RegEn( 32 )
    s.connect( s.dtdesc_reg.in_, s.dtdesc              )
    s.connect( s.dtdesc_reg.en,  s.pipe_SR.curr_reg_en )

    s.opcode  = RegEn( 4 )
    s.connect( s.opcode.in_, s.xcelreq.msg.opcode  )
    s.connect( s.opcode.en,  s.pipe_SR.curr_reg_en )
    s.connect( s.opcode.out, s.xcelresp.msg.opcode )

    s.addr_reg = RegEn( 32 )
    s.connect( s.addr_reg.in_, s.xcelreq.msg.addr    )
    s.connect( s.addr_reg.en,  s.pipe_SR.curr_reg_en )

    #---------------------------------------------------------------------
    # Receive Stage
    #---------------------------------------------------------------------

    @s.combinational
    def receive_response():

      s.pipe_SR.prev_val.value   = s.xcelreq.val & s.xcelreq.rdy
      s.pipe_SR.next_stall.value = ~s.xcelresp.rdy

      # get response
      if   s.opcode.out == 0:
        s.xcelresp.msg.data.value  = s.memresp.msg.data
        s.xcelresp.msg.addr.value  = s.addr_reg.out
        s.xcelresp.val.value       = s.pipe_SR.curr_val & s.memresp.val
        s.memresp.rdy.value        = s.pipe_SR.curr_val & s.xcelresp.rdy
        s.pipe_SR.curr_stall.value = ~s.memresp.val & s.pipe_SR.curr_val
      # set response
      elif s.opcode.out == 1:
        s.xcelresp.msg.data.value  = 0
        s.xcelresp.msg.addr.value  = s.addr_reg.out
        s.xcelresp.val.value       = s.pipe_SR.curr_val & s.memresp.val
        s.memresp.rdy.value        = s.pipe_SR.curr_val & s.xcelresp.rdy
        s.pipe_SR.curr_stall.value = ~s.memresp.val & s.pipe_SR.curr_val
      # increment response
      elif s.opcode.out == 2:
        s.xcelresp.msg.addr.value  = s.addr_reg.out + ( ( s.dtdesc_reg.out >> 16 ) & 0xff )
        s.xcelresp.msg.data.value  = 0
        s.xcelresp.val.value       = s.pipe_SR.curr_val
        s.memresp.rdy.value        = 0
        s.pipe_SR.curr_stall.value = 0
      # decrement response
      elif s.opcode.out == 3:
        s.xcelresp.msg.addr.value  = s.addr_reg.out - ( ( s.dtdesc_reg.out >> 16 ) & 0xff )
        s.xcelresp.msg.data.value  = 0
        s.xcelresp.val.value       = s.pipe_SR.curr_val
        s.memresp.rdy.value        = 0
        s.pipe_SR.curr_stall.value = 0