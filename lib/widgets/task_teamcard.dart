import 'package:flutter/material.dart';

class TaskTeamcard extends StatelessWidget {
  const TaskTeamcard({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: screenHeight * 0.2, 
          child: ListView.builder(
            itemCount: 5, 
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.3, 
                      child: const Text("Design Team"),
                    ),
            
                    Row(
                      children: [
                        CircleAvatar(
                          radius: screenWidth * 0.05, 
                          backgroundImage:
                              const AssetImage('assets/images/creator.png'),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        const Text("Mohsin Far..."),
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: screenWidth * 0.05,
                          backgroundImage:
                              const AssetImage('assets/images/team1.png'),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        CircleAvatar(
                          radius: screenWidth * 0.05,
                          backgroundImage:
                              const AssetImage('assets/images/team2.png'),
                        ),
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.04),
                     const Text("Dec 26, 2023"),
                    
                    SizedBox(width: screenWidth * 0.04),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.02, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: const Text(
                        "On Going",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.edit_outlined),
                        SizedBox(width: 8),
                        Icon(Icons.message_outlined, ),
                        SizedBox(width: 8),
                        Icon(Icons.file_copy_outlined),
                      ],
                    ),
            
                  ],
                ),
                
              );
            },
          ),
        ),
      ),
    );
  }
}
