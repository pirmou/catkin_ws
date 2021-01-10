#!/usr/bin/env python

import roslib
roslib.load_manifest('scara_cpe_kinematics')

import math
import rospy
import actionlib
from std_msgs.msg import Float64
import trajectory_msgs.msg
import control_msgs.msg
from trajectory_msgs.msg import JointTrajectoryPoint
from control_msgs.msg import JointTrajectoryAction, JointTrajectoryGoal, FollowJointTrajectoryAction, FollowJointTrajectoryGoal



class Joint:
        def __init__(self, motor_name):
            #arm_name should be b_arm or f_arm
            self.name = motor_name
            self.jta = actionlib.SimpleActionClient('/scara_cpe/scara_cpe_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
            rospy.loginfo('Waiting for joint trajectory action')
            self.jta.wait_for_server()
            rospy.loginfo('Found joint trajectory action!')


        def move_joint(self, angles):
            goal = FollowJointTrajectoryGoal()
            char = self.name[0] #either 'f' or 'b'
            goal.trajectory.joint_names = ['shoulder_1_joint', 'shoulder_2_joint']
            point = JointTrajectoryPoint()
            point.positions = angles
            point.time_from_start = rospy.Duration(3)
            goal.trajectory.points.append(point)
            self.jta.send_goal_and_wait(goal)


def conversion(x, y):

    l1 = 0.08 #Link1_LENGTH
    l2 = 0.047 #Link2_LENGTH

    c2 = (x*x + y*y - l1*l1 - l2*l2)/ (2*l1*l2)
    theta2 = math.acos(c2)
    s2 = math.sin(theta2)

    c1 = ((c2*l2*x) + (l1*x) + (s2*l2*y)) / (x*x + y*y)
    s1 = ((c2*l2*y) + (l1*y) - (s2*l2*x)) / (x*x + y*y)

    theta1 = math.atan2(s1, c1)

    return [theta1, theta2]



def main():
    arm = Joint('f_arm')
    angles = conversion(x = 0.073, y =- 0.08)
    arm.move_joint(angles)


if __name__ == '__main__':
      rospy.init_node('joint_position_tester')
      main()
