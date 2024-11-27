import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';

class ProjectListCard extends StatelessWidget {
  const ProjectListCard({super.key});

  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.8,
      width: screenWidth = 0.8,
      decoration: BoxDecoration(
            color: AppThemes.lightTheme.colorScheme.primary, borderRadius: BorderRadius.circular(15)
      ),
      color: AppThemes.lightTheme.colorScheme.primary
      
      ,
    );
  }
}