"""
This script is adapted from the FAST_LIO repository.

@adapted_from: HKU MARS Lab, "FAST_LIO," GitHub repository,
               https://github.com/hku-mars/FAST_LIO, accessed: Oct. 12, 2024.
"""

import os.path

from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, ExecuteProcess
from launch.substitutions import LaunchConfiguration, PathJoinSubstitution
from launch.conditions import IfCondition

from launch_ros.actions import Node


def generate_launch_description():
    state_est_pkg = get_package_share_directory('my_launch_package')
    package_path = get_package_share_directory('fast_lio')
    # default_config_path = os.path.join(package_path, 'config')
    custom_config_path = os.path.join(state_est_pkg, 'config')

    default_rviz_config_path = os.path.join(
        package_path, 'rviz', 'fastlio.rviz')

    use_sim_time = LaunchConfiguration('use_sim_time')
    config_path = LaunchConfiguration('config_path')
    config_file = LaunchConfiguration('config_file')
    rviz_use = LaunchConfiguration('rviz')
    rviz_cfg = LaunchConfiguration('rviz_cfg')

    declare_use_sim_time_cmd = DeclareLaunchArgument(
        'use_sim_time', default_value='false',
        description='Use simulation (Gazebo) clock if true'
    )
    # declare_config_path_cmd = DeclareLaunchArgument(
    #     'config_path', default_value=default_config_path,
    #     description='Yaml config file path'
    # )
    declare_config_path_cmd = DeclareLaunchArgument(
        'config_path', default_value=custom_config_path,
        description='Yaml config file path'
    )
    decalre_config_file_cmd = DeclareLaunchArgument(
        'config_file', default_value='mid360.yaml',
        description='Config file'
    )
    declare_rviz_cmd = DeclareLaunchArgument(
        'rviz', default_value='true',
        description='Use RViz to monitor results'
    )
    declare_rviz_config_path_cmd = DeclareLaunchArgument(
        'rviz_cfg', default_value=default_rviz_config_path,
        description='RViz config file path'
    )

    fast_lio_node = Node(
        package='fast_lio',
        executable='fastlio_mapping',
        parameters=[PathJoinSubstitution([config_path, config_file]),
                    {'use_sim_time': use_sim_time}],
        output='screen',
        remappings=[
            ('/Odometry', '/odom_FAST_LIO'),
        ]
    )
    rviz_node = Node(
        package='rviz2',
        executable='rviz2',
        arguments=['-d', rviz_cfg],
        condition=IfCondition(rviz_use)
    )

    # No need to launch MID360 lidar here
    # custom_lidar_msg_execute = ExecuteProcess(
    #     name='execute_ros_bridge',
    #     cmd=['ros2', 'launch', 'sensors', 'custom_msg_MID360_launch.py'],
    #     output='screen',
    #     shell='True'
    #     )

    ld = LaunchDescription()
    ld.add_action(declare_use_sim_time_cmd)
    ld.add_action(declare_config_path_cmd)
    ld.add_action(decalre_config_file_cmd)
    ld.add_action(declare_rviz_cmd)
    ld.add_action(declare_rviz_config_path_cmd)

    ld.add_action(fast_lio_node)
    ld.add_action(rviz_node)
    # ld.add_action(custom_lidar_msg_execute)

    return ld
