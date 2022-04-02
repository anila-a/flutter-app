import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev_case_anila/screens/screens.dart';

class AppinioApp extends StatelessWidget {
  const AppinioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Limit orientations to portrait up/down
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: AppinioHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppinioHomePage extends StatelessWidget {
  const AppinioHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          // Two tabs: Weather and Resume
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cloud_sun_rain),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            label: 'Resume',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView
            finalValue; // Switch tab contents based on index
        switch (index) {
          case 0:
            finalValue = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: WeatherTab(), // change here
                );
              },
            );
            break;
          case 1:
            finalValue = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                  child: ResumeTab(),
                );
              },
            );
            break;
        }
        return finalValue;
      },
    );
  }
}
