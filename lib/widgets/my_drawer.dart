import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Widget buildDrawerItem({
    required String title,
    required IconData icon,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Icon(icon, color: Colors.white),
        trailing: const Icon(Icons.arrow_drop_down, color: Colors.white),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Drawer(
      backgroundColor: AppThemes.lightTheme.colorScheme.primary,
      child: Column(
        children: [
      
          Container(
            height: screenHeight * 0.2,
            color: AppThemes.lightTheme.colorScheme.secondary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mohsin Faraz',
                      style: Theme.of(context).textTheme.headlineLarge
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Senior Research Associate',
                      style: Theme.of(context).textTheme.titleLarge
                    ),
                  ],
                ),
              ],
            ),
          ),
         
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                buildDrawerItem(
                  title: 'Research',
                  icon: Icons.search,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Team',
                  icon: Icons.group,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Laboratory',
                  icon: Icons.science,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Task',
                  icon: Icons.task,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Data',
                  icon: Icons.data_array,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Discussion',
                  icon: Icons.chat_bubble_outline,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Publish',
                  icon: Icons.send,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Expense',
                  icon: Icons.attach_money,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Settings',
                  icon: Icons.settings,
                  onTap: () {},
                ),
                buildDrawerItem(
                  title: 'Ticketing',
                  icon: Icons.event,
                  onTap: () {},
                ),
                const Spacer(),
                 buildDrawerItem(
                  title: 'Sign Out',
                  icon: Icons.logout_outlined,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
