// Generated by gencpp from file smart_can_msgs/FB_OMUX_to_AUTONOMOUS.msg
// DO NOT EDIT!


#ifndef SMART_CAN_MSGS_MESSAGE_FB_OMUX_TO_AUTONOMOUS_H
#define SMART_CAN_MSGS_MESSAGE_FB_OMUX_TO_AUTONOMOUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace smart_can_msgs
{
template <class ContainerAllocator>
struct FB_OMUX_to_AUTONOMOUS_
{
  typedef FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> Type;

  FB_OMUX_to_AUTONOMOUS_()
    : FB_EMERGENCY(0)
    , FB_ReverseLight(0)
    , FB_RightSignal(0)
    , FB_WindowResistance(0)
    , FB_LeftSignal(0)
    , FB_InteriorLight(0)
    , FB_DRL(0)
    , FB_DoorKeyStatus(0)
    , FB_BrakeLight(0)
    , FB_BatteryVoltage(0)
    , FB_ChargeInput(0)
    , FB_HighBeam(0)
    , FB_LowBeam(0)
    , FB_IGNITION(0)
    , FB_HazardousLight(0)
    , FB_VehicleStatus(0)
    , FB_LeftDoorStatus(0)
    , FB_RightDoorStatus(0)
    , FB_BatterySOC(0)
    , FB_ErrorPowerTrain(0)
    , FB_ErrorBattery(0)
    , FB_BrakePedal_Voltage_EN(0)  {
    }
  FB_OMUX_to_AUTONOMOUS_(const ContainerAllocator& _alloc)
    : FB_EMERGENCY(0)
    , FB_ReverseLight(0)
    , FB_RightSignal(0)
    , FB_WindowResistance(0)
    , FB_LeftSignal(0)
    , FB_InteriorLight(0)
    , FB_DRL(0)
    , FB_DoorKeyStatus(0)
    , FB_BrakeLight(0)
    , FB_BatteryVoltage(0)
    , FB_ChargeInput(0)
    , FB_HighBeam(0)
    , FB_LowBeam(0)
    , FB_IGNITION(0)
    , FB_HazardousLight(0)
    , FB_VehicleStatus(0)
    , FB_LeftDoorStatus(0)
    , FB_RightDoorStatus(0)
    , FB_BatterySOC(0)
    , FB_ErrorPowerTrain(0)
    , FB_ErrorBattery(0)
    , FB_BrakePedal_Voltage_EN(0)  {
  (void)_alloc;
    }



   typedef uint8_t _FB_EMERGENCY_type;
  _FB_EMERGENCY_type FB_EMERGENCY;

   typedef uint8_t _FB_ReverseLight_type;
  _FB_ReverseLight_type FB_ReverseLight;

   typedef uint8_t _FB_RightSignal_type;
  _FB_RightSignal_type FB_RightSignal;

   typedef uint8_t _FB_WindowResistance_type;
  _FB_WindowResistance_type FB_WindowResistance;

   typedef uint8_t _FB_LeftSignal_type;
  _FB_LeftSignal_type FB_LeftSignal;

   typedef uint8_t _FB_InteriorLight_type;
  _FB_InteriorLight_type FB_InteriorLight;

   typedef uint8_t _FB_DRL_type;
  _FB_DRL_type FB_DRL;

   typedef uint8_t _FB_DoorKeyStatus_type;
  _FB_DoorKeyStatus_type FB_DoorKeyStatus;

   typedef uint8_t _FB_BrakeLight_type;
  _FB_BrakeLight_type FB_BrakeLight;

   typedef uint8_t _FB_BatteryVoltage_type;
  _FB_BatteryVoltage_type FB_BatteryVoltage;

   typedef uint8_t _FB_ChargeInput_type;
  _FB_ChargeInput_type FB_ChargeInput;

   typedef uint8_t _FB_HighBeam_type;
  _FB_HighBeam_type FB_HighBeam;

   typedef uint8_t _FB_LowBeam_type;
  _FB_LowBeam_type FB_LowBeam;

   typedef uint8_t _FB_IGNITION_type;
  _FB_IGNITION_type FB_IGNITION;

   typedef uint8_t _FB_HazardousLight_type;
  _FB_HazardousLight_type FB_HazardousLight;

   typedef uint8_t _FB_VehicleStatus_type;
  _FB_VehicleStatus_type FB_VehicleStatus;

   typedef uint8_t _FB_LeftDoorStatus_type;
  _FB_LeftDoorStatus_type FB_LeftDoorStatus;

   typedef uint8_t _FB_RightDoorStatus_type;
  _FB_RightDoorStatus_type FB_RightDoorStatus;

   typedef uint8_t _FB_BatterySOC_type;
  _FB_BatterySOC_type FB_BatterySOC;

   typedef uint8_t _FB_ErrorPowerTrain_type;
  _FB_ErrorPowerTrain_type FB_ErrorPowerTrain;

   typedef uint8_t _FB_ErrorBattery_type;
  _FB_ErrorBattery_type FB_ErrorBattery;

   typedef uint8_t _FB_BrakePedal_Voltage_EN_type;
  _FB_BrakePedal_Voltage_EN_type FB_BrakePedal_Voltage_EN;





  typedef boost::shared_ptr< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> const> ConstPtr;

}; // struct FB_OMUX_to_AUTONOMOUS_

typedef ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<std::allocator<void> > FB_OMUX_to_AUTONOMOUS;

typedef boost::shared_ptr< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS > FB_OMUX_to_AUTONOMOUSPtr;
typedef boost::shared_ptr< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS const> FB_OMUX_to_AUTONOMOUSConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator1> & lhs, const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator2> & rhs)
{
  return lhs.FB_EMERGENCY == rhs.FB_EMERGENCY &&
    lhs.FB_ReverseLight == rhs.FB_ReverseLight &&
    lhs.FB_RightSignal == rhs.FB_RightSignal &&
    lhs.FB_WindowResistance == rhs.FB_WindowResistance &&
    lhs.FB_LeftSignal == rhs.FB_LeftSignal &&
    lhs.FB_InteriorLight == rhs.FB_InteriorLight &&
    lhs.FB_DRL == rhs.FB_DRL &&
    lhs.FB_DoorKeyStatus == rhs.FB_DoorKeyStatus &&
    lhs.FB_BrakeLight == rhs.FB_BrakeLight &&
    lhs.FB_BatteryVoltage == rhs.FB_BatteryVoltage &&
    lhs.FB_ChargeInput == rhs.FB_ChargeInput &&
    lhs.FB_HighBeam == rhs.FB_HighBeam &&
    lhs.FB_LowBeam == rhs.FB_LowBeam &&
    lhs.FB_IGNITION == rhs.FB_IGNITION &&
    lhs.FB_HazardousLight == rhs.FB_HazardousLight &&
    lhs.FB_VehicleStatus == rhs.FB_VehicleStatus &&
    lhs.FB_LeftDoorStatus == rhs.FB_LeftDoorStatus &&
    lhs.FB_RightDoorStatus == rhs.FB_RightDoorStatus &&
    lhs.FB_BatterySOC == rhs.FB_BatterySOC &&
    lhs.FB_ErrorPowerTrain == rhs.FB_ErrorPowerTrain &&
    lhs.FB_ErrorBattery == rhs.FB_ErrorBattery &&
    lhs.FB_BrakePedal_Voltage_EN == rhs.FB_BrakePedal_Voltage_EN;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator1> & lhs, const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace smart_can_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7068cf9bccd4d4797668be13f6b90cbb";
  }

  static const char* value(const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7068cf9bccd4d479ULL;
  static const uint64_t static_value2 = 0x7668be13f6b90cbbULL;
};

template<class ContainerAllocator>
struct DataType< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_can_msgs/FB_OMUX_to_AUTONOMOUS";
  }

  static const char* value(const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 FB_EMERGENCY\n"
"uint8 FB_ReverseLight\n"
"uint8 FB_RightSignal\n"
"uint8 FB_WindowResistance\n"
"uint8 FB_LeftSignal\n"
"uint8 FB_InteriorLight\n"
"uint8 FB_DRL\n"
"uint8 FB_DoorKeyStatus\n"
"uint8 FB_BrakeLight\n"
"uint8 FB_BatteryVoltage\n"
"uint8 FB_ChargeInput\n"
"uint8 FB_HighBeam\n"
"uint8 FB_LowBeam\n"
"uint8 FB_IGNITION\n"
"uint8 FB_HazardousLight\n"
"uint8 FB_VehicleStatus\n"
"uint8 FB_LeftDoorStatus\n"
"uint8 FB_RightDoorStatus\n"
"uint8 FB_BatterySOC\n"
"uint8 FB_ErrorPowerTrain\n"
"uint8 FB_ErrorBattery\n"
"uint8 FB_BrakePedal_Voltage_EN\n"
;
  }

  static const char* value(const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.FB_EMERGENCY);
      stream.next(m.FB_ReverseLight);
      stream.next(m.FB_RightSignal);
      stream.next(m.FB_WindowResistance);
      stream.next(m.FB_LeftSignal);
      stream.next(m.FB_InteriorLight);
      stream.next(m.FB_DRL);
      stream.next(m.FB_DoorKeyStatus);
      stream.next(m.FB_BrakeLight);
      stream.next(m.FB_BatteryVoltage);
      stream.next(m.FB_ChargeInput);
      stream.next(m.FB_HighBeam);
      stream.next(m.FB_LowBeam);
      stream.next(m.FB_IGNITION);
      stream.next(m.FB_HazardousLight);
      stream.next(m.FB_VehicleStatus);
      stream.next(m.FB_LeftDoorStatus);
      stream.next(m.FB_RightDoorStatus);
      stream.next(m.FB_BatterySOC);
      stream.next(m.FB_ErrorPowerTrain);
      stream.next(m.FB_ErrorBattery);
      stream.next(m.FB_BrakePedal_Voltage_EN);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FB_OMUX_to_AUTONOMOUS_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smart_can_msgs::FB_OMUX_to_AUTONOMOUS_<ContainerAllocator>& v)
  {
    s << indent << "FB_EMERGENCY: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_EMERGENCY);
    s << indent << "FB_ReverseLight: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_ReverseLight);
    s << indent << "FB_RightSignal: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_RightSignal);
    s << indent << "FB_WindowResistance: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_WindowResistance);
    s << indent << "FB_LeftSignal: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_LeftSignal);
    s << indent << "FB_InteriorLight: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_InteriorLight);
    s << indent << "FB_DRL: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_DRL);
    s << indent << "FB_DoorKeyStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_DoorKeyStatus);
    s << indent << "FB_BrakeLight: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_BrakeLight);
    s << indent << "FB_BatteryVoltage: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_BatteryVoltage);
    s << indent << "FB_ChargeInput: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_ChargeInput);
    s << indent << "FB_HighBeam: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_HighBeam);
    s << indent << "FB_LowBeam: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_LowBeam);
    s << indent << "FB_IGNITION: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_IGNITION);
    s << indent << "FB_HazardousLight: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_HazardousLight);
    s << indent << "FB_VehicleStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_VehicleStatus);
    s << indent << "FB_LeftDoorStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_LeftDoorStatus);
    s << indent << "FB_RightDoorStatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_RightDoorStatus);
    s << indent << "FB_BatterySOC: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_BatterySOC);
    s << indent << "FB_ErrorPowerTrain: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_ErrorPowerTrain);
    s << indent << "FB_ErrorBattery: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_ErrorBattery);
    s << indent << "FB_BrakePedal_Voltage_EN: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_BrakePedal_Voltage_EN);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMART_CAN_MSGS_MESSAGE_FB_OMUX_TO_AUTONOMOUS_H
