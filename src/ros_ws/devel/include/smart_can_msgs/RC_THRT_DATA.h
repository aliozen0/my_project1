// Generated by gencpp from file smart_can_msgs/RC_THRT_DATA.msg
// DO NOT EDIT!


#ifndef SMART_CAN_MSGS_MESSAGE_RC_THRT_DATA_H
#define SMART_CAN_MSGS_MESSAGE_RC_THRT_DATA_H


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
struct RC_THRT_DATA_
{
  typedef RC_THRT_DATA_<ContainerAllocator> Type;

  RC_THRT_DATA_()
    : RC_THRT_PEDAL_POSITION(0)
    , RC_THRT_PEDAL_PRESS(0)  {
    }
  RC_THRT_DATA_(const ContainerAllocator& _alloc)
    : RC_THRT_PEDAL_POSITION(0)
    , RC_THRT_PEDAL_PRESS(0)  {
  (void)_alloc;
    }



   typedef uint8_t _RC_THRT_PEDAL_POSITION_type;
  _RC_THRT_PEDAL_POSITION_type RC_THRT_PEDAL_POSITION;

   typedef uint8_t _RC_THRT_PEDAL_PRESS_type;
  _RC_THRT_PEDAL_PRESS_type RC_THRT_PEDAL_PRESS;





  typedef boost::shared_ptr< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> const> ConstPtr;

}; // struct RC_THRT_DATA_

typedef ::smart_can_msgs::RC_THRT_DATA_<std::allocator<void> > RC_THRT_DATA;

typedef boost::shared_ptr< ::smart_can_msgs::RC_THRT_DATA > RC_THRT_DATAPtr;
typedef boost::shared_ptr< ::smart_can_msgs::RC_THRT_DATA const> RC_THRT_DATAConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator1> & lhs, const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator2> & rhs)
{
  return lhs.RC_THRT_PEDAL_POSITION == rhs.RC_THRT_PEDAL_POSITION &&
    lhs.RC_THRT_PEDAL_PRESS == rhs.RC_THRT_PEDAL_PRESS;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator1> & lhs, const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace smart_can_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "16f66a8758944d1f785808e5231f5e93";
  }

  static const char* value(const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x16f66a8758944d1fULL;
  static const uint64_t static_value2 = 0x785808e5231f5e93ULL;
};

template<class ContainerAllocator>
struct DataType< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_can_msgs/RC_THRT_DATA";
  }

  static const char* value(const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 RC_THRT_PEDAL_POSITION\n"
"uint8 RC_THRT_PEDAL_PRESS\n"
;
  }

  static const char* value(const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.RC_THRT_PEDAL_POSITION);
      stream.next(m.RC_THRT_PEDAL_PRESS);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RC_THRT_DATA_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smart_can_msgs::RC_THRT_DATA_<ContainerAllocator>& v)
  {
    s << indent << "RC_THRT_PEDAL_POSITION: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.RC_THRT_PEDAL_POSITION);
    s << indent << "RC_THRT_PEDAL_PRESS: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.RC_THRT_PEDAL_PRESS);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMART_CAN_MSGS_MESSAGE_RC_THRT_DATA_H
