import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';
import 'package:hiring_task/data/project_details.dart';


class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  OverlayEntry? _overlayEntry;
  final int _selectedNumber = 10;
  List<int> numbers = List.generate(10, (index) => index + 1);

  void _showOverlay(BuildContext context) {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.8;
    double containerWidth = screenWidth * 0.89;
    return OverlayEntry(
      builder: (context) => Positioned.fill(
        child: GestureDetector(
          onTap: () {
            _removeOverlay();
          },
          child: Material(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: AppThemes.lightTheme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const Row(
                          children: [Text('Project List')],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: containerHeight * 0.09,
                              width: containerWidth * 0.6,
                              child: const SearchBar(
                                shape: WidgetStatePropertyAll<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9),
                                    ),
                                  ),
                                ),
                                leading: Icon(Icons.search),
                                hintText: 'Search',
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: containerWidth * 0.2,
                              height: containerHeight * 0.09,
                              decoration: BoxDecoration(
                                  color:
                                      AppThemes.lightTheme.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(9)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: DropdownButton<int>(
                                    underline: const SizedBox(),
                                    value: _selectedNumber,
                                    items: numbers.map((int number) {
                                      return DropdownMenuItem<int>(
                                        value: number,
                                        child: Text(number.toString()),
                                      );
                                    }).toList(),
                                    onChanged: (int? newValue) {},
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: containerHeight * 0.03,
                        ),
                        Row(
                          children: [
                            Container(
                              child: _buildDeadlineContainer(context),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildStatus(context),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildFilterButton(),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: AppThemes
                              .lightTheme.colorScheme.onPrimaryContainer,
                        ),
                        _buildProjectList()
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
      child: Container(
        decoration: BoxDecoration(
            color: AppThemes.lightTheme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12)),
        height:screenHeight * 0.05,
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 10),
              const Text('Test Project with Mohsin'),
              const Spacer(),
              Center(
                child: IconButton(
                  onPressed: () {
                    _showOverlay(context);
                  },
                  icon: const Icon(Icons.arrow_drop_down),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDeadlineContainer(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double containerHeight = screenHeight * 0.8;
  double containerWidth = screenWidth * 0.89;
  return Container(
    height: containerHeight * 0.2,
    width: containerWidth * 0.89,
    decoration: BoxDecoration(
      color: AppThemes.lightTheme.colorScheme.surface,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text('Deadline'),
              SizedBox(
                height: containerHeight * 0.04,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppThemes.lightTheme.colorScheme.primary,
                        width: 1)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('Starting Date '),
                    ),
                    SizedBox(
                      width: containerWidth * 0.02,
                    ),
                    const Icon(Icons.calendar_month)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: containerWidth * 0.01,
          ),
          Column(
            children: [
              const Text('Until'),
              SizedBox(
                height: containerHeight * 0.04,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppThemes.lightTheme.colorScheme.primary,
                        width: 1)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('Ending Date '),
                    ),
                    SizedBox(
                      width: containerWidth * 0.02,
                    ),
                    const Icon(Icons.calendar_month)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildStatus(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double containerHeight = screenHeight * 0.8;
  double containerWidth = screenWidth * 0.89;
  return Row(
    children: [
      Text(
        'Status:',
        style: AppThemes.lightTheme.textTheme.labelMedium,
      ),
      const SizedBox(
        width: 5,
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color(0xff53A501),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.9),
          child: Text(
            'Completed',
            style: AppThemes.lightTheme.textTheme.labelSmall,
          ),
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color(0xffFE861F),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.9),
          child: Text(
            'Delayed',
            style: AppThemes.lightTheme.textTheme.labelSmall,
          ),
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color(0xff40C3F4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.9),
          child: Text(
            'On Going',
            style: AppThemes.lightTheme.textTheme.labelSmall,
          ),
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color(0xffE044FF),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.9),
          child: Text(
            'On Hold',
            style: AppThemes.lightTheme.textTheme.labelSmall,
          ),
        ),
      ),
    ],
  );
}

Widget _buildFilterButton() {
  return Container(
    height: 45,
    width: 350,
    decoration: BoxDecoration(
        color: AppThemes.lightTheme.colorScheme.surface,
        borderRadius: BorderRadius.circular(9)),
    child: ElevatedButton(
      onPressed: () {},
      child: const Text("Apply Filter"),
    ),
  );
}

Widget _buildProjectList() {
  final projectDetails = ProjectDetails();
  return Expanded(
      child: ListView.builder(
          itemCount: projectDetails.projectList.length,
          itemBuilder: (context, index) {
            final currentProject = projectDetails.projectList[index];
            return projectDetails.buildProjectCard(currentProject);
          }));
} 