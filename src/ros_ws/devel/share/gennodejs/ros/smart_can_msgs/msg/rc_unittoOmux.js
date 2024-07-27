// Auto-generated. Do not edit!

// (in-package smart_can_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class rc_unittoOmux {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.AUTONOMOUS_EMERGENCY = null;
      this.RC_WindowResintance = null;
      this.RC_InteriorLight = null;
      this.RC_ReverseLight = null;
      this.RC_DRL = null;
      this.RC_BrakeLight = null;
      this.AUTONOMOUS_DOOR_OPEN = null;
      this.AUTONOMOUS_DOOR_CLOSE = null;
      this.RC_SignalStatus = null;
      this.RC_LowBeam = null;
      this.RC_HighBeam = null;
      this.RC_SelectionGear = null;
      this.RC_Ignition = null;
    }
    else {
      if (initObj.hasOwnProperty('AUTONOMOUS_EMERGENCY')) {
        this.AUTONOMOUS_EMERGENCY = initObj.AUTONOMOUS_EMERGENCY
      }
      else {
        this.AUTONOMOUS_EMERGENCY = 0;
      }
      if (initObj.hasOwnProperty('RC_WindowResintance')) {
        this.RC_WindowResintance = initObj.RC_WindowResintance
      }
      else {
        this.RC_WindowResintance = 0;
      }
      if (initObj.hasOwnProperty('RC_InteriorLight')) {
        this.RC_InteriorLight = initObj.RC_InteriorLight
      }
      else {
        this.RC_InteriorLight = 0;
      }
      if (initObj.hasOwnProperty('RC_ReverseLight')) {
        this.RC_ReverseLight = initObj.RC_ReverseLight
      }
      else {
        this.RC_ReverseLight = 0;
      }
      if (initObj.hasOwnProperty('RC_DRL')) {
        this.RC_DRL = initObj.RC_DRL
      }
      else {
        this.RC_DRL = 0;
      }
      if (initObj.hasOwnProperty('RC_BrakeLight')) {
        this.RC_BrakeLight = initObj.RC_BrakeLight
      }
      else {
        this.RC_BrakeLight = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_DOOR_OPEN')) {
        this.AUTONOMOUS_DOOR_OPEN = initObj.AUTONOMOUS_DOOR_OPEN
      }
      else {
        this.AUTONOMOUS_DOOR_OPEN = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_DOOR_CLOSE')) {
        this.AUTONOMOUS_DOOR_CLOSE = initObj.AUTONOMOUS_DOOR_CLOSE
      }
      else {
        this.AUTONOMOUS_DOOR_CLOSE = 0;
      }
      if (initObj.hasOwnProperty('RC_SignalStatus')) {
        this.RC_SignalStatus = initObj.RC_SignalStatus
      }
      else {
        this.RC_SignalStatus = 0;
      }
      if (initObj.hasOwnProperty('RC_LowBeam')) {
        this.RC_LowBeam = initObj.RC_LowBeam
      }
      else {
        this.RC_LowBeam = 0;
      }
      if (initObj.hasOwnProperty('RC_HighBeam')) {
        this.RC_HighBeam = initObj.RC_HighBeam
      }
      else {
        this.RC_HighBeam = 0;
      }
      if (initObj.hasOwnProperty('RC_SelectionGear')) {
        this.RC_SelectionGear = initObj.RC_SelectionGear
      }
      else {
        this.RC_SelectionGear = 0;
      }
      if (initObj.hasOwnProperty('RC_Ignition')) {
        this.RC_Ignition = initObj.RC_Ignition
      }
      else {
        this.RC_Ignition = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rc_unittoOmux
    // Serialize message field [AUTONOMOUS_EMERGENCY]
    bufferOffset = _serializer.int8(obj.AUTONOMOUS_EMERGENCY, buffer, bufferOffset);
    // Serialize message field [RC_WindowResintance]
    bufferOffset = _serializer.uint8(obj.RC_WindowResintance, buffer, bufferOffset);
    // Serialize message field [RC_InteriorLight]
    bufferOffset = _serializer.uint8(obj.RC_InteriorLight, buffer, bufferOffset);
    // Serialize message field [RC_ReverseLight]
    bufferOffset = _serializer.uint8(obj.RC_ReverseLight, buffer, bufferOffset);
    // Serialize message field [RC_DRL]
    bufferOffset = _serializer.uint8(obj.RC_DRL, buffer, bufferOffset);
    // Serialize message field [RC_BrakeLight]
    bufferOffset = _serializer.uint8(obj.RC_BrakeLight, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_DOOR_OPEN]
    bufferOffset = _serializer.int8(obj.AUTONOMOUS_DOOR_OPEN, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_DOOR_CLOSE]
    bufferOffset = _serializer.int8(obj.AUTONOMOUS_DOOR_CLOSE, buffer, bufferOffset);
    // Serialize message field [RC_SignalStatus]
    bufferOffset = _serializer.uint8(obj.RC_SignalStatus, buffer, bufferOffset);
    // Serialize message field [RC_LowBeam]
    bufferOffset = _serializer.uint8(obj.RC_LowBeam, buffer, bufferOffset);
    // Serialize message field [RC_HighBeam]
    bufferOffset = _serializer.uint8(obj.RC_HighBeam, buffer, bufferOffset);
    // Serialize message field [RC_SelectionGear]
    bufferOffset = _serializer.uint8(obj.RC_SelectionGear, buffer, bufferOffset);
    // Serialize message field [RC_Ignition]
    bufferOffset = _serializer.uint8(obj.RC_Ignition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rc_unittoOmux
    let len;
    let data = new rc_unittoOmux(null);
    // Deserialize message field [AUTONOMOUS_EMERGENCY]
    data.AUTONOMOUS_EMERGENCY = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RC_WindowResintance]
    data.RC_WindowResintance = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_InteriorLight]
    data.RC_InteriorLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_ReverseLight]
    data.RC_ReverseLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_DRL]
    data.RC_DRL = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_BrakeLight]
    data.RC_BrakeLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_DOOR_OPEN]
    data.AUTONOMOUS_DOOR_OPEN = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_DOOR_CLOSE]
    data.AUTONOMOUS_DOOR_CLOSE = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RC_SignalStatus]
    data.RC_SignalStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_LowBeam]
    data.RC_LowBeam = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_HighBeam]
    data.RC_HighBeam = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_SelectionGear]
    data.RC_SelectionGear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_Ignition]
    data.RC_Ignition = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/rc_unittoOmux';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a9878d79a5dbdeedaf385d69bb9ad39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 AUTONOMOUS_EMERGENCY
    uint8 RC_WindowResintance
    uint8 RC_InteriorLight
    uint8 RC_ReverseLight
    uint8 RC_DRL
    uint8 RC_BrakeLight
    int8 AUTONOMOUS_DOOR_OPEN
    int8 AUTONOMOUS_DOOR_CLOSE
    uint8 RC_SignalStatus
    uint8 RC_LowBeam
    uint8 RC_HighBeam
    uint8 RC_SelectionGear
    uint8 RC_Ignition
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rc_unittoOmux(null);
    if (msg.AUTONOMOUS_EMERGENCY !== undefined) {
      resolved.AUTONOMOUS_EMERGENCY = msg.AUTONOMOUS_EMERGENCY;
    }
    else {
      resolved.AUTONOMOUS_EMERGENCY = 0
    }

    if (msg.RC_WindowResintance !== undefined) {
      resolved.RC_WindowResintance = msg.RC_WindowResintance;
    }
    else {
      resolved.RC_WindowResintance = 0
    }

    if (msg.RC_InteriorLight !== undefined) {
      resolved.RC_InteriorLight = msg.RC_InteriorLight;
    }
    else {
      resolved.RC_InteriorLight = 0
    }

    if (msg.RC_ReverseLight !== undefined) {
      resolved.RC_ReverseLight = msg.RC_ReverseLight;
    }
    else {
      resolved.RC_ReverseLight = 0
    }

    if (msg.RC_DRL !== undefined) {
      resolved.RC_DRL = msg.RC_DRL;
    }
    else {
      resolved.RC_DRL = 0
    }

    if (msg.RC_BrakeLight !== undefined) {
      resolved.RC_BrakeLight = msg.RC_BrakeLight;
    }
    else {
      resolved.RC_BrakeLight = 0
    }

    if (msg.AUTONOMOUS_DOOR_OPEN !== undefined) {
      resolved.AUTONOMOUS_DOOR_OPEN = msg.AUTONOMOUS_DOOR_OPEN;
    }
    else {
      resolved.AUTONOMOUS_DOOR_OPEN = 0
    }

    if (msg.AUTONOMOUS_DOOR_CLOSE !== undefined) {
      resolved.AUTONOMOUS_DOOR_CLOSE = msg.AUTONOMOUS_DOOR_CLOSE;
    }
    else {
      resolved.AUTONOMOUS_DOOR_CLOSE = 0
    }

    if (msg.RC_SignalStatus !== undefined) {
      resolved.RC_SignalStatus = msg.RC_SignalStatus;
    }
    else {
      resolved.RC_SignalStatus = 0
    }

    if (msg.RC_LowBeam !== undefined) {
      resolved.RC_LowBeam = msg.RC_LowBeam;
    }
    else {
      resolved.RC_LowBeam = 0
    }

    if (msg.RC_HighBeam !== undefined) {
      resolved.RC_HighBeam = msg.RC_HighBeam;
    }
    else {
      resolved.RC_HighBeam = 0
    }

    if (msg.RC_SelectionGear !== undefined) {
      resolved.RC_SelectionGear = msg.RC_SelectionGear;
    }
    else {
      resolved.RC_SelectionGear = 0
    }

    if (msg.RC_Ignition !== undefined) {
      resolved.RC_Ignition = msg.RC_Ignition;
    }
    else {
      resolved.RC_Ignition = 0
    }

    return resolved;
    }
};

module.exports = rc_unittoOmux;
