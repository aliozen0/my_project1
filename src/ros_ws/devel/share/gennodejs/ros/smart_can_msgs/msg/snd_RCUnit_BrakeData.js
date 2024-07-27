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

class snd_RCUnit_BrakeData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RC_BrakePedal_Speed = null;
      this.RC_BrakePedal_Acc = null;
      this.RC_BrakePedal_Pos = null;
    }
    else {
      if (initObj.hasOwnProperty('RC_BrakePedal_Speed')) {
        this.RC_BrakePedal_Speed = initObj.RC_BrakePedal_Speed
      }
      else {
        this.RC_BrakePedal_Speed = 0;
      }
      if (initObj.hasOwnProperty('RC_BrakePedal_Acc')) {
        this.RC_BrakePedal_Acc = initObj.RC_BrakePedal_Acc
      }
      else {
        this.RC_BrakePedal_Acc = 0;
      }
      if (initObj.hasOwnProperty('RC_BrakePedal_Pos')) {
        this.RC_BrakePedal_Pos = initObj.RC_BrakePedal_Pos
      }
      else {
        this.RC_BrakePedal_Pos = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type snd_RCUnit_BrakeData
    // Serialize message field [RC_BrakePedal_Speed]
    bufferOffset = _serializer.uint16(obj.RC_BrakePedal_Speed, buffer, bufferOffset);
    // Serialize message field [RC_BrakePedal_Acc]
    bufferOffset = _serializer.uint16(obj.RC_BrakePedal_Acc, buffer, bufferOffset);
    // Serialize message field [RC_BrakePedal_Pos]
    bufferOffset = _serializer.uint8(obj.RC_BrakePedal_Pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type snd_RCUnit_BrakeData
    let len;
    let data = new snd_RCUnit_BrakeData(null);
    // Deserialize message field [RC_BrakePedal_Speed]
    data.RC_BrakePedal_Speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RC_BrakePedal_Acc]
    data.RC_BrakePedal_Acc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RC_BrakePedal_Pos]
    data.RC_BrakePedal_Pos = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/snd_RCUnit_BrakeData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '650ea666f66da37d4464c1053ef96d40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 RC_BrakePedal_Speed
    uint16 RC_BrakePedal_Acc
    uint8 RC_BrakePedal_Pos
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new snd_RCUnit_BrakeData(null);
    if (msg.RC_BrakePedal_Speed !== undefined) {
      resolved.RC_BrakePedal_Speed = msg.RC_BrakePedal_Speed;
    }
    else {
      resolved.RC_BrakePedal_Speed = 0
    }

    if (msg.RC_BrakePedal_Acc !== undefined) {
      resolved.RC_BrakePedal_Acc = msg.RC_BrakePedal_Acc;
    }
    else {
      resolved.RC_BrakePedal_Acc = 0
    }

    if (msg.RC_BrakePedal_Pos !== undefined) {
      resolved.RC_BrakePedal_Pos = msg.RC_BrakePedal_Pos;
    }
    else {
      resolved.RC_BrakePedal_Pos = 0
    }

    return resolved;
    }
};

module.exports = snd_RCUnit_BrakeData;
