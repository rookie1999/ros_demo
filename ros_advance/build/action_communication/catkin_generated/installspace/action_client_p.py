#!/usr/bin/env python3

import rospy
import actionlib
from action_communication.msg import *

def done_cb(state, result):
    if state == actionlib.GoalStatus.SUCCEEDED:
        rospy.loginfo("响应结果:%d",result.result)
    else:
        rospy.loginfo("任务失败")

def active_cb():
    rospy.loginfo("服务被激活....")

def feedback_cb(fb):
    rospy.loginfo("当前进度:%.2f",fb.progress_bar)

if __name__ == "__main__":
    rospy.init_node("action_client_p")
    client = actionlib.SimpleActionClient("addInts", AddIntsAction)
    client.wait_for_server()
    goal = AddIntsGoal()
    goal.num = 100
    client.send_goal(goal, done_cb, active_cb, feedback_cb)
    rospy.spin()