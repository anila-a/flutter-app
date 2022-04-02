import 'package:flutter/cupertino.dart';
import 'package:flutter_dev_case_anila/config/palette.dart';
import 'package:flutter_dev_case_anila/widgets/widgets.dart';

/// DISPLAYS RESUME ///

class ResumeTab extends StatelessWidget {
  const ResumeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text("Resume"),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            // Alternatively, create separate widgets for header and body text
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(
                  text: "Anila Hoxha",
                  size: 24,
                ),
                const MediumSizedBox(),
                const CustomText(
                  text: "hxh.anila@gmail.com | (+49) 1522 3843180",
                  color: CustomColors.customGrey,
                ),
                const CustomText(
                  text: "linkedin.com/in/anila-hoxha | github.com/anila-a",
                  color: CustomColors.customGrey,
                ),
                const LargeSizedBox(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomText(
                        text: "EDUCATION",
                        fontWeight: FontWeight.w900,
                      ),
                      MediumSizedBox(),
                      CustomText(
                        text: "October 2021 - Present",
                        color: CustomColors.customBlue,
                      ),
                      CustomText(
                        text: "Universität Passau - Passau, Germany\n"
                            "M.Sc. Computer Science",
                      ),
                      MediumSizedBox(),
                      CustomText(
                        text: "October 2018 - August 2021",
                        color: CustomColors.customBlue,
                      ),
                      CustomText(
                        text: "Epoka University - Tirana, Albania\n"
                            "B.Sc. Computer Engineering, GPA: 3.78/4.00\n"
                            "   -   Graduated with High Honors\n"
                            "   -   Language of Instruction: English\n"
                            "   -   75% scholarship",
                      ),
                      MediumSizedBox(),
                      CustomText(
                        text: "September 2015 - June 2018",
                        color: CustomColors.customBlue,
                      ),
                      CustomText(
                        text: "Turgut Özal College - Durrës, Albania\n"
                            "AVG: 9.81/10.00\n"
                            "   -   Language of instruction: English\n"
                            "   -   80% scholarship",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
