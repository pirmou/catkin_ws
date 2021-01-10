// Generated by gencpp from file local_planner_student/PathRequest.msg
// DO NOT EDIT!


#ifndef LOCAL_PLANNER_STUDENT_MESSAGE_PATHREQUEST_H
#define LOCAL_PLANNER_STUDENT_MESSAGE_PATHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace local_planner_student
{
template <class ContainerAllocator>
struct PathRequest_
{
  typedef PathRequest_<ContainerAllocator> Type;

  PathRequest_()
    : pathToGoal()  {
    }
  PathRequest_(const ContainerAllocator& _alloc)
    : pathToGoal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Path_<ContainerAllocator>  _pathToGoal_type;
  _pathToGoal_type pathToGoal;





  typedef boost::shared_ptr< ::local_planner_student::PathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::local_planner_student::PathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PathRequest_

typedef ::local_planner_student::PathRequest_<std::allocator<void> > PathRequest;

typedef boost::shared_ptr< ::local_planner_student::PathRequest > PathRequestPtr;
typedef boost::shared_ptr< ::local_planner_student::PathRequest const> PathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::local_planner_student::PathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::local_planner_student::PathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::local_planner_student::PathRequest_<ContainerAllocator1> & lhs, const ::local_planner_student::PathRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pathToGoal == rhs.pathToGoal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::local_planner_student::PathRequest_<ContainerAllocator1> & lhs, const ::local_planner_student::PathRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace local_planner_student

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::local_planner_student::PathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::local_planner_student::PathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::local_planner_student::PathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::local_planner_student::PathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::local_planner_student::PathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::local_planner_student::PathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::local_planner_student::PathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d15b8f26d46fc8067e3578120a749195";
  }

  static const char* value(const ::local_planner_student::PathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd15b8f26d46fc806ULL;
  static const uint64_t static_value2 = 0x7e3578120a749195ULL;
};

template<class ContainerAllocator>
struct DataType< ::local_planner_student::PathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "local_planner_student/PathRequest";
  }

  static const char* value(const ::local_planner_student::PathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::local_planner_student::PathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_msgs/Path pathToGoal\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::local_planner_student::PathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::local_planner_student::PathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pathToGoal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::local_planner_student::PathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::local_planner_student::PathRequest_<ContainerAllocator>& v)
  {
    s << indent << "pathToGoal: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.pathToGoal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCAL_PLANNER_STUDENT_MESSAGE_PATHREQUEST_H