import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Expanded(
        child: Card(
          color: AppThemes.lightTheme.colorScheme.onPrimaryContainer,
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Project Update',
                      style: AppThemes.lightTheme.textTheme.headlineSmall,
                    ),
                  ),
                  Text(
                    'Mark All Read',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        backgroundColor:
                            AppThemes.lightTheme.colorScheme.primary),
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
              if (isExpanded)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Update',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                size: 20,
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: AppThemes.lightTheme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115 /LHR’s temperature in the morning and it was 98 degrees Fahrenheit.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppThemes.lightTheme.colorScheme.primary,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today,
                                  color: Colors.white, size: 16),
                              SizedBox(width: 8),
                              Text(
                                'Mon, 10 July 2022',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.84,
                      child: SearchBar(
                        trailing: [
                          const Icon(Icons.search),
                          VerticalDivider(
                            color: AppThemes.lightTheme.colorScheme.primary,
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                        hintText: 'To ensure your health safety...',
                        shape: const WidgetStatePropertyAll<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
