// Generated by gencpp from file smart_can_msgs/Feedback_SENSOR.msg
// DO NOT EDIT!


#ifndef SMART_CAN_MSGS_MESSAGE_FEEDBACK_SENSOR_H
#define SMART_CAN_MSGS_MESSAGE_FEEDBACK_SENSOR_H


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
struct Feedback_SENSOR_
{
  typedef Feedback_SENSOR_<ContainerAllocator> Type;

  Feedback_SENSOR_()
    : SteeringAngleSensor(0)  {
    }
  Feedback_SENSOR_(const ContainerAllocator& _alloc)
    : SteeringAngleSensor(0)  {
  (void)_alloc;
    }



   typedef uint16_t _SteeringAngleSensor_type;
  _SteeringAngleSensor_type SteeringAngleSensor;





  typedef boost::shared_ptr< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> const> ConstPtr;

}; // struct Feedback_SENSOR_

typedef ::smart_can_msgs::Feedback_SENSOR_<std::allocator<void> > Feedback_SENSOR;

typedef boost::shared_ptr< ::smart_can_msgs::Feedback_SENSOR > Feedback_SENSORPtr;
typedef boost::shared_ptr< ::smart_can_msgs::Feedback_SENSOR const> Feedback_SENSORConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator1> & lhs, const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator2> & rhs)
{
  return lhs.SteeringAngleSensor == rhs.SteeringAngleSensor;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator1> & lhs, const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace smart_can_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
{
  static const char* value()
  {
    return "810c1cfb4931d86ae219b3ad3c45ed05";
  }

  static const char* value(const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x810c1cfb4931d86aULL;
  static const uint64_t static_value2 = 0xe219b3ad3c45ed05ULL;
};

template<class ContainerAllocator>
struct DataType< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_can_msgs/Feedback_SENSOR";
  }

  static const char* value(const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 SteeringAngleSensor\n"
;
  }

  static const char* value(const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.SteeringAngleSensor);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Feedback_SENSOR_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smart_can_msgs::Feedback_SENSOR_<ContainerAllocator>& v)
  {
    s << indent << "SteeringAngleSensor: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.SteeringAngleSensor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMART_CAN_MSGS_MESSAGE_FEEDBACK_SENSOR_H
