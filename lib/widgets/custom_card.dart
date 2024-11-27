import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';
import 'package:hiring_task/data/card_details.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double height = screenHeight * 0.3;
    final cardDetails = CardDetails();

    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10),
        itemBuilder: (context, index) => Container(
          width: screenWidth * 0.40,
          height:  height * 0.5,
          decoration: BoxDecoration(
              color: AppThemes.lightTheme.colorScheme.surface,
              borderRadius: BorderRadius.circular(9)),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      cardDetails.cardData[index].icon,
                      height: 30,
                      width: 30,
                      color: AppThemes.lightTheme.colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      cardDetails.cardData[index].value,
                      style: AppThemes.lightTheme.textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: AppThemes.lightTheme.colorScheme.onPrimaryContainer,
                  ),
                  child: Center(
                    child: Text(
                      cardDetails.cardData[index].title,
                      style: TextStyle(
                        fontSize: 15,
                        color: AppThemes.lightTheme.colorScheme.primary,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        itemCount: cardDetails.cardData.length,
      ),
    );
  }
}
