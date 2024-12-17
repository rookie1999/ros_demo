#include "ros/ros.h"
#include "dynamic_reconfigure/server.h"
#include "dynamic_param/drConfig.h"

void cb(dynamic_param::drConfig& config, uint32_t level) {
    ROS_INFO("动态参数解析数据:%d,%.2f,%d,%s,%d",
        config.int_param,
        config.double_param,
        config.bool_param,
        config.string_param.c_str(),
        config.list_param
    );
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "dr");
    // 创建服务器对象
    dynamic_reconfigure::Server<dynamic_param::drConfig> server;
    // 创建回调对象
    dynamic_reconfigure::Server<dynamic_param::drConfig>::CallbackType cbType;
    cbType = boost::bind(&cb, _1, _2);
    // 服务器使用回调对象
    server.setCallback(cbType);
    ros::spin();
    return 0;
}
