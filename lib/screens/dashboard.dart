import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';
import 'package:hiring_task/widgets/custom_card.dart';
import 'package:hiring_task/widgets/header_widget.dart';

import 'package:hiring_task/widgets/my_drawer.dart';
import 'package:hiring_task/widgets/project_card.dart';
import 'package:hiring_task/widgets/task_quickview.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight * 0.3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemes.lightTheme.colorScheme.primary,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
       
          Container(
            height: height,
            decoration: BoxDecoration(
              color: AppThemes.lightTheme.colorScheme.primary,
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: HeaderWidget(),
                ),
                SizedBox(height: 15),
                CustomCard(),
              ],
            ),
          ),

          const SizedBox(height: 10),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProjectCard(),
                  SizedBox(height: 10),
                 TaskQuickview()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
