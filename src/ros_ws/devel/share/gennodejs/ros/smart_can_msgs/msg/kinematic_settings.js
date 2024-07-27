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

class kinematic_settings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kinematics = null;
      this.enable = null;
    }
    else {
      if (initObj.hasOwnProperty('kinematics')) {
        this.kinematics = initObj.kinematics
      }
      else {
        this.kinematics = 0;
      }
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinematic_settings
    // Serialize message field [kinematics]
    bufferOffset = _serializer.uint8(obj.kinematics, buffer, bufferOffset);
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinematic_settings
    let len;
    let data = new kinematic_settings(null);
    // Deserialize message field [kinematics]
    data.kinematics = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/kinematic_settings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd0a182ea13ba72984dfa70a9b4dc4da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 kinematics
    bool enable
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinematic_settings(null);
    if (msg.kinematics !== undefined) {
      resolved.kinematics = msg.kinematics;
    }
    else {
      resolved.kinematics = 0
    }

    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    return resolved;
    }
};

module.exports = kinematic_settings;
