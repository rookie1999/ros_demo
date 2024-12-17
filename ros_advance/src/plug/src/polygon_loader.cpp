#include <pluginlib/class_loader.h>
#include <plug/polygon_base.h>

int main(int argc, char *argv[])
{
    //类加载器 -- 参数1:基类功能包名称 参数2:基类全限定名称
    pluginlib::ClassLoader<polygon_base::RegularPolygon> poly_loader("plug", "polygon_base::RegularPolygon");

    try {
        // 创建插件实例
        boost::shared_ptr<polygon_base::RegularPolygon> triangle = poly_loader.createInstance("polygon_plugins::Triangle");
        triangle->initialize(10);

        boost::shared_ptr<polygon_base::RegularPolygon> square = poly_loader.createInstance("polygon_plugins::Square");
        square->initialize(20);

        ROS_INFO("The area of the triangle is %.2f", triangle->area());
        ROS_INFO("The area of the square is %.2f", square->area());

    } catch (pluginlib::PluginlibException& ex) {
        ROS_ERROR("The plugin failed to load for some reason. Error: %s", ex.what());
    }
    return 0;
}
