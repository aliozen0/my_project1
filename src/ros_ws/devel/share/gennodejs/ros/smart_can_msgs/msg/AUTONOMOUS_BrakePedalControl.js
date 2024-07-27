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

class AUTONOMOUS_BrakePedalControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.AUTONOMOUS_BrakeMotor_Voltage = null;
      this.AUTONOMOUS_BrakePedalMotor_PER = null;
      this.AUTONOMOUS_BrakePedalMotor_ACC = null;
      this.AUTONOMOUS_BrakePedalMotor_EN = null;
    }
    else {
      if (initObj.hasOwnProperty('AUTONOMOUS_BrakeMotor_Voltage')) {
        this.AUTONOMOUS_BrakeMotor_Voltage = initObj.AUTONOMOUS_BrakeMotor_Voltage
      }
      else {
        this.AUTONOMOUS_BrakeMotor_Voltage = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_BrakePedalMotor_PER')) {
        this.AUTONOMOUS_BrakePedalMotor_PER = initObj.AUTONOMOUS_BrakePedalMotor_PER
      }
      else {
        this.AUTONOMOUS_BrakePedalMotor_PER = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_BrakePedalMotor_ACC')) {
        this.AUTONOMOUS_BrakePedalMotor_ACC = initObj.AUTONOMOUS_BrakePedalMotor_ACC
      }
      else {
        this.AUTONOMOUS_BrakePedalMotor_ACC = 0;
      }
      if (initObj.hasOwnProperty('AUTONOMOUS_BrakePedalMotor_EN')) {
        this.AUTONOMOUS_BrakePedalMotor_EN = initObj.AUTONOMOUS_BrakePedalMotor_EN
      }
      else {
        this.AUTONOMOUS_BrakePedalMotor_EN = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AUTONOMOUS_BrakePedalControl
    // Serialize message field [AUTONOMOUS_BrakeMotor_Voltage]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_BrakeMotor_Voltage, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_BrakePedalMotor_PER]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_BrakePedalMotor_PER, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_BrakePedalMotor_ACC]
    bufferOffset = _serializer.uint16(obj.AUTONOMOUS_BrakePedalMotor_ACC, buffer, bufferOffset);
    // Serialize message field [AUTONOMOUS_BrakePedalMotor_EN]
    bufferOffset = _serializer.uint8(obj.AUTONOMOUS_BrakePedalMotor_EN, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AUTONOMOUS_BrakePedalControl
    let len;
    let data = new AUTONOMOUS_BrakePedalControl(null);
    // Deserialize message field [AUTONOMOUS_BrakeMotor_Voltage]
    data.AUTONOMOUS_BrakeMotor_Voltage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_BrakePedalMotor_PER]
    data.AUTONOMOUS_BrakePedalMotor_PER = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_BrakePedalMotor_ACC]
    data.AUTONOMOUS_BrakePedalMotor_ACC = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [AUTONOMOUS_BrakePedalMotor_EN]
    data.AUTONOMOUS_BrakePedalMotor_EN = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/AUTONOMOUS_BrakePedalControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abb8668963ba2b5c76295810f98dea37';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AUTONOMOUS_BrakeMotor_Voltage
    uint8 AUTONOMOUS_BrakePedalMotor_PER
    uint16 AUTONOMOUS_BrakePedalMotor_ACC
    uint8 AUTONOMOUS_BrakePedalMotor_EN
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AUTONOMOUS_BrakePedalControl(null);
    if (msg.AUTONOMOUS_BrakeMotor_Voltage !== undefined) {
      resolved.AUTONOMOUS_BrakeMotor_Voltage = msg.AUTONOMOUS_BrakeMotor_Voltage;
    }
    else {
      resolved.AUTONOMOUS_BrakeMotor_Voltage = 0
    }

    if (msg.AUTONOMOUS_BrakePedalMotor_PER !== undefined) {
      resolved.AUTONOMOUS_BrakePedalMotor_PER = msg.AUTONOMOUS_BrakePedalMotor_PER;
    }
    else {
      resolved.AUTONOMOUS_BrakePedalMotor_PER = 0
    }

    if (msg.AUTONOMOUS_BrakePedalMotor_ACC !== undefined) {
      resolved.AUTONOMOUS_BrakePedalMotor_ACC = msg.AUTONOMOUS_BrakePedalMotor_ACC;
    }
    else {
      resolved.AUTONOMOUS_BrakePedalMotor_ACC = 0
    }

    if (msg.AUTONOMOUS_BrakePedalMotor_EN !== undefined) {
      resolved.AUTONOMOUS_BrakePedalMotor_EN = msg.AUTONOMOUS_BrakePedalMotor_EN;
    }
    else {
      resolved.AUTONOMOUS_BrakePedalMotor_EN = 0
    }

    return resolved;
    }
};

module.exports = AUTONOMOUS_BrakePedalControl;
