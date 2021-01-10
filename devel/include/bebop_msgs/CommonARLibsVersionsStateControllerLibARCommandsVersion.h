// Generated by gencpp from file bebop_msgs/CommonARLibsVersionsStateControllerLibARCommandsVersion.msg
// DO NOT EDIT!


#ifndef BEBOP_MSGS_MESSAGE_COMMONARLIBSVERSIONSSTATECONTROLLERLIBARCOMMANDSVERSION_H
#define BEBOP_MSGS_MESSAGE_COMMONARLIBSVERSIONSSTATECONTROLLERLIBARCOMMANDSVERSION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace bebop_msgs
{
template <class ContainerAllocator>
struct CommonARLibsVersionsStateControllerLibARCommandsVersion_
{
  typedef CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> Type;

  CommonARLibsVersionsStateControllerLibARCommandsVersion_()
    : header()
    , version()  {
    }
  CommonARLibsVersionsStateControllerLibARCommandsVersion_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , version(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _version_type;
  _version_type version;





  typedef boost::shared_ptr< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> const> ConstPtr;

}; // struct CommonARLibsVersionsStateControllerLibARCommandsVersion_

typedef ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<std::allocator<void> > CommonARLibsVersionsStateControllerLibARCommandsVersion;

typedef boost::shared_ptr< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion > CommonARLibsVersionsStateControllerLibARCommandsVersionPtr;
typedef boost::shared_ptr< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion const> CommonARLibsVersionsStateControllerLibARCommandsVersionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator1> & lhs, const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.version == rhs.version;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator1> & lhs, const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bebop_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5c334c4f3ab8d1ba8b608eeadaa52a06";
  }

  static const char* value(const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5c334c4f3ab8d1baULL;
  static const uint64_t static_value2 = 0x8b608eeadaa52a06ULL;
};

template<class ContainerAllocator>
struct DataType< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bebop_msgs/CommonARLibsVersionsStateControllerLibARCommandsVersion";
  }

  static const char* value(const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# CommonARLibsVersionsStateControllerLibARCommandsVersion\n"
"# auto-generated from up stream XML files at\n"
"#   github.com/Parrot-Developers/libARCommands/tree/master/Xml\n"
"# To check upstream commit hash, refer to last_build_info file\n"
"# Do not modify this file by hand. Check scripts/meta folder for generator files.\n"
"#\n"
"# SDK Comment: \n"
"\n"
"Header header\n"
"\n"
"# version of libARCommands (1.2.3.4 format)\n"
"string version\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.version);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommonARLibsVersionsStateControllerLibARCommandsVersion_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bebop_msgs::CommonARLibsVersionsStateControllerLibARCommandsVersion_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "version: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.version);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEBOP_MSGS_MESSAGE_COMMONARLIBSVERSIONSSTATECONTROLLERLIBARCOMMANDSVERSION_H
