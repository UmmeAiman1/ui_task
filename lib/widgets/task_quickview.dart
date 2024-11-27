import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';
import 'package:hiring_task/widgets/task_heading.dart';
import 'package:hiring_task/widgets/task_teamcard.dart';

class TaskQuickview extends StatefulWidget {
  const TaskQuickview({super.key});

  @override
  State<TaskQuickview> createState() => _TaskQuickviewState();
}

class _TaskQuickviewState extends State<TaskQuickview> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        color: AppThemes.lightTheme.colorScheme.onPrimaryContainer,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.03), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tasks Quick View',
                    style: AppThemes.lightTheme.textTheme.headlineSmall,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_drop_down),
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (isExpanded)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const HeadingRow(title: 'Team Name'),
                        SizedBox(width: screenWidth * 0.1),
                        const HeadingRow(title: 'Creator'),
                        SizedBox(width: screenWidth * 0.2),
                        const HeadingRow(title: 'Assigned To'),
                        SizedBox(width: screenWidth * 0.05),
                        const HeadingRow(title: 'Deadline'),
                        SizedBox(width: screenWidth * 0.05),
                        const HeadingRow(title: 'Status'),
                        SizedBox(width: screenWidth * 0.05),
                        const HeadingRow(title: 'Action', showIcons: false),
                      ],
                    ),
                  ),
                  const Divider(),
                 
                  Container(
                    decoration: BoxDecoration(
                      color: AppThemes.lightTheme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const TaskTeamcard(),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
