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

class FeedbackSteeringAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FeedBackSteeringAngle = null;
      this.FeedBackBrakepedalAngle = null;
    }
    else {
      if (initObj.hasOwnProperty('FeedBackSteeringAngle')) {
        this.FeedBackSteeringAngle = initObj.FeedBackSteeringAngle
      }
      else {
        this.FeedBackSteeringAngle = 0;
      }
      if (initObj.hasOwnProperty('FeedBackBrakepedalAngle')) {
        this.FeedBackBrakepedalAngle = initObj.FeedBackBrakepedalAngle
      }
      else {
        this.FeedBackBrakepedalAngle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeedbackSteeringAngle
    // Serialize message field [FeedBackSteeringAngle]
    bufferOffset = _serializer.int8(obj.FeedBackSteeringAngle, buffer, bufferOffset);
    // Serialize message field [FeedBackBrakepedalAngle]
    bufferOffset = _serializer.uint8(obj.FeedBackBrakepedalAngle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeedbackSteeringAngle
    let len;
    let data = new FeedbackSteeringAngle(null);
    // Deserialize message field [FeedBackSteeringAngle]
    data.FeedBackSteeringAngle = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [FeedBackBrakepedalAngle]
    data.FeedBackBrakepedalAngle = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/FeedbackSteeringAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a68f18dfe701cae0f3f21fa7c5ac93df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 FeedBackSteeringAngle
    uint8 FeedBackBrakepedalAngle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeedbackSteeringAngle(null);
    if (msg.FeedBackSteeringAngle !== undefined) {
      resolved.FeedBackSteeringAngle = msg.FeedBackSteeringAngle;
    }
    else {
      resolved.FeedBackSteeringAngle = 0
    }

    if (msg.FeedBackBrakepedalAngle !== undefined) {
      resolved.FeedBackBrakepedalAngle = msg.FeedBackBrakepedalAngle;
    }
    else {
      resolved.FeedBackBrakepedalAngle = 0
    }

    return resolved;
    }
};

module.exports = FeedbackSteeringAngle;
