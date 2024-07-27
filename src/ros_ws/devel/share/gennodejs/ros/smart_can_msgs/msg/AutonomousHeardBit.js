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

class AutonomousHeardBit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.AutonomousManuelSelect = null;
    }
    else {
      if (initObj.hasOwnProperty('AutonomousManuelSelect')) {
        this.AutonomousManuelSelect = initObj.AutonomousManuelSelect
      }
      else {
        this.AutonomousManuelSelect = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutonomousHeardBit
    // Serialize message field [AutonomousManuelSelect]
    bufferOffset = _serializer.uint8(obj.AutonomousManuelSelect, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutonomousHeardBit
    let len;
    let data = new AutonomousHeardBit(null);
    // Deserialize message field [AutonomousManuelSelect]
    data.AutonomousManuelSelect = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/AutonomousHeardBit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c39b595a65591df04cdfa147e70909cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AutonomousManuelSelect
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutonomousHeardBit(null);
    if (msg.AutonomousManuelSelect !== undefined) {
      resolved.AutonomousManuelSelect = msg.AutonomousManuelSelect;
    }
    else {
      resolved.AutonomousManuelSelect = 0
    }

    return resolved;
    }
};

module.exports = AutonomousHeardBit;
