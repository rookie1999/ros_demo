// pluginlib宏，可以注册插件类
#include <pluginlib/class_list_macros.h>
#include <plug/polygon_base.h>
#include <plug/polygon_plugins.h>


// 参数1，衍生基类
// 参数2，基类
PLUGINLIB_EXPORT_CLASS(polygon_plugins::Triangle, polygon_base::RegularPolygon)
PLUGINLIB_EXPORT_CLASS(polygon_plugins::Square, polygon_base::RegularPolygon)