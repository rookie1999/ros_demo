#! /usr/bin/env python

import rospy
from dynamic_reconfigure.server import Server
from dynamic_param.cfg import drConfig


def callback(config, level):
    rospy.loginfo("动态解析参数：%d, %.2f, %d, %s, %d", 
                  config.int_param, 
                  config.double_param, 
                  config.bool_param, 
                  config.string_param, 
                  config.list_param)
    return config  # 不加会报错

if __name__ == "__main__":
    rospy.init_node("dr_server_p")
    server = Server(drConfig, callback)
    rospy.spin()