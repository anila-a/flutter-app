import 'package:flutter/cupertino.dart';
import 'package:flutter_dev_case_anila/widgets/widgets.dart';

/// CUSTOM WIDGET TO DISPLAY FORECAST DETAILS IN 2-COLUMNS FORMAT ///

Widget detailedForecast(
    String timePoint,
    String cloudCover,
    String seeing,
    String transparency,
    String liftedIndex,
    String rh2m,
    String direction, // ..10mwind
    String speed, // ..10mwind
    String temp2m,
    String precType) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              // Header displays timepoint
              text: 'TIMEPOINT ' + timePoint,
              size: 15,
              fontWeight: FontWeight.w900,
            ),
            const LargeSizedBox(),
          ],
        ),
        Row(
          // This row contains 2 columns
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// LEFT MAIN COLUMN ///
            Column(
              // Left inner column
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(
                  text: 'Cloud Cover:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                SmallSizedBox(),
                CustomText(
                  text: 'Seeing:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                SmallSizedBox(),
                CustomText(
                  text: 'Transparency:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                SmallSizedBox(),
                CustomText(
                  text: 'Lifted Index:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
            Column(
              // Right inner column
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: cloudCover,
                  size: 12,
                ),
                const SmallSizedBox(),
                CustomText(
                  text: seeing,
                  size: 12,
                ),
                const SmallSizedBox(),
                CustomText(
                  text: transparency,
                  size: 12,
                ),
                const SmallSizedBox(),
                CustomText(
                  text: liftedIndex,
                  size: 12,
                ),
              ],
            ),

            /// RIGHT MAIN COLUMN ///
            Column(
              // Left inner column
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(
                  text: '2m Relative Humidity:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                SmallSizedBox(),
                CustomText(
                  text: '10m Wind Speed:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                SmallSizedBox(),
                CustomText(
                  text: '2m Temperature:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                SmallSizedBox(),
                CustomText(
                  text: 'Precipitation Type:',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
            Column(
              // Right inner column
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: rh2m,
                  size: 12,
                ),
                const SmallSizedBox(),
                CustomText(
                  text: direction + '/' + speed,
                  size: 12,
                ),
                const SmallSizedBox(),
                CustomText(
                  text: temp2m + '°C',
                  size: 12,
                ),
                const SmallSizedBox(),
                CustomText(
                  text: precType,
                  size: 12,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
