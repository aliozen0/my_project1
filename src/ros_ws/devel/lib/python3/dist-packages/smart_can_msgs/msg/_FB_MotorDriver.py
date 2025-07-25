# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from smart_can_msgs/FB_MotorDriver.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class FB_MotorDriver(genpy.Message):
  _md5sum = "ee0fe8cee4053ab7ab54decef9676a69"
  _type = "smart_can_msgs/FB_MotorDriver"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 GEAR_STATUS_FROM_MOTOR
uint16 PlusTripDistance
uint16 VehicleRPM"""
  __slots__ = ['GEAR_STATUS_FROM_MOTOR','PlusTripDistance','VehicleRPM']
  _slot_types = ['uint8','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       GEAR_STATUS_FROM_MOTOR,PlusTripDistance,VehicleRPM

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FB_MotorDriver, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.GEAR_STATUS_FROM_MOTOR is None:
        self.GEAR_STATUS_FROM_MOTOR = 0
      if self.PlusTripDistance is None:
        self.PlusTripDistance = 0
      if self.VehicleRPM is None:
        self.VehicleRPM = 0
    else:
      self.GEAR_STATUS_FROM_MOTOR = 0
      self.PlusTripDistance = 0
      self.VehicleRPM = 0

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
      buff.write(_get_struct_B2H().pack(_x.GEAR_STATUS_FROM_MOTOR, _x.PlusTripDistance, _x.VehicleRPM))
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
      (_x.GEAR_STATUS_FROM_MOTOR, _x.PlusTripDistance, _x.VehicleRPM,) = _get_struct_B2H().unpack(str[start:end])
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
      buff.write(_get_struct_B2H().pack(_x.GEAR_STATUS_FROM_MOTOR, _x.PlusTripDistance, _x.VehicleRPM))
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
      (_x.GEAR_STATUS_FROM_MOTOR, _x.PlusTripDistance, _x.VehicleRPM,) = _get_struct_B2H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B2H = None
def _get_struct_B2H():
    global _struct_B2H
    if _struct_B2H is None:
        _struct_B2H = struct.Struct("<B2H")
    return _struct_B2H
