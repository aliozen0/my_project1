// Generated by gencpp from file smart_can_msgs/kinematic_messages.msg
// DO NOT EDIT!


#ifndef SMART_CAN_MSGS_MESSAGE_KINEMATIC_MESSAGES_H
#define SMART_CAN_MSGS_MESSAGE_KINEMATIC_MESSAGES_H


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
struct kinematic_messages_
{
  typedef kinematic_messages_<ContainerAllocator> Type;

  kinematic_messages_()
    : joint_type(0)
    , angle(0.0)
    , angle_y(0.0)
    , angular_velocity(0.0)
    , link_length(0.0)  {
    }
  kinematic_messages_(const ContainerAllocator& _alloc)
    : joint_type(0)
    , angle(0.0)
    , angle_y(0.0)
    , angular_velocity(0.0)
    , link_length(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _joint_type_type;
  _joint_type_type joint_type;

   typedef float _angle_type;
  _angle_type angle;

   typedef float _angle_y_type;
  _angle_y_type angle_y;

   typedef float _angular_velocity_type;
  _angular_velocity_type angular_velocity;

   typedef float _link_length_type;
  _link_length_type link_length;





  typedef boost::shared_ptr< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> const> ConstPtr;

}; // struct kinematic_messages_

typedef ::smart_can_msgs::kinematic_messages_<std::allocator<void> > kinematic_messages;

typedef boost::shared_ptr< ::smart_can_msgs::kinematic_messages > kinematic_messagesPtr;
typedef boost::shared_ptr< ::smart_can_msgs::kinematic_messages const> kinematic_messagesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smart_can_msgs::kinematic_messages_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::smart_can_msgs::kinematic_messages_<ContainerAllocator1> & lhs, const ::smart_can_msgs::kinematic_messages_<ContainerAllocator2> & rhs)
{
  return lhs.joint_type == rhs.joint_type &&
    lhs.angle == rhs.angle &&
    lhs.angle_y == rhs.angle_y &&
    lhs.angular_velocity == rhs.angular_velocity &&
    lhs.link_length == rhs.link_length;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::smart_can_msgs::kinematic_messages_<ContainerAllocator1> & lhs, const ::smart_can_msgs::kinematic_messages_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace smart_can_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7bc7418ecb7fee03d277ee78209c3d4d";
  }

  static const char* value(const ::smart_can_msgs::kinematic_messages_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7bc7418ecb7fee03ULL;
  static const uint64_t static_value2 = 0xd277ee78209c3d4dULL;
};

template<class ContainerAllocator>
struct DataType< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_can_msgs/kinematic_messages";
  }

  static const char* value(const ::smart_can_msgs::kinematic_messages_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 joint_type\n"
"float32 angle\n"
"float32 angle_y\n"
"float32 angular_velocity\n"
"float32 link_length\n"
;
  }

  static const char* value(const ::smart_can_msgs::kinematic_messages_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_type);
      stream.next(m.angle);
      stream.next(m.angle_y);
      stream.next(m.angular_velocity);
      stream.next(m.link_length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kinematic_messages_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smart_can_msgs::kinematic_messages_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smart_can_msgs::kinematic_messages_<ContainerAllocator>& v)
  {
    s << indent << "joint_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.joint_type);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "angle_y: ";
    Printer<float>::stream(s, indent + "  ", v.angle_y);
    s << indent << "angular_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.angular_velocity);
    s << indent << "link_length: ";
    Printer<float>::stream(s, indent + "  ", v.link_length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMART_CAN_MSGS_MESSAGE_KINEMATIC_MESSAGES_H
