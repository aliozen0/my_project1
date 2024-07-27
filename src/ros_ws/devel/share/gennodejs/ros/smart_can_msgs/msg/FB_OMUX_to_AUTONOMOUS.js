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

class FB_OMUX_to_AUTONOMOUS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FB_EMERGENCY = null;
      this.FB_ReverseLight = null;
      this.FB_RightSignal = null;
      this.FB_WindowResistance = null;
      this.FB_LeftSignal = null;
      this.FB_InteriorLight = null;
      this.FB_DRL = null;
      this.FB_DoorKeyStatus = null;
      this.FB_BrakeLight = null;
      this.FB_BatteryVoltage = null;
      this.FB_ChargeInput = null;
      this.FB_HighBeam = null;
      this.FB_LowBeam = null;
      this.FB_IGNITION = null;
      this.FB_HazardousLight = null;
      this.FB_VehicleStatus = null;
      this.FB_LeftDoorStatus = null;
      this.FB_RightDoorStatus = null;
      this.FB_BatterySOC = null;
      this.FB_ErrorPowerTrain = null;
      this.FB_ErrorBattery = null;
      this.FB_BrakePedal_Voltage_EN = null;
    }
    else {
      if (initObj.hasOwnProperty('FB_EMERGENCY')) {
        this.FB_EMERGENCY = initObj.FB_EMERGENCY
      }
      else {
        this.FB_EMERGENCY = 0;
      }
      if (initObj.hasOwnProperty('FB_ReverseLight')) {
        this.FB_ReverseLight = initObj.FB_ReverseLight
      }
      else {
        this.FB_ReverseLight = 0;
      }
      if (initObj.hasOwnProperty('FB_RightSignal')) {
        this.FB_RightSignal = initObj.FB_RightSignal
      }
      else {
        this.FB_RightSignal = 0;
      }
      if (initObj.hasOwnProperty('FB_WindowResistance')) {
        this.FB_WindowResistance = initObj.FB_WindowResistance
      }
      else {
        this.FB_WindowResistance = 0;
      }
      if (initObj.hasOwnProperty('FB_LeftSignal')) {
        this.FB_LeftSignal = initObj.FB_LeftSignal
      }
      else {
        this.FB_LeftSignal = 0;
      }
      if (initObj.hasOwnProperty('FB_InteriorLight')) {
        this.FB_InteriorLight = initObj.FB_InteriorLight
      }
      else {
        this.FB_InteriorLight = 0;
      }
      if (initObj.hasOwnProperty('FB_DRL')) {
        this.FB_DRL = initObj.FB_DRL
      }
      else {
        this.FB_DRL = 0;
      }
      if (initObj.hasOwnProperty('FB_DoorKeyStatus')) {
        this.FB_DoorKeyStatus = initObj.FB_DoorKeyStatus
      }
      else {
        this.FB_DoorKeyStatus = 0;
      }
      if (initObj.hasOwnProperty('FB_BrakeLight')) {
        this.FB_BrakeLight = initObj.FB_BrakeLight
      }
      else {
        this.FB_BrakeLight = 0;
      }
      if (initObj.hasOwnProperty('FB_BatteryVoltage')) {
        this.FB_BatteryVoltage = initObj.FB_BatteryVoltage
      }
      else {
        this.FB_BatteryVoltage = 0;
      }
      if (initObj.hasOwnProperty('FB_ChargeInput')) {
        this.FB_ChargeInput = initObj.FB_ChargeInput
      }
      else {
        this.FB_ChargeInput = 0;
      }
      if (initObj.hasOwnProperty('FB_HighBeam')) {
        this.FB_HighBeam = initObj.FB_HighBeam
      }
      else {
        this.FB_HighBeam = 0;
      }
      if (initObj.hasOwnProperty('FB_LowBeam')) {
        this.FB_LowBeam = initObj.FB_LowBeam
      }
      else {
        this.FB_LowBeam = 0;
      }
      if (initObj.hasOwnProperty('FB_IGNITION')) {
        this.FB_IGNITION = initObj.FB_IGNITION
      }
      else {
        this.FB_IGNITION = 0;
      }
      if (initObj.hasOwnProperty('FB_HazardousLight')) {
        this.FB_HazardousLight = initObj.FB_HazardousLight
      }
      else {
        this.FB_HazardousLight = 0;
      }
      if (initObj.hasOwnProperty('FB_VehicleStatus')) {
        this.FB_VehicleStatus = initObj.FB_VehicleStatus
      }
      else {
        this.FB_VehicleStatus = 0;
      }
      if (initObj.hasOwnProperty('FB_LeftDoorStatus')) {
        this.FB_LeftDoorStatus = initObj.FB_LeftDoorStatus
      }
      else {
        this.FB_LeftDoorStatus = 0;
      }
      if (initObj.hasOwnProperty('FB_RightDoorStatus')) {
        this.FB_RightDoorStatus = initObj.FB_RightDoorStatus
      }
      else {
        this.FB_RightDoorStatus = 0;
      }
      if (initObj.hasOwnProperty('FB_BatterySOC')) {
        this.FB_BatterySOC = initObj.FB_BatterySOC
      }
      else {
        this.FB_BatterySOC = 0;
      }
      if (initObj.hasOwnProperty('FB_ErrorPowerTrain')) {
        this.FB_ErrorPowerTrain = initObj.FB_ErrorPowerTrain
      }
      else {
        this.FB_ErrorPowerTrain = 0;
      }
      if (initObj.hasOwnProperty('FB_ErrorBattery')) {
        this.FB_ErrorBattery = initObj.FB_ErrorBattery
      }
      else {
        this.FB_ErrorBattery = 0;
      }
      if (initObj.hasOwnProperty('FB_BrakePedal_Voltage_EN')) {
        this.FB_BrakePedal_Voltage_EN = initObj.FB_BrakePedal_Voltage_EN
      }
      else {
        this.FB_BrakePedal_Voltage_EN = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_OMUX_to_AUTONOMOUS
    // Serialize message field [FB_EMERGENCY]
    bufferOffset = _serializer.uint8(obj.FB_EMERGENCY, buffer, bufferOffset);
    // Serialize message field [FB_ReverseLight]
    bufferOffset = _serializer.uint8(obj.FB_ReverseLight, buffer, bufferOffset);
    // Serialize message field [FB_RightSignal]
    bufferOffset = _serializer.uint8(obj.FB_RightSignal, buffer, bufferOffset);
    // Serialize message field [FB_WindowResistance]
    bufferOffset = _serializer.uint8(obj.FB_WindowResistance, buffer, bufferOffset);
    // Serialize message field [FB_LeftSignal]
    bufferOffset = _serializer.uint8(obj.FB_LeftSignal, buffer, bufferOffset);
    // Serialize message field [FB_InteriorLight]
    bufferOffset = _serializer.uint8(obj.FB_InteriorLight, buffer, bufferOffset);
    // Serialize message field [FB_DRL]
    bufferOffset = _serializer.uint8(obj.FB_DRL, buffer, bufferOffset);
    // Serialize message field [FB_DoorKeyStatus]
    bufferOffset = _serializer.uint8(obj.FB_DoorKeyStatus, buffer, bufferOffset);
    // Serialize message field [FB_BrakeLight]
    bufferOffset = _serializer.uint8(obj.FB_BrakeLight, buffer, bufferOffset);
    // Serialize message field [FB_BatteryVoltage]
    bufferOffset = _serializer.uint8(obj.FB_BatteryVoltage, buffer, bufferOffset);
    // Serialize message field [FB_ChargeInput]
    bufferOffset = _serializer.uint8(obj.FB_ChargeInput, buffer, bufferOffset);
    // Serialize message field [FB_HighBeam]
    bufferOffset = _serializer.uint8(obj.FB_HighBeam, buffer, bufferOffset);
    // Serialize message field [FB_LowBeam]
    bufferOffset = _serializer.uint8(obj.FB_LowBeam, buffer, bufferOffset);
    // Serialize message field [FB_IGNITION]
    bufferOffset = _serializer.uint8(obj.FB_IGNITION, buffer, bufferOffset);
    // Serialize message field [FB_HazardousLight]
    bufferOffset = _serializer.uint8(obj.FB_HazardousLight, buffer, bufferOffset);
    // Serialize message field [FB_VehicleStatus]
    bufferOffset = _serializer.uint8(obj.FB_VehicleStatus, buffer, bufferOffset);
    // Serialize message field [FB_LeftDoorStatus]
    bufferOffset = _serializer.uint8(obj.FB_LeftDoorStatus, buffer, bufferOffset);
    // Serialize message field [FB_RightDoorStatus]
    bufferOffset = _serializer.uint8(obj.FB_RightDoorStatus, buffer, bufferOffset);
    // Serialize message field [FB_BatterySOC]
    bufferOffset = _serializer.uint8(obj.FB_BatterySOC, buffer, bufferOffset);
    // Serialize message field [FB_ErrorPowerTrain]
    bufferOffset = _serializer.uint8(obj.FB_ErrorPowerTrain, buffer, bufferOffset);
    // Serialize message field [FB_ErrorBattery]
    bufferOffset = _serializer.uint8(obj.FB_ErrorBattery, buffer, bufferOffset);
    // Serialize message field [FB_BrakePedal_Voltage_EN]
    bufferOffset = _serializer.uint8(obj.FB_BrakePedal_Voltage_EN, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_OMUX_to_AUTONOMOUS
    let len;
    let data = new FB_OMUX_to_AUTONOMOUS(null);
    // Deserialize message field [FB_EMERGENCY]
    data.FB_EMERGENCY = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_ReverseLight]
    data.FB_ReverseLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_RightSignal]
    data.FB_RightSignal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_WindowResistance]
    data.FB_WindowResistance = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_LeftSignal]
    data.FB_LeftSignal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_InteriorLight]
    data.FB_InteriorLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_DRL]
    data.FB_DRL = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_DoorKeyStatus]
    data.FB_DoorKeyStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_BrakeLight]
    data.FB_BrakeLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_BatteryVoltage]
    data.FB_BatteryVoltage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_ChargeInput]
    data.FB_ChargeInput = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_HighBeam]
    data.FB_HighBeam = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_LowBeam]
    data.FB_LowBeam = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_IGNITION]
    data.FB_IGNITION = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_HazardousLight]
    data.FB_HazardousLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_VehicleStatus]
    data.FB_VehicleStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_LeftDoorStatus]
    data.FB_LeftDoorStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_RightDoorStatus]
    data.FB_RightDoorStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_BatterySOC]
    data.FB_BatterySOC = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_ErrorPowerTrain]
    data.FB_ErrorPowerTrain = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_ErrorBattery]
    data.FB_ErrorBattery = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FB_BrakePedal_Voltage_EN]
    data.FB_BrakePedal_Voltage_EN = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smart_can_msgs/FB_OMUX_to_AUTONOMOUS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7068cf9bccd4d4797668be13f6b90cbb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FB_EMERGENCY
    uint8 FB_ReverseLight
    uint8 FB_RightSignal
    uint8 FB_WindowResistance
    uint8 FB_LeftSignal
    uint8 FB_InteriorLight
    uint8 FB_DRL
    uint8 FB_DoorKeyStatus
    uint8 FB_BrakeLight
    uint8 FB_BatteryVoltage
    uint8 FB_ChargeInput
    uint8 FB_HighBeam
    uint8 FB_LowBeam
    uint8 FB_IGNITION
    uint8 FB_HazardousLight
    uint8 FB_VehicleStatus
    uint8 FB_LeftDoorStatus
    uint8 FB_RightDoorStatus
    uint8 FB_BatterySOC
    uint8 FB_ErrorPowerTrain
    uint8 FB_ErrorBattery
    uint8 FB_BrakePedal_Voltage_EN
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FB_OMUX_to_AUTONOMOUS(null);
    if (msg.FB_EMERGENCY !== undefined) {
      resolved.FB_EMERGENCY = msg.FB_EMERGENCY;
    }
    else {
      resolved.FB_EMERGENCY = 0
    }

    if (msg.FB_ReverseLight !== undefined) {
      resolved.FB_ReverseLight = msg.FB_ReverseLight;
    }
    else {
      resolved.FB_ReverseLight = 0
    }

    if (msg.FB_RightSignal !== undefined) {
      resolved.FB_RightSignal = msg.FB_RightSignal;
    }
    else {
      resolved.FB_RightSignal = 0
    }

    if (msg.FB_WindowResistance !== undefined) {
      resolved.FB_WindowResistance = msg.FB_WindowResistance;
    }
    else {
      resolved.FB_WindowResistance = 0
    }

    if (msg.FB_LeftSignal !== undefined) {
      resolved.FB_LeftSignal = msg.FB_LeftSignal;
    }
    else {
      resolved.FB_LeftSignal = 0
    }

    if (msg.FB_InteriorLight !== undefined) {
      resolved.FB_InteriorLight = msg.FB_InteriorLight;
    }
    else {
      resolved.FB_InteriorLight = 0
    }

    if (msg.FB_DRL !== undefined) {
      resolved.FB_DRL = msg.FB_DRL;
    }
    else {
      resolved.FB_DRL = 0
    }

    if (msg.FB_DoorKeyStatus !== undefined) {
      resolved.FB_DoorKeyStatus = msg.FB_DoorKeyStatus;
    }
    else {
      resolved.FB_DoorKeyStatus = 0
    }

    if (msg.FB_BrakeLight !== undefined) {
      resolved.FB_BrakeLight = msg.FB_BrakeLight;
    }
    else {
      resolved.FB_BrakeLight = 0
    }

    if (msg.FB_BatteryVoltage !== undefined) {
      resolved.FB_BatteryVoltage = msg.FB_BatteryVoltage;
    }
    else {
      resolved.FB_BatteryVoltage = 0
    }

    if (msg.FB_ChargeInput !== undefined) {
      resolved.FB_ChargeInput = msg.FB_ChargeInput;
    }
    else {
      resolved.FB_ChargeInput = 0
    }

    if (msg.FB_HighBeam !== undefined) {
      resolved.FB_HighBeam = msg.FB_HighBeam;
    }
    else {
      resolved.FB_HighBeam = 0
    }

    if (msg.FB_LowBeam !== undefined) {
      resolved.FB_LowBeam = msg.FB_LowBeam;
    }
    else {
      resolved.FB_LowBeam = 0
    }

    if (msg.FB_IGNITION !== undefined) {
      resolved.FB_IGNITION = msg.FB_IGNITION;
    }
    else {
      resolved.FB_IGNITION = 0
    }

    if (msg.FB_HazardousLight !== undefined) {
      resolved.FB_HazardousLight = msg.FB_HazardousLight;
    }
    else {
      resolved.FB_HazardousLight = 0
    }

    if (msg.FB_VehicleStatus !== undefined) {
      resolved.FB_VehicleStatus = msg.FB_VehicleStatus;
    }
    else {
      resolved.FB_VehicleStatus = 0
    }

    if (msg.FB_LeftDoorStatus !== undefined) {
      resolved.FB_LeftDoorStatus = msg.FB_LeftDoorStatus;
    }
    else {
      resolved.FB_LeftDoorStatus = 0
    }

    if (msg.FB_RightDoorStatus !== undefined) {
      resolved.FB_RightDoorStatus = msg.FB_RightDoorStatus;
    }
    else {
      resolved.FB_RightDoorStatus = 0
    }

    if (msg.FB_BatterySOC !== undefined) {
      resolved.FB_BatterySOC = msg.FB_BatterySOC;
    }
    else {
      resolved.FB_BatterySOC = 0
    }

    if (msg.FB_ErrorPowerTrain !== undefined) {
      resolved.FB_ErrorPowerTrain = msg.FB_ErrorPowerTrain;
    }
    else {
      resolved.FB_ErrorPowerTrain = 0
    }

    if (msg.FB_ErrorBattery !== undefined) {
      resolved.FB_ErrorBattery = msg.FB_ErrorBattery;
    }
    else {
      resolved.FB_ErrorBattery = 0
    }

    if (msg.FB_BrakePedal_Voltage_EN !== undefined) {
      resolved.FB_BrakePedal_Voltage_EN = msg.FB_BrakePedal_Voltage_EN;
    }
    else {
      resolved.FB_BrakePedal_Voltage_EN = 0
    }

    return resolved;
    }
};

module.exports = FB_OMUX_to_AUTONOMOUS;
