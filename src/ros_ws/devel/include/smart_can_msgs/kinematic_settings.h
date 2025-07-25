// Generated by gencpp from file smart_can_msgs/kinematic_settings.msg
// DO NOT EDIT!


#ifndef SMART_CAN_MSGS_MESSAGE_KINEMATIC_SETTINGS_H
#define SMART_CAN_MSGS_MESSAGE_KINEMATIC_SETTINGS_H


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
struct kinematic_settings_
{
  typedef kinematic_settings_<ContainerAllocator> Type;

  kinematic_settings_()
    : kinematics(0)
    , enable(false)  {
    }
  kinematic_settings_(const ContainerAllocator& _alloc)
    : kinematics(0)
    , enable(false)  {
  (void)_alloc;
    }



   typedef uint8_t _kinematics_type;
  _kinematics_type kinematics;

   typedef uint8_t _enable_type;
  _enable_type enable;





  typedef boost::shared_ptr< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> const> ConstPtr;

}; // struct kinematic_settings_

typedef ::smart_can_msgs::kinematic_settings_<std::allocator<void> > kinematic_settings;

typedef boost::shared_ptr< ::smart_can_msgs::kinematic_settings > kinematic_settingsPtr;
typedef boost::shared_ptr< ::smart_can_msgs::kinematic_settings const> kinematic_settingsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smart_can_msgs::kinematic_settings_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::smart_can_msgs::kinematic_settings_<ContainerAllocator1> & lhs, const ::smart_can_msgs::kinematic_settings_<ContainerAllocator2> & rhs)
{
  return lhs.kinematics == rhs.kinematics &&
    lhs.enable == rhs.enable;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::smart_can_msgs::kinematic_settings_<ContainerAllocator1> & lhs, const ::smart_can_msgs::kinematic_settings_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace smart_can_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cd0a182ea13ba72984dfa70a9b4dc4da";
  }

  static const char* value(const ::smart_can_msgs::kinematic_settings_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcd0a182ea13ba729ULL;
  static const uint64_t static_value2 = 0x84dfa70a9b4dc4daULL;
};

template<class ContainerAllocator>
struct DataType< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_can_msgs/kinematic_settings";
  }

  static const char* value(const ::smart_can_msgs::kinematic_settings_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 kinematics\n"
"bool enable\n"
"\n"
;
  }

  static const char* value(const ::smart_can_msgs::kinematic_settings_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.kinematics);
      stream.next(m.enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kinematic_settings_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smart_can_msgs::kinematic_settings_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smart_can_msgs::kinematic_settings_<ContainerAllocator>& v)
  {
    s << indent << "kinematics: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.kinematics);
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMART_CAN_MSGS_MESSAGE_KINEMATIC_SETTINGS_H
