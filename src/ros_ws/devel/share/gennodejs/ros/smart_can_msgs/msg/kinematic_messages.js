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

class kinematic_messages {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_type = null;
      this.angle = null;
      this.angle_y = null;
      this.angular_velocity = null;
      this.link_length = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_type')) {
        this.joint_type = initObj.joint_type
      }
      else {
        this.joint_type = 0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('angle_y')) {
        this.angle_y = initObj.angle_y
      }
      else {
        this.angle_y = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('link_length')) {
        this.link_length = initObj.link_length
      }
      else {
        this.link_length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kinematic_messages
    // Serialize message field [joint_type]
    bufferOffset = _serializer.uint8(obj.joint_type, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [angle_y]
    bufferOffset = _serializer.float32(obj.angle_y, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float32(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [link_length]
    bufferOffset = _serializer.float32(obj.link_length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kinematic_messages
    let len;
    let data = new kinematic_messages(null);
    // Deserialize message field [joint_type]
    data.joint_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_y]
    data.angle_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [link_length]
    data.link_length = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/kinematic_messages';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bc7418ecb7fee03d277ee78209c3d4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 joint_type
    float32 angle
    float32 angle_y
    float32 angular_velocity
    float32 link_length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kinematic_messages(null);
    if (msg.joint_type !== undefined) {
      resolved.joint_type = msg.joint_type;
    }
    else {
      resolved.joint_type = 0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.angle_y !== undefined) {
      resolved.angle_y = msg.angle_y;
    }
    else {
      resolved.angle_y = 0.0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
    }

    if (msg.link_length !== undefined) {
      resolved.link_length = msg.link_length;
    }
    else {
      resolved.link_length = 0.0
    }

    return resolved;
    }
};

module.exports = kinematic_messages;
