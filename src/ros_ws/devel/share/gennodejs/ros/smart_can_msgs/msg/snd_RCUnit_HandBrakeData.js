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

class snd_RCUnit_HandBrakeData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RC_HB_PwmValue = null;
      this.RC_HandBrake_PRESS = null;
      this.RC_HandBrake_FREE = null;
      this.RC_HandBrakeData = null;
    }
    else {
      if (initObj.hasOwnProperty('RC_HB_PwmValue')) {
        this.RC_HB_PwmValue = initObj.RC_HB_PwmValue
      }
      else {
        this.RC_HB_PwmValue = 0;
      }
      if (initObj.hasOwnProperty('RC_HandBrake_PRESS')) {
        this.RC_HandBrake_PRESS = initObj.RC_HandBrake_PRESS
      }
      else {
        this.RC_HandBrake_PRESS = 0;
      }
      if (initObj.hasOwnProperty('RC_HandBrake_FREE')) {
        this.RC_HandBrake_FREE = initObj.RC_HandBrake_FREE
      }
      else {
        this.RC_HandBrake_FREE = 0;
      }
      if (initObj.hasOwnProperty('RC_HandBrakeData')) {
        this.RC_HandBrakeData = initObj.RC_HandBrakeData
      }
      else {
        this.RC_HandBrakeData = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type snd_RCUnit_HandBrakeData
    // Serialize message field [RC_HB_PwmValue]
    bufferOffset = _serializer.uint16(obj.RC_HB_PwmValue, buffer, bufferOffset);
    // Serialize message field [RC_HandBrake_PRESS]
    bufferOffset = _serializer.uint8(obj.RC_HandBrake_PRESS, buffer, bufferOffset);
    // Serialize message field [RC_HandBrake_FREE]
    bufferOffset = _serializer.uint8(obj.RC_HandBrake_FREE, buffer, bufferOffset);
    // Serialize message field [RC_HandBrakeData]
    bufferOffset = _serializer.uint8(obj.RC_HandBrakeData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type snd_RCUnit_HandBrakeData
    let len;
    let data = new snd_RCUnit_HandBrakeData(null);
    // Deserialize message field [RC_HB_PwmValue]
    data.RC_HB_PwmValue = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RC_HandBrake_PRESS]
    data.RC_HandBrake_PRESS = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_HandBrake_FREE]
    data.RC_HandBrake_FREE = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_HandBrakeData]
    data.RC_HandBrakeData = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/snd_RCUnit_HandBrakeData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'faee69d41fe0c8f41ca0166523232a9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 RC_HB_PwmValue
    uint8 RC_HandBrake_PRESS
    uint8 RC_HandBrake_FREE
    uint8 RC_HandBrakeData
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new snd_RCUnit_HandBrakeData(null);
    if (msg.RC_HB_PwmValue !== undefined) {
      resolved.RC_HB_PwmValue = msg.RC_HB_PwmValue;
    }
    else {
      resolved.RC_HB_PwmValue = 0
    }

    if (msg.RC_HandBrake_PRESS !== undefined) {
      resolved.RC_HandBrake_PRESS = msg.RC_HandBrake_PRESS;
    }
    else {
      resolved.RC_HandBrake_PRESS = 0
    }

    if (msg.RC_HandBrake_FREE !== undefined) {
      resolved.RC_HandBrake_FREE = msg.RC_HandBrake_FREE;
    }
    else {
      resolved.RC_HandBrake_FREE = 0
    }

    if (msg.RC_HandBrakeData !== undefined) {
      resolved.RC_HandBrakeData = msg.RC_HandBrakeData;
    }
    else {
      resolved.RC_HandBrakeData = 0
    }

    return resolved;
    }
};

module.exports = snd_RCUnit_HandBrakeData;
