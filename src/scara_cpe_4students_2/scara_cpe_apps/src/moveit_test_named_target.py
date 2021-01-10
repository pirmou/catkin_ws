#!/usr/bin/env python
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg

from std_msgs.msg import String

class moveit_test_name_target:




    def __init__(self):
        print "============ Starting tutorial setup"
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('moveit_test_name_target', anonymous=True)
        display_trajectory_publisher = rospy.Publisher(
                                    '/move_group/display_planned_path',
                                    moveit_msgs.msg.DisplayTrajectory)
        ## Instantiate a RobotCommander object.  This object is an interface to the robot as a whole.
        robot = moveit_commander.RobotCommander()
        robot_groupe_name = robot.get_group_names()
        print "============ Robot Groups:"
        print(robot_groupe_name)
        scene = moveit_commander.PlanningSceneInterface()
        group = moveit_commander.MoveGroupCommander(robot_groupe_name[0])
        group_variable_values = group.get_current_joint_values()
        
        print "============ Joint values: ", group_variable_values


        aimant_final = group.get_end_effector_link()

        #print "============ Reference frame: %s" % aimant_final

        #joints = group.get_joints()
        #print "============ Robot joints: "
        #print(joints)
        #print "============ INCONNU : %s" % group.get_joint_value_target()

        #print "============ INCONNU : %s" % group.get_remembered_joint_values()
       
        
        print('test_poses')
        right = group.set_named_target('right')
        group.go(wait=True)
        print('right')
        straight = group.set_named_target('straight')
        group.go(wait=True)
        print('straight')
        left = group.set_named_target('left')
        group.go(wait=True)
        print('left')

        """

        print "============ Generating plan 1"
        pose_target = geometry_msgs.msg.PoseStamped()
        pose_target.header.frame_id = "world"
        pose_target.pose.position.x = -1.0
        pose_target.pose.position.y = -0.5
        #pose_target.pose.position.z = -0.5
        group.set_pose_target(pose_target)
        plan1=group.plan()
        group.go(wait=True) #-> real robot 
        
        print "============ Visualizing plan1"
        display_trajectory = moveit_msgs.msg.DisplayTrajectory()

        display_trajectory.trajectory_start = robot.get_current_state()
        display_trajectory.trajectory.append(plan1)
        display_trajectory_publisher.publish(display_trajectory)
        """
        print("executed")
if __name__=='__main__':
  try:
    moveit_test_name_target()
    rospy.spin()
  except rospy.ROSInterruptException:
    pass