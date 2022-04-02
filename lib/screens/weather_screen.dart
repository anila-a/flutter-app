import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:flutter_dev_case_anila/screens/weather_details_screen.dart';
import 'package:flutter_dev_case_anila/widgets/widgets.dart';
import 'package:flutter_dev_case_anila/utils/helpers/helpers.dart';

/// WEATHER (INITIAL) TAB: DISPLAYS CITY NAME, TEMPERATURE (DETAILED FORECAST ON CLICK) ///

class WeatherTab extends StatefulWidget {
  const WeatherTab({Key? key}) : super(key: key);

  @override
  _WeatherTabState createState() => _WeatherTabState();
}

class _WeatherTabState extends State<WeatherTab> {
  Future<Address>? address; // For a type to allow null, use ?

  @override
  void initState() {
    address = getAddress(); // Initialize model
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Weather'),
        ),
        SliverFillRemaining(
          child: FutureBuilder<Address>(
            future: address,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // If there is data to fetch, display it
                var city = snapshot.data?.city;
                return CupertinoButton(
                  child: Container(
                    height: 450,
                    width: 400,
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: CupertinoColors.systemGrey,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: "10.5°",
                          // Sample temperature: could not find it in API!!
                          size: 45,
                        ),
                        const LargeSizedBox(),
                        const Icon(
                          Icons.wb_sunny,
                          color: CupertinoColors.systemYellow,
                          size: 100,
                        ),
                        const LargeSizedBox(),
                        CustomText(
                          text: '$city', // Display city name
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const WeatherDetails()),
                    );
                  },
                );
              } else {
                // ... otherwise, keep loading
                return const CupertinoActivityIndicator(
                  radius: 16.0,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
