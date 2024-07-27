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

class FB_VehicleSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FB_VehicleSpeed_KMh = null;
      this.FB_ReelVehicleSpeed_KMh = null;
      this.FB_ReelVehicleSpeed_Ms = null;
    }
    else {
      if (initObj.hasOwnProperty('FB_VehicleSpeed_KMh')) {
        this.FB_VehicleSpeed_KMh = initObj.FB_VehicleSpeed_KMh
      }
      else {
        this.FB_VehicleSpeed_KMh = 0;
      }
      if (initObj.hasOwnProperty('FB_ReelVehicleSpeed_KMh')) {
        this.FB_ReelVehicleSpeed_KMh = initObj.FB_ReelVehicleSpeed_KMh
      }
      else {
        this.FB_ReelVehicleSpeed_KMh = 0;
      }
      if (initObj.hasOwnProperty('FB_ReelVehicleSpeed_Ms')) {
        this.FB_ReelVehicleSpeed_Ms = initObj.FB_ReelVehicleSpeed_Ms
      }
      else {
        this.FB_ReelVehicleSpeed_Ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_VehicleSpeed
    // Serialize message field [FB_VehicleSpeed_KMh]
    bufferOffset = _serializer.uint8(obj.FB_VehicleSpeed_KMh, buffer, bufferOffset);
    // Serialize message field [FB_ReelVehicleSpeed_KMh]
    bufferOffset = _serializer.uint8(obj.FB_ReelVehicleSpeed_KMh, buffer, bufferOffset);
    // Serialize message field [FB_ReelVehicleSpeed_Ms]
    bufferOffset = _serializer.uint8(obj.FB_ReelVehicleSpeed_Ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_VehicleSpeed
    let len;
    let data = new FB_VehicleSpeed(null);
    // Deserialize message field [FB_VehicleSpeed_KMh]
    data.FB_VehicleSpeed_KMh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_ReelVehicleSpeed_KMh]
    data.FB_ReelVehicleSpeed_KMh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_ReelVehicleSpeed_Ms]
    data.FB_ReelVehicleSpeed_Ms = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/FB_VehicleSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c33a97169dc1ce3d22f45b0581cd9f66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FB_VehicleSpeed_KMh
    uint8 FB_ReelVehicleSpeed_KMh
    uint8 FB_ReelVehicleSpeed_Ms
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FB_VehicleSpeed(null);
    if (msg.FB_VehicleSpeed_KMh !== undefined) {
      resolved.FB_VehicleSpeed_KMh = msg.FB_VehicleSpeed_KMh;
    }
    else {
      resolved.FB_VehicleSpeed_KMh = 0
    }

    if (msg.FB_ReelVehicleSpeed_KMh !== undefined) {
      resolved.FB_ReelVehicleSpeed_KMh = msg.FB_ReelVehicleSpeed_KMh;
    }
    else {
      resolved.FB_ReelVehicleSpeed_KMh = 0
    }

    if (msg.FB_ReelVehicleSpeed_Ms !== undefined) {
      resolved.FB_ReelVehicleSpeed_Ms = msg.FB_ReelVehicleSpeed_Ms;
    }
    else {
      resolved.FB_ReelVehicleSpeed_Ms = 0
    }

    return resolved;
    }
};

module.exports = FB_VehicleSpeed;
