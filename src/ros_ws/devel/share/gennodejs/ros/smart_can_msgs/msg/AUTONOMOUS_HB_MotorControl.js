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

class AUTONOMOUS_HB_MotorControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.AUTONOMOUS_HB_Motor_PWM = null;
      this.AUTONOMOUS_HB_MotState = null;
      this.AUTONOMOUS_HB_MotEN = null;
    }
    else {
      if (initObj.hasOwnProperty('AUTONOMOUS_HB_Motor_PWM')) {
        this.AUTONOMOUS_HB_Motor_PWM = initObj.AUTONOMOUS_HB_Motor_PWM
      }
      else {
        this.AUTONOMOUS_HB_Motor_PWM = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_HB_MotState')) {
        this.AUTONOMOUS_HB_MotState = initObj.AUTONOMOUS_HB_MotState
      }
      else {
        this.AUTONOMOUS_HB_MotState = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_HB_MotEN')) {
        this.AUTONOMOUS_HB_MotEN = initObj.AUTONOMOUS_HB_MotEN
      }
      else {
        this.AUTONOMOUS_HB_MotEN = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AUTONOMOUS_HB_MotorControl
    // Serialize message field [AUTONOMOUS_HB_Motor_PWM]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_HB_Motor_PWM, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_HB_MotState]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_HB_MotState, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_HB_MotEN]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_HB_MotEN, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AUTONOMOUS_HB_MotorControl
    let len;
    let data = new AUTONOMOUS_HB_MotorControl(null);
    // Deserialize message field [AUTONOMOUS_HB_Motor_PWM]
    data.AUTONOMOUS_HB_Motor_PWM = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_HB_MotState]
    data.AUTONOMOUS_HB_MotState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_HB_MotEN]
    data.AUTONOMOUS_HB_MotEN = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/AUTONOMOUS_HB_MotorControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bce3dd6587bd24ef1eee71abfb3adf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AUTONOMOUS_HB_Motor_PWM
    uint8 AUTONOMOUS_HB_MotState
    uint8 AUTONOMOUS_HB_MotEN
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AUTONOMOUS_HB_MotorControl(null);
    if (msg.AUTONOMOUS_HB_Motor_PWM !== undefined) {
      resolved.AUTONOMOUS_HB_Motor_PWM = msg.AUTONOMOUS_HB_Motor_PWM;
    }
    else {
      resolved.AUTONOMOUS_HB_Motor_PWM = 0
    }

    if (msg.AUTONOMOUS_HB_MotState !== undefined) {
      resolved.AUTONOMOUS_HB_MotState = msg.AUTONOMOUS_HB_MotState;
    }
    else {
      resolved.AUTONOMOUS_HB_MotState = 0
    }

    if (msg.AUTONOMOUS_HB_MotEN !== undefined) {
      resolved.AUTONOMOUS_HB_MotEN = msg.AUTONOMOUS_HB_MotEN;
    }
    else {
      resolved.AUTONOMOUS_HB_MotEN = 0
    }

    return resolved;
    }
};

module.exports = AUTONOMOUS_HB_MotorControl;
