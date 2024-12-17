> 文档：http://www.autolabor.com.cn/book/ROSTutorials/index.html  <br>
> 视频：https://www.bilibili.com/video/BV1Ci4y1L7ZZ/ <br>
> ros一键安装: https://fishros.org.cn/forum/topic/20/%E5%B0%8F%E9%B1%BC%E7%9A%84%E4%B8%80%E9%94%AE%E5%AE%89%E8%A3%85%E7%B3%BB%E5%88%97

ROS demo 代码

### 文件说明
```
-- urdf_demo                    对应第六章
    -- src                      
        -- urdf_simulatioon     urdf和rviz演示代码，对应6.3-6.5
            -- config           
                *.rviz                              rviz的配置文件
                arbotix.control.yaml                arbotix控制机器人运动的配置文件
            -- launch      
                    demo01.launch
                    demo02.launch
                    demo03.launch
                    demo05_use_urdf.launch                
                    demo05_use_xacro.launch
                    demo06_car.launch
                    demo07_arbotix_control.launch
            -- meshes           
            -- urdf             
                -- urdf
                    demo01_robot.urdf               urdf link标签
                    demo02_joint.urdf               urdf joint标签
                    demo03_car.urdf                 用urdf建模一个car
                    demo04_robot_from_xacro.urdf    由demo04_robot.urdf.xacro生成
                    demo05_car_from_xacro.urdf      由demo05_car.urdf.xacro生成
                -- xacro
                    demo04_robot.urdf.xacro         xacro代码演示
                    demo05_car.urdf.xacro           用xacro对demo03_car.urdf中重复代码抽取成xacro宏
                    demo06_camera.urdf.xacro        用xacro实现camera
                    demo06_laser.urdf.xacro         用xacro实现laser
                    demo06_main.urdf.xacro          集成base、camera、laser
        -- urdf_gazebo          gazebo仿真演示代码，对应6.6-6.7
            -- config
                box_house.world                     gazebo加载的环境配置文件
                demo03_world                        使用gazebo的拖拽功能生成的环境配置文件
                *.rviz                              rviz的配置文件
            -- launch
                demo01.launch
                demo02.launch
                demo03.launch
                demo04_gazebo.launch                
                demo04_rviz_camera.launch           这几个demo04_rviz_*.launch是为了加载不同的config文件
                demo04_rviz_control.launch          这些config在rviz添加了不同的组件，用以显示传感器信息
                demo04_rviz_depth_camera.launch
                demo04_rviz_laser.launch       
            -- meshes
            -- urdf
                -- urdf
                    demo01_robot.urdf
                -- xacro
                    demo02_base.urdf.xacro
                    demo02_camera.urdf.xacro        camera对应的urdf的xacro实现
                    demo02_car.urdf.xacro
                    demo02_inertial.urdf.xacro      gazebo环境需要设置物体的惯性属性
                    demo02_laser.urdf.xacro
                    demo04_camera.urdf.xacro        camera传感器信息配置
                    demo04_car_contorl.urdf.xacro   运动控制传感器信息配置（odom）
                    demo04_control.urdf.xacro       集成其他几个demo04*.xacro文件
                    demo04_depth_camera.urdf.xacro
                    demo04_laser.urdf.xacro

-- navigation                   对应第七章
     -- src                      
        -- nav                  导航代码演示
            -- config     
                box_house.world
                *.rviz      
            -- launch         
                demo01_gmapping.launch          slam建图
                demo02_map_saver.launch         保存建图生成的map文件
                demo02_map_server.launch        读取磁盘上的map文件
                demo03_amcl.launch              amcl定位
                demo03_run.launch               
                demo04_move_base.launch         move_base路径规划
                demo04_run.launch
                demo05_slam.launch              自主建图（gmapping建图+move_base路径规划）
                demo06_depth2laser.launch       深度相机数据转laser
                demo06_env.launch               环境
                demo06_run.launch
                env.launch                      demo01-05环境
            -- map  demo02_map_saver生成的map文件
            -- param      move_base使用的配置文件     
            -- urdf             
                -- xacro
                    demo02_base.urdf.xacro
                    demo02_camera.urdf.xacro
                    demo02_inertial.urdf.xacro
                    demo02_laser.urdf.xacro
                    demo04_camera.urdf.xacro
                    demo04_car_control.urdf.xacro
                    demo04_control.urdf.xacro
                    demo04_depth_camera.urdf.xacro
                    demo04_laser.urdf.xacro
                    demo06_car.urdf.xacro
    -- ros_advance              对应第十章
        -- action_communication     action通信
        -- dynamic_param            动态参数
        -- plug                     pluginlib案例
        -- demo04_nodelet           nodelet案例和实现
```