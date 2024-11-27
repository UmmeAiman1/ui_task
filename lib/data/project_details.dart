import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';

import 'package:hiring_task/models/project_model.dart';

class ProjectDetails {
  final List<ProjectModel> projectList = [
    ProjectModel(title: 'First Research Project', status: 'On Going'),
    ProjectModel(title: 'First Research Project', status: 'Delayed'),
    ProjectModel(title: 'First Research Project', status: 'Completed'),
    ProjectModel(title: 'First Research Project', status: 'On Going'),
    ProjectModel(title: 'First Research Project', status: 'On Going'),
    ProjectModel(title: 'First Research Project', status: 'On Going'),
    ProjectModel(title: 'First Research Project', status: 'Delayed'),
  ];
  Color _getStatusColor(String status) {
    switch (status) {
      case 'On Going':
        return const Color(0xff40C3F4);
      case 'Delayed':
        return const Color(0xffFE861F);
      case 'Completed':
        return const Color(0xff53A501);
      default:
        return Colors.grey;
    }
  }

  Widget buildProjectCard(ProjectModel project) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text(project.title),
        trailing: Container(
          color: _getStatusColor(project.status),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              project.status,
              style: AppThemes.lightTheme.textTheme.labelSmall,
            ),
          ),
        ),
      ),
    );
  }
}
