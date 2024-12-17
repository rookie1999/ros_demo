#include "ros/ros.h"
#include "actionlib/client/simple_action_client.h"
#include "action_communication/AddIntsAction.h"

typedef actionlib::SimpleActionClient<action_communication::AddIntsAction> Client;

void done_cb(const actionlib::SimpleClientGoalState &state, const action_communication::AddIntsResultConstPtr &result);
void active_cb();
void feedback_cb(const action_communication::AddIntsFeedbackConstPtr &feedback);

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "AddInts_client");
    ros::NodeHandle nh;
    // SimpleActionClient(ros::NodeHandle & n, const std::string & name, bool spin_thread = true)
    Client client(nh, "add_sum", true);
    client.waitForServer();
    
    action_communication::AddIntsGoal goal;
    goal.num = 10;
    /*
    void sendGoal(const action_communication::AddIntsGoal &goal, boost::function<void (const actionlib::SimpleClientGoalState &state, const action_communication::AddIntsResultConstPtr &result)> done_cb, 
    boost::function<void ()> active_cb, 
    boost::function<void (const action_communication::AddIntsFeedbackConstPtr &feedback)> feedback_cb)
    */
    client.sendGoal(goal, &done_cb, &active_cb, &feedback_cb);
    ros::spin();
    return 0;
}

void done_cb(const actionlib::SimpleClientGoalState &state, const action_communication::AddIntsResultConstPtr &result) {
    if (state.state_ == state.SUCCEEDED) {
        ROS_INFO("最终结果：%d", result->result);
    } else {
        ROS_INFO("任务失败！");
    }
}

void active_cb() {
    ROS_INFO("任务已被激活！");
}

void feedback_cb(const action_communication::AddIntsFeedbackConstPtr &feedback) {
    ROS_INFO("当前进度：%.2f", feedback->progress_bar);
}