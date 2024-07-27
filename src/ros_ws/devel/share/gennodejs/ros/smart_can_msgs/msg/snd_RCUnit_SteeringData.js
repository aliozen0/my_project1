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

class snd_RCUnit_SteeringData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RC_Steering_RightLimit = null;
      this.RC_Steering_LeftLimit = null;
      this.RC_SteeringPWM = null;
      this.RC_SteeringDirection = null;
    }
    else {
      if (initObj.hasOwnProperty('RC_Steering_RightLimit')) {
        this.RC_Steering_RightLimit = initObj.RC_Steering_RightLimit
      }
      else {
        this.RC_Steering_RightLimit = 0;
      }
      if (initObj.hasOwnProperty('RC_Steering_LeftLimit')) {
        this.RC_Steering_LeftLimit = initObj.RC_Steering_LeftLimit
      }
      else {
        this.RC_Steering_LeftLimit = 0;
      }
      if (initObj.hasOwnProperty('RC_SteeringPWM')) {
        this.RC_SteeringPWM = initObj.RC_SteeringPWM
      }
      else {
        this.RC_SteeringPWM = 0;
      }
      if (initObj.hasOwnProperty('RC_SteeringDirection')) {
        this.RC_SteeringDirection = initObj.RC_SteeringDirection
      }
      else {
        this.RC_SteeringDirection = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type snd_RCUnit_SteeringData
    // Serialize message field [RC_Steering_RightLimit]
    bufferOffset = _serializer.uint8(obj.RC_Steering_RightLimit, buffer, bufferOffset);
    // Serialize message field [RC_Steering_LeftLimit]
    bufferOffset = _serializer.uint8(obj.RC_Steering_LeftLimit, buffer, bufferOffset);
    // Serialize message field [RC_SteeringPWM]
    bufferOffset = _serializer.uint16(obj.RC_SteeringPWM, buffer, bufferOffset);
    // Serialize message field [RC_SteeringDirection]
    bufferOffset = _serializer.uint8(obj.RC_SteeringDirection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type snd_RCUnit_SteeringData
    let len;
    let data = new snd_RCUnit_SteeringData(null);
    // Deserialize message field [RC_Steering_RightLimit]
    data.RC_Steering_RightLimit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_Steering_LeftLimit]
    data.RC_Steering_LeftLimit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RC_SteeringPWM]
    data.RC_SteeringPWM = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RC_SteeringDirection]
    data.RC_SteeringDirection = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/snd_RCUnit_SteeringData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbaee7c633defae17cb1a658b42efed0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RC_Steering_RightLimit
    uint8 RC_Steering_LeftLimit
    uint16 RC_SteeringPWM
    uint8 RC_SteeringDirection
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new snd_RCUnit_SteeringData(null);
    if (msg.RC_Steering_RightLimit !== undefined) {
      resolved.RC_Steering_RightLimit = msg.RC_Steering_RightLimit;
    }
    else {
      resolved.RC_Steering_RightLimit = 0
    }

    if (msg.RC_Steering_LeftLimit !== undefined) {
      resolved.RC_Steering_LeftLimit = msg.RC_Steering_LeftLimit;
    }
    else {
      resolved.RC_Steering_LeftLimit = 0
    }

    if (msg.RC_SteeringPWM !== undefined) {
      resolved.RC_SteeringPWM = msg.RC_SteeringPWM;
    }
    else {
      resolved.RC_SteeringPWM = 0
    }

    if (msg.RC_SteeringDirection !== undefined) {
      resolved.RC_SteeringDirection = msg.RC_SteeringDirection;
    }
    else {
      resolved.RC_SteeringDirection = 0
    }

    return resolved;
    }
};

module.exports = snd_RCUnit_SteeringData;
