#include "ros/ros.h"
#include "actionlib/server/simple_action_server.h"
#include "action_communication/AddIntsAction.h"

typedef actionlib::SimpleActionServer<action_communication::AddIntsAction> Server;

void callback(const action_communication::AddIntsGoalConstPtr &goal, Server* server);

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ROS_INFO("服务端实现...");
    ros::init(argc, argv, "AddInts_server");
    ros::NodeHandle nh;
    /*SimpleActionServer(ros::NodeHandle n, 
                        std::string name, 
                        boost::function<void (const action_communication::AddIntsGoalConstPtr &)> execute_callback, 
                        bool auto_start)
    */
    Server server(nh, "add_sum", boost::bind(&callback, _1, &server), false);
    server.start();
    ros::spin();
    return 0;
}

void callback(const action_communication::AddIntsGoalConstPtr &goal, Server* server) {
    int num = goal->num;
    ROS_INFO("目标值为%d", num);
    int sum = 0;

    // 设置feedback
    action_communication::AddIntsFeedback feedback;
    ros::Rate r(10);
    for (int i = 1; i <= num; i++) {
        sum += i;
        feedback.progress_bar = i / (double)num;
        server->publishFeedback(feedback);
        r.sleep();
    }

    // 设置最终结果
    action_communication::AddIntsResult res;
    res.result = sum;
    server->setSucceeded(res);

}