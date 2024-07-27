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

class FB_MotorDriver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.GEAR_STATUS_FROM_MOTOR = null;
      this.PlusTripDistance = null;
      this.VehicleRPM = null;
    }
    else {
      if (initObj.hasOwnProperty('GEAR_STATUS_FROM_MOTOR')) {
        this.GEAR_STATUS_FROM_MOTOR = initObj.GEAR_STATUS_FROM_MOTOR
      }
      else {
        this.GEAR_STATUS_FROM_MOTOR = 0;
      }
      if (initObj.hasOwnProperty('PlusTripDistance')) {
        this.PlusTripDistance = initObj.PlusTripDistance
      }
      else {
        this.PlusTripDistance = 0;
      }
      if (initObj.hasOwnProperty('VehicleRPM')) {
        this.VehicleRPM = initObj.VehicleRPM
      }
      else {
        this.VehicleRPM = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_MotorDriver
    // Serialize message field [GEAR_STATUS_FROM_MOTOR]
    bufferOffset = _serializer.uint8(obj.GEAR_STATUS_FROM_MOTOR, buffer, bufferOffset);
    // Serialize message field [PlusTripDistance]
    bufferOffset = _serializer.uint16(obj.PlusTripDistance, buffer, bufferOffset);
    // Serialize message field [VehicleRPM]
    bufferOffset = _serializer.uint16(obj.VehicleRPM, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_MotorDriver
    let len;
    let data = new FB_MotorDriver(null);
    // Deserialize message field [GEAR_STATUS_FROM_MOTOR]
    data.GEAR_STATUS_FROM_MOTOR = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PlusTripDistance]
    data.PlusTripDistance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [VehicleRPM]
    data.VehicleRPM = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/FB_MotorDriver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee0fe8cee4053ab7ab54decef9676a69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GEAR_STATUS_FROM_MOTOR
    uint16 PlusTripDistance
    uint16 VehicleRPM
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FB_MotorDriver(null);
    if (msg.GEAR_STATUS_FROM_MOTOR !== undefined) {
      resolved.GEAR_STATUS_FROM_MOTOR = msg.GEAR_STATUS_FROM_MOTOR;
    }
    else {
      resolved.GEAR_STATUS_FROM_MOTOR = 0
    }

    if (msg.PlusTripDistance !== undefined) {
      resolved.PlusTripDistance = msg.PlusTripDistance;
    }
    else {
      resolved.PlusTripDistance = 0
    }

    if (msg.VehicleRPM !== undefined) {
      resolved.VehicleRPM = msg.VehicleRPM;
    }
    else {
      resolved.VehicleRPM = 0
    }

    return resolved;
    }
};

module.exports = FB_MotorDriver;
