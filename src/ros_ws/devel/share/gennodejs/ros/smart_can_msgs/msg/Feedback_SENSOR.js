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

class Feedback_SENSOR {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SteeringAngleSensor = null;
    }
    else {
      if (initObj.hasOwnProperty('SteeringAngleSensor')) {
        this.SteeringAngleSensor = initObj.SteeringAngleSensor
      }
      else {
        this.SteeringAngleSensor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Feedback_SENSOR
    // Serialize message field [SteeringAngleSensor]
    bufferOffset = _serializer.uint16(obj.SteeringAngleSensor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Feedback_SENSOR
    let len;
    let data = new Feedback_SENSOR(null);
    // Deserialize message field [SteeringAngleSensor]
    data.SteeringAngleSensor = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/Feedback_SENSOR';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '810c1cfb4931d86ae219b3ad3c45ed05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 SteeringAngleSensor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Feedback_SENSOR(null);
    if (msg.SteeringAngleSensor !== undefined) {
      resolved.SteeringAngleSensor = msg.SteeringAngleSensor;
    }
    else {
      resolved.SteeringAngleSensor = 0
    }

    return resolved;
    }
};

module.exports = Feedback_SENSOR;
