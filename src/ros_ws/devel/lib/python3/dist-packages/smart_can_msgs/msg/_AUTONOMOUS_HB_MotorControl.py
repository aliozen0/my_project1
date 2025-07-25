# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from smart_can_msgs/AUTONOMOUS_HB_MotorControl.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AUTONOMOUS_HB_MotorControl(genpy.Message):
  _md5sum = "5bce3dd6587bd24ef1eee71abfb3adf7"
  _type = "smart_can_msgs/AUTONOMOUS_HB_MotorControl"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 AUTONOMOUS_HB_Motor_PWM
uint8 AUTONOMOUS_HB_MotState
uint8 AUTONOMOUS_HB_MotEN"""
  __slots__ = ['AUTONOMOUS_HB_Motor_PWM','AUTONOMOUS_HB_MotState','AUTONOMOUS_HB_MotEN']
  _slot_types = ['uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       AUTONOMOUS_HB_Motor_PWM,AUTONOMOUS_HB_MotState,AUTONOMOUS_HB_MotEN

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AUTONOMOUS_HB_MotorControl, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.AUTONOMOUS_HB_Motor_PWM is None:
        self.AUTONOMOUS_HB_Motor_PWM = 0
      if self.AUTONOMOUS_HB_MotState is None:
        self.AUTONOMOUS_HB_MotState = 0
      if self.AUTONOMOUS_HB_MotEN is None:
        self.AUTONOMOUS_HB_MotEN = 0
    else:
      self.AUTONOMOUS_HB_Motor_PWM = 0
      self.AUTONOMOUS_HB_MotState = 0
      self.AUTONOMOUS_HB_MotEN = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3B().pack(_x.AUTONOMOUS_HB_Motor_PWM, _x.AUTONOMOUS_HB_MotState, _x.AUTONOMOUS_HB_MotEN))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 3
      (_x.AUTONOMOUS_HB_Motor_PWM, _x.AUTONOMOUS_HB_MotState, _x.AUTONOMOUS_HB_MotEN,) = _get_struct_3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3B().pack(_x.AUTONOMOUS_HB_Motor_PWM, _x.AUTONOMOUS_HB_MotState, _x.AUTONOMOUS_HB_MotEN))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 3
      (_x.AUTONOMOUS_HB_Motor_PWM, _x.AUTONOMOUS_HB_MotState, _x.AUTONOMOUS_HB_MotEN,) = _get_struct_3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
