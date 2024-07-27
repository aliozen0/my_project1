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

class AUTONOMOUS_SteeringMot_Control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.AUTONOMOUS_SteeringMot_EN = null;
      this.AUTONOMOUS_SteeringMot_PWM = null;
    }
    else {
      if (initObj.hasOwnProperty('AUTONOMOUS_SteeringMot_EN')) {
        this.AUTONOMOUS_SteeringMot_EN = initObj.AUTONOMOUS_SteeringMot_EN
      }
      else {
        this.AUTONOMOUS_SteeringMot_EN = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_SteeringMot_PWM')) {
        this.AUTONOMOUS_SteeringMot_PWM = initObj.AUTONOMOUS_SteeringMot_PWM
      }
      else {
        this.AUTONOMOUS_SteeringMot_PWM = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AUTONOMOUS_SteeringMot_Control
    // Serialize message field [AUTONOMOUS_SteeringMot_EN]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_SteeringMot_EN, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_SteeringMot_PWM]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_SteeringMot_PWM, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AUTONOMOUS_SteeringMot_Control
    let len;
    let data = new AUTONOMOUS_SteeringMot_Control(null);
    // Deserialize message field [AUTONOMOUS_SteeringMot_EN]
    data.AUTONOMOUS_SteeringMot_EN = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_SteeringMot_PWM]
    data.AUTONOMOUS_SteeringMot_PWM = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/AUTONOMOUS_SteeringMot_Control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff6e7bebf0a430b5352684aa87189522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AUTONOMOUS_SteeringMot_EN
    uint8 AUTONOMOUS_SteeringMot_PWM
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AUTONOMOUS_SteeringMot_Control(null);
    if (msg.AUTONOMOUS_SteeringMot_EN !== undefined) {
      resolved.AUTONOMOUS_SteeringMot_EN = msg.AUTONOMOUS_SteeringMot_EN;
    }
    else {
      resolved.AUTONOMOUS_SteeringMot_EN = 0
    }

    if (msg.AUTONOMOUS_SteeringMot_PWM !== undefined) {
      resolved.AUTONOMOUS_SteeringMot_PWM = msg.AUTONOMOUS_SteeringMot_PWM;
    }
    else {
      resolved.AUTONOMOUS_SteeringMot_PWM = 0
    }

    return resolved;
    }
};

module.exports = AUTONOMOUS_SteeringMot_Control;
