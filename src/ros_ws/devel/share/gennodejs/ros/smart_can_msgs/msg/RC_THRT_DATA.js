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

class RC_THRT_DATA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RC_THRT_PEDAL_POSITION = null;
      this.RC_THRT_PEDAL_PRESS = null;
    }
    else {
      if (initObj.hasOwnProperty('RC_THRT_PEDAL_POSITION')) {
        this.RC_THRT_PEDAL_POSITION = initObj.RC_THRT_PEDAL_POSITION
      }
      else {
        this.RC_THRT_PEDAL_POSITION = 0;
      }
      if (initObj.hasOwnProperty('RC_THRT_PEDAL_PRESS')) {
        this.RC_THRT_PEDAL_PRESS = initObj.RC_THRT_PEDAL_PRESS
      }
      else {
        this.RC_THRT_PEDAL_PRESS = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RC_THRT_DATA
    // Serialize message field [RC_THRT_PEDAL_POSITION]
    bufferOffset = _serializer.uint8(obj.RC_THRT_PEDAL_POSITION, buffer, bufferOffset);
    // Serialize message field [RC_THRT_PEDAL_PRESS]
    bufferOffset = _serializer.uint8(obj.RC_THRT_PEDAL_PRESS, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RC_THRT_DATA
    let len;
    let data = new RC_THRT_DATA(null);
    // Deserialize message field [RC_THRT_PEDAL_POSITION]
    data.RC_THRT_PEDAL_POSITION = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_THRT_PEDAL_PRESS]
    data.RC_THRT_PEDAL_PRESS = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/RC_THRT_DATA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16f66a8758944d1f785808e5231f5e93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RC_THRT_PEDAL_POSITION
    uint8 RC_THRT_PEDAL_PRESS
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RC_THRT_DATA(null);
    if (msg.RC_THRT_PEDAL_POSITION !== undefined) {
      resolved.RC_THRT_PEDAL_POSITION = msg.RC_THRT_PEDAL_POSITION;
    }
    else {
      resolved.RC_THRT_PEDAL_POSITION = 0
    }

    if (msg.RC_THRT_PEDAL_PRESS !== undefined) {
      resolved.RC_THRT_PEDAL_PRESS = msg.RC_THRT_PEDAL_PRESS;
    }
    else {
      resolved.RC_THRT_PEDAL_PRESS = 0
    }

    return resolved;
    }
};

module.exports = RC_THRT_DATA;
