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



class move_coins_planning_scene:
    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('move_coins_planning_scene', anonymous=True)
        robot = moveit_commander.RobotCommander()
        #group names (scara_cpe_group)
        robot_groupe_name = robot.get_group_names()
        print "============ Robot Groups:"
        print(robot_groupe_name)

        scene = moveit_commander.PlanningSceneInterface()
        group = moveit_commander.MoveGroupCommander(robot_groupe_name[0])

        aimant_final = group.get_end_effector_link()
        #print "============= scene: %s" % scene
        
        group.set_named_target('straight')
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

        self.cylindre_piece_1 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_1.header.frame_id = "world"
        self.cylindre_piece_1.pose.position.x = -0.073 
        self.cylindre_piece_1.pose.position.y = 0.08
        self.cylindre_piece_1.pose.position.z = 0.0005
        scene.add_cylinder("piece1", self.cylindre_piece_1, 0.001, 0.015)

        self.cylindre_piece_2 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_2.header.frame_id = "world"
        self.cylindre_piece_2.pose.position.x = 0.035
        self.cylindre_piece_2.pose.position.y = 0.14
        self.cylindre_piece_2.pose.position.z = 0.0005
        scene.add_cylinder("piece2", self.cylindre_piece_2, 0.001, 0.015)

        self.cylindre_piece_3 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_3.header.frame_id = "world"
        self.cylindre_piece_3.pose.position.x = 0.044
        self.cylindre_piece_3.pose.position.y = 0.08 
        self.cylindre_piece_3.pose.position.z = 0.0005
        scene.add_cylinder("piece3", self.cylindre_piece_3, 0.001, 0.015)

        self.cylindre_piece_4 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_4.header.frame_id = "world"
        self.cylindre_piece_4.pose.position.x = -0.035
        self.cylindre_piece_4.pose.position.y = 0.12
        self.cylindre_piece_4.pose.position.z = 0.0005
        scene.add_cylinder("piece4", self.cylindre_piece_4, 0.001, 0.015)

        self.cylindre_piece_5 = geometry_msgs.msg.PoseStamped()
        self.cylindre_piece_5.header.frame_id = "world"
        self.cylindre_piece_5.pose.position.x = 0.067
        self.cylindre_piece_5.pose.position.y = 0.11
        self.cylindre_piece_5.pose.position.z = 0.0005
        scene.add_cylinder("piece5", self.cylindre_piece_5, 0.08, 0.015)

        print "============= Creation of piece : ..... DONE"

        #wpose = group.get_current_pose().pose
        print("============= Init of catching piece ")
        #print "Current Pose of Robot: %s" % wpose


        straight = True

        self.deplacement_piece_new(group, self.cylindre_piece_3, straight, "piece3",aimant_final)
        print("POS 1 ---- OK")

        self.deplacement_piece_new(group, self.cylindre_piece_2, self.cylindre_piece_3, "piece2", aimant_final)
        print("POS 2 ---- OK")

        self.deplacement_piece_new(group, self.cylindre_piece_4, self.cylindre_piece_2, "piece4", aimant_final)
        print("POS 3 ---- OK")

        self.deplacement_piece_new(group, self.cylindre_piece_1, self.cylindre_piece_4, "piece1", aimant_final)
        print("POS 4 ---- OK")

        group.set_named_target('straight')
        group.go(wait=True)


    def deplacement_piece(self, group, piece_target, end_link) :#, end_link, destination_piece):
        
        group.set_pose_target(piece_target, end_link)
        group.set_joint_value_target(piece_target, True)
        group.go(wait=True)
        rospy.sleep(2)


    def deplacement_piece_new(self, group, piece_init, piece_dest, name_piece, end_link):
        print("=============  Begining of Maneouvre")
        rospy.sleep(2)
        print("=============  - - - - Moving to piece ")
        group.set_pose_target(piece_init, end_link)
        group.set_joint_value_target(piece_init, True)
        group.go(wait=True)
        rospy.sleep(2)

        print("=============  - - - - Begining of Attached piece ")
        group.attach_object(name_piece)
        group.go(wait=True)
        rospy.sleep(1)
        print("=============  - - - - Begining of 2nd depl of piece ")

        if piece_dest == True:
            group.set_named_target('straight')
        else:
            group.set_pose_target(piece_dest, end_link)
            group.set_joint_value_target(piece_dest, True)

        group.go(wait=True)
        rospy.sleep(2)
        print("=============  - - - - Begining of Detach piece")
        group.detach_object(name_piece)
        group.go(wait=True)
        rospy.sleep(1)
        print("=============  End of Maneouvre")


if __name__=='__main__':
  try:
    move_coins_planning_scene()
    rospy.spin()
  except rospy.ROSInterruptException:
    pass


