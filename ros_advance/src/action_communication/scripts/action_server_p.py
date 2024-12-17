#! /usr/bin/env python

import rospy
import actionlib
from action_communication.msg import *

class MyActionServer:
    def __init__(self):
        self.server = actionlib.SimpleActionServer("addInts", AddIntsAction, self.callback, False)
        self.server.start()
        rospy.loginfo("服务端启动")

    def callback(self, goal):
        rospy.loginfo("服务端处理请求...")
        num = goal.num
        rate = rospy.Rate(10)
        sum = 0
        for i in range(1, num + 1):
            sum = sum + i
            feedback = i / num
            rospy.loginfo("当前进度:%.2f", feedback)
            fd = AddIntsFeedback()
            fd.progress_bar = feedback
            self.server.publish_feedback(fd)
            rate.sleep()
        result = AddIntsResult()
        result.result = sum
        self.server.set_succeeded(result)
        rospy.loginfo("响应结果:%d", sum)


if __name__ == "__main__":
    rospy.init_node("action_server_p")
    server = MyActionServer()
    rospy.spin()