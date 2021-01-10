#!/usr/bin/env python
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list



class extrudation:
    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('extrudation', anonymous=True)
        robot = moveit_commander.RobotCommander()
        #group names (scara_cpe_group)
        robot_groupe_name = robot.get_group_names()
        print "============ Robot Groups:"
        print(robot_groupe_name)

        scene = moveit_commander.PlanningSceneInterface()
        group = moveit_commander.MoveGroupCommander(robot_groupe_name[0])

        end_effector = group.get_end_effector_link()
        #print "============= scene: %s" % scene
        
        group.set_named_target('init_pose')
        group.go(wait=True)

        print "============= Creation of piece "
        print("             .")
        rospy.sleep(1)
        print("               .")
        rospy.sleep(1)
        print("                 .")
        rospy.sleep(1)
        print("                   .")
        rospy.sleep(1)
        print("                     .")
        rospy.sleep(1)
        #definiton of piece pose:#


        self.pose1 = geometry_msgs.msg.PoseStamped()
        self.pose1.header.frame_id = "base_link"
        self.pose1.pose.position.x = 0.073 
        self.pose1.pose.position.y = 0.8
        self.pose1.pose.position.z = 0.5

        self.pose2 = geometry_msgs.msg.PoseStamped()
        self.pose2.header.frame_id = "base_link"
        self.pose2.pose.position.x = 0.073 
        self.pose2.pose.position.y = 0.8
        self.pose2.pose.position.z = 0.5
        """
        
        self.cylindre_piece_1 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_1.header.frame_id = "base_link"
        self.cylindre_piece_1.pose.position.x = -0.073 
        self.cylindre_piece_1.pose.position.y = 0.08
        self.cylindre_piece_1.pose.position.z = 0.0005
        scene.add_cylinder("piece1", self.cylindre_piece_1, 0.001, 0.015)

        self.cylindre_piece_2 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_2.header.frame_id = "base_link"
        self.cylindre_piece_2.pose.position.x = 0.035
        self.cylindre_piece_2.pose.position.y = 0.14
        self.cylindre_piece_2.pose.position.z = 0.0005
        scene.add_cylinder("piece2", self.cylindre_piece_2, 0.001, 0.015)

        self.cylindre_piece_3 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_3.header.frame_id = "base_link"
        self.cylindre_piece_3.pose.position.x = 0.044
        self.cylindre_piece_3.pose.position.y = 0.08 
        self.cylindre_piece_3.pose.position.z = 0.0005
        scene.add_cylinder("piece3", self.cylindre_piece_3, 0.001, 0.015)

        self.cylindre_piece_4 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_4.header.frame_id = "base_link"
        self.cylindre_piece_4.pose.position.x = -0.035
        self.cylindre_piece_4.pose.position.y = 0.12
        self.cylindre_piece_4.pose.position.z = 0.0005
        scene.add_cylinder("piece4", self.cylindre_piece_4, 0.001, 0.015)

        self.cylindre_piece_5 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_5.header.frame_id = "base_link"
        self.cylindre_piece_5.pose.position.x = 0.067
        self.cylindre_piece_5.pose.position.y = 0.11
        self.cylindre_piece_5.pose.position.z = 0.0005
        scene.add_cylinder("piece5", self.cylindre_piece_5, 0.08, 0.015)

        print "============= Creation of piece : ..... DONE"
        """
        #wpose = group.get_current_pose().pose
        #print "Current Pose of Robot: %s" % wpose


        straight = True

        self.deplacement_new(group, self.pose1, self.pose2, end_effector)
        print("POS 1 ---- OK")

        self.deplacement_new(group, self.pose2, self.pose1, end_effector)
        print("POS 2 ---- OK")

        """
        self.deplacement_piece_new(group, self.cylindre_piece_4, self.cylindre_piece_2, "piece4", end_effector)
        print("POS 3 ---- OK")

        self.deplacement_piece_new(group, self.cylindre_piece_1, self.cylindre_piece_4, "piece1", end_effector)
        print("POS 4 ---- OK")
        """

        group.set_named_target('init_pose')
        group.go(wait=True)


    def deplacement(self, group, pose, end_link) :#, end_link, destination_piece):
        
        group.set_pose_target(pose, end_link)
        group.set_joint_value_target(pose, True)
        group.go(wait=True)
        rospy.sleep(2)


    def deplacement_new(self, group, pose_init, pose_dest, end_link):
        print("=============  Begining of Maneouvre")
        rospy.sleep(2)
        print("=============  - - - - Moving to piece ")
        group.set_pose_target(pose_init, end_link)
        group.set_joint_value_target(pose_init, True)
        group.go(wait=True)
        rospy.sleep(2)

        """
        print("=============  - - - - Begining of Attached piece ")
        group.attach_object(name_piece)
        group.go(wait=True)
        rospy.sleep(1)
        print("=============  - - - - Begining of 2nd depl of piece ")
        """

        group.set_pose_target(pose_dest, end_link)
        group.set_joint_value_target(pose_dest, True)

        group.go(wait=True)
        rospy.sleep(2)
        """
        print("=============  - - - - Begining of Detach piece")
        group.detach_object(name_piece)
        group.go(wait=True)
        rospy.sleep(1)
        """
        print("=============  End of Maneouvre")



if __name__=='__main__':
  try:
    extrudation()
    rospy.spin()
  except rospy.ROSInterruptException:
    pass


