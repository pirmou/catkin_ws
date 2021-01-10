# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rotors_comm/OctomapRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class OctomapRequest(genpy.Message):
  _md5sum = "75da936d054df9de7938d7041a8a6ef2"
  _type = "rotors_comm/OctomapRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# The center point of the axis-aligned bounding box in the global frame
geometry_msgs/Point bounding_box_origin
# The 3 side lenghts of the axis-aligned bounding box
geometry_msgs/Point bounding_box_lengths
# The leaf size or resolution of the octomap
float64 leaf_size
# Indicate if the generated octomap should be published.
bool publish_octomap
# The filename under which the octomap should be stored (only stored if set)
string filename

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['bounding_box_origin','bounding_box_lengths','leaf_size','publish_octomap','filename']
  _slot_types = ['geometry_msgs/Point','geometry_msgs/Point','float64','bool','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       bounding_box_origin,bounding_box_lengths,leaf_size,publish_octomap,filename

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OctomapRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.bounding_box_origin is None:
        self.bounding_box_origin = geometry_msgs.msg.Point()
      if self.bounding_box_lengths is None:
        self.bounding_box_lengths = geometry_msgs.msg.Point()
      if self.leaf_size is None:
        self.leaf_size = 0.
      if self.publish_octomap is None:
        self.publish_octomap = False
      if self.filename is None:
        self.filename = ''
    else:
      self.bounding_box_origin = geometry_msgs.msg.Point()
      self.bounding_box_lengths = geometry_msgs.msg.Point()
      self.leaf_size = 0.
      self.publish_octomap = False
      self.filename = ''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_7dB().pack(_x.bounding_box_origin.x, _x.bounding_box_origin.y, _x.bounding_box_origin.z, _x.bounding_box_lengths.x, _x.bounding_box_lengths.y, _x.bounding_box_lengths.z, _x.leaf_size, _x.publish_octomap))
      _x = self.filename
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.bounding_box_origin is None:
        self.bounding_box_origin = geometry_msgs.msg.Point()
      if self.bounding_box_lengths is None:
        self.bounding_box_lengths = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.bounding_box_origin.x, _x.bounding_box_origin.y, _x.bounding_box_origin.z, _x.bounding_box_lengths.x, _x.bounding_box_lengths.y, _x.bounding_box_lengths.z, _x.leaf_size, _x.publish_octomap,) = _get_struct_7dB().unpack(str[start:end])
      self.publish_octomap = bool(self.publish_octomap)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.filename = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.filename = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7dB().pack(_x.bounding_box_origin.x, _x.bounding_box_origin.y, _x.bounding_box_origin.z, _x.bounding_box_lengths.x, _x.bounding_box_lengths.y, _x.bounding_box_lengths.z, _x.leaf_size, _x.publish_octomap))
      _x = self.filename
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.bounding_box_origin is None:
        self.bounding_box_origin = geometry_msgs.msg.Point()
      if self.bounding_box_lengths is None:
        self.bounding_box_lengths = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 57
      (_x.bounding_box_origin.x, _x.bounding_box_origin.y, _x.bounding_box_origin.z, _x.bounding_box_lengths.x, _x.bounding_box_lengths.y, _x.bounding_box_lengths.z, _x.leaf_size, _x.publish_octomap,) = _get_struct_7dB().unpack(str[start:end])
      self.publish_octomap = bool(self.publish_octomap)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.filename = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.filename = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7dB = None
def _get_struct_7dB():
    global _struct_7dB
    if _struct_7dB is None:
        _struct_7dB = struct.Struct("<7dB")
    return _struct_7dB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rotors_comm/OctomapResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import octomap_msgs.msg
import std_msgs.msg

class OctomapResponse(genpy.Message):
  _md5sum = "be9d2869d24fe40d6bc21ac21f6bb2c5"
  _type = "rotors_comm/OctomapResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """octomap_msgs/Octomap map


================================================================================
MSG: octomap_msgs/Octomap
# A 3D map in binary format, as Octree
Header header

# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)
bool binary

# Class id of the contained octree 
string id

# Resolution (in m) of the smallest octree nodes
float64 resolution

# binary serialization of octree, use conversions.h to read and write octrees
int8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['map']
  _slot_types = ['octomap_msgs/Octomap']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       map

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OctomapResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.map is None:
        self.map = octomap_msgs.msg.Octomap()
    else:
      self.map = octomap_msgs.msg.Octomap()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.map.header.seq, _x.map.header.stamp.secs, _x.map.header.stamp.nsecs))
      _x = self.map.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.map.binary
      buff.write(_get_struct_B().pack(_x))
      _x = self.map.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.map.resolution
      buff.write(_get_struct_d().pack(_x))
      length = len(self.map.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(struct.Struct(pattern).pack(*self.map.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.map is None:
        self.map = octomap_msgs.msg.Octomap()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.map.header.seq, _x.map.header.stamp.secs, _x.map.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.map.header.frame_id = str[start:end]
      start = end
      end += 1
      (self.map.binary,) = _get_struct_B().unpack(str[start:end])
      self.map.binary = bool(self.map.binary)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.map.id = str[start:end]
      start = end
      end += 8
      (self.map.resolution,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.map.data = s.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.map.header.seq, _x.map.header.stamp.secs, _x.map.header.stamp.nsecs))
      _x = self.map.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.map.binary
      buff.write(_get_struct_B().pack(_x))
      _x = self.map.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.map.resolution
      buff.write(_get_struct_d().pack(_x))
      length = len(self.map.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sb'%length
      buff.write(self.map.data.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.map is None:
        self.map = octomap_msgs.msg.Octomap()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.map.header.seq, _x.map.header.stamp.secs, _x.map.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.map.header.frame_id = str[start:end]
      start = end
      end += 1
      (self.map.binary,) = _get_struct_B().unpack(str[start:end])
      self.map.binary = bool(self.map.binary)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.map.id = str[start:end]
      start = end
      end += 8
      (self.map.resolution,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sb'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.map.data = numpy.frombuffer(str[start:end], dtype=numpy.int8, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
class Octomap(object):
  _type          = 'rotors_comm/Octomap'
  _md5sum = '7b66ab5bfca356ccfebdd11157126a9f'
  _request_class  = OctomapRequest
  _response_class = OctomapResponse
