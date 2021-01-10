// Auto-generated. Do not edit!

// (in-package turtlebot_arm_block_manipulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class InteractiveBlockManipulationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame = null;
      this.block_size = null;
    }
    else {
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = '';
      }
      if (initObj.hasOwnProperty('block_size')) {
        this.block_size = initObj.block_size
      }
      else {
        this.block_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InteractiveBlockManipulationGoal
    // Serialize message field [frame]
    bufferOffset = _serializer.string(obj.frame, buffer, bufferOffset);
    // Serialize message field [block_size]
    bufferOffset = _serializer.float32(obj.block_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InteractiveBlockManipulationGoal
    let len;
    let data = new InteractiveBlockManipulationGoal(null);
    // Deserialize message field [frame]
    data.frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [block_size]
    data.block_size = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.frame.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlebot_arm_block_manipulation/InteractiveBlockManipulationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b339dc21a4d30705910c94ca9ed2a4ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    string frame
    float32 block_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InteractiveBlockManipulationGoal(null);
    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = ''
    }

    if (msg.block_size !== undefined) {
      resolved.block_size = msg.block_size;
    }
    else {
      resolved.block_size = 0.0
    }

    return resolved;
    }
};

module.exports = InteractiveBlockManipulationGoal;
