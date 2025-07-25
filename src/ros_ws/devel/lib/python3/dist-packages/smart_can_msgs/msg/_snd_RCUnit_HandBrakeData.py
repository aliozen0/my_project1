# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from smart_can_msgs/snd_RCUnit_HandBrakeData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class snd_RCUnit_HandBrakeData(genpy.Message):
  _md5sum = "faee69d41fe0c8f41ca0166523232a9b"
  _type = "smart_can_msgs/snd_RCUnit_HandBrakeData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 RC_HB_PwmValue
uint8 RC_HandBrake_PRESS
uint8 RC_HandBrake_FREE
uint8 RC_HandBrakeData"""
  __slots__ = ['RC_HB_PwmValue','RC_HandBrake_PRESS','RC_HandBrake_FREE','RC_HandBrakeData']
  _slot_types = ['uint16','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       RC_HB_PwmValue,RC_HandBrake_PRESS,RC_HandBrake_FREE,RC_HandBrakeData

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(snd_RCUnit_HandBrakeData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.RC_HB_PwmValue is None:
        self.RC_HB_PwmValue = 0
      if self.RC_HandBrake_PRESS is None:
        self.RC_HandBrake_PRESS = 0
      if self.RC_HandBrake_FREE is None:
        self.RC_HandBrake_FREE = 0
      if self.RC_HandBrakeData is None:
        self.RC_HandBrakeData = 0
    else:
      self.RC_HB_PwmValue = 0
      self.RC_HandBrake_PRESS = 0
      self.RC_HandBrake_FREE = 0
      self.RC_HandBrakeData = 0

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
      buff.write(_get_struct_H3B().pack(_x.RC_HB_PwmValue, _x.RC_HandBrake_PRESS, _x.RC_HandBrake_FREE, _x.RC_HandBrakeData))
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
      end += 5
      (_x.RC_HB_PwmValue, _x.RC_HandBrake_PRESS, _x.RC_HandBrake_FREE, _x.RC_HandBrakeData,) = _get_struct_H3B().unpack(str[start:end])
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
      buff.write(_get_struct_H3B().pack(_x.RC_HB_PwmValue, _x.RC_HandBrake_PRESS, _x.RC_HandBrake_FREE, _x.RC_HandBrakeData))
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
      end += 5
      (_x.RC_HB_PwmValue, _x.RC_HandBrake_PRESS, _x.RC_HandBrake_FREE, _x.RC_HandBrakeData,) = _get_struct_H3B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H3B = None
def _get_struct_H3B():
    global _struct_H3B
    if _struct_H3B is None:
        _struct_H3B = struct.Struct("<H3B")
    return _struct_H3B
