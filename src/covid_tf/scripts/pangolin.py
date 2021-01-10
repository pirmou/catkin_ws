#!/usr/bin/env python  
import rospy

from random import seed, randint
from math import cos, sin

import tf_conversions
import tf2_ros

from geometry_msgs.msg import Point, TransformStamped


class Covid():
    def __init__(self, id):

        # virus position
        self.position = Point()

        self.id = id

        # circle radius
        self.radius = self.rand()

        self.coeff_y = {'a':self.rand(), 'b':self.rand(), 'c':self.rand()}
        self.coeff_x = {'a':self.rand(), 'b':self.rand(), 'c':self.rand()}
        self.coeff_z = {'a':self.rand(), 'b':self.rand(), 'c':self.rand()}

        self.start = rospy.Time.now()

    def rand(self):
        r = 0
        while (r==0):
            r = randint(-3,3)
        return float(r)


    def update_refs(self):
        cur_time = rospy.Time.now()

        br = tf2_ros.TransformBroadcaster()
        t = TransformStamped() 

        t.header.stamp = cur_time
        t.header.frame_id = "human/base"
        t.child_frame_id = "covid_ref_"+str(self.id)
        t.transform.translation.x = self.coeff_x['a']
        t.transform.translation.y = self.coeff_y['b']
        t.transform.translation.z = self.coeff_z['c']
        q = tf_conversions.transformations.quaternion_from_euler(0, 0, 0)
        t.transform.rotation.x = q[0]
        t.transform.rotation.y = q[1]
        t.transform.rotation.z = q[2]
        t.transform.rotation.w = q[3]        

        br.sendTransform(t)


    def update_position(self):
        br = tf2_ros.TransformBroadcaster()
        t = TransformStamped()  

        cur_time = rospy.Time.now()
        self.th = float(cur_time.secs - self.start.secs) * 0.3

        #print("coeff : {0} \n radius : {1} \n th : {2}".format(self.coeff_x['a'], self.radius, self.th ))

        self.position.x = self.coeff_x['a'] + self.radius*self.coeff_x['b']*cos(self.th) + self.radius*self.coeff_x['c']*sin(self.th) 
        self.position.y = self.coeff_y['a'] + self.radius*self.coeff_y['b']*cos(self.th) + self.radius*self.coeff_y['c']*sin(self.th) 
        self.position.z = self.coeff_z['a'] + self.radius*self.coeff_z['b']*cos(self.th) + self.radius*self.coeff_z['c']*sin(self.th) 

        

        t.header.stamp = cur_time
        t.header.frame_id = "covid_ref_"+str(self.id)
        t.child_frame_id = "covid_"+str(self.id)
        t.transform.translation.x = self.position.x
        t.transform.translation.y = self.position.y
        t.transform.translation.z = self.position.z
        q = tf_conversions.transformations.quaternion_from_euler(0, 0, 0)
        t.transform.rotation.x = q[0]
        t.transform.rotation.y = q[1]
        t.transform.rotation.z = q[2]
        t.transform.rotation.w = q[3]        

        br.sendTransform(t)


if __name__ == '__main__':
    rospy.init_node('pangolin')
    rate = 5 # Hz
    r = rospy.Rate(rate)    
    covid = []

    for i in range(10):
        covid.append( Covid(i) )

    while not rospy.is_shutdown():
        for i in range(10):
            covid[i].update_refs()
            covid[i].update_position()
        r.sleep()




