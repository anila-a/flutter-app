import 'package:flutter/cupertino.dart';
import 'package:geocode/geocode.dart';
import 'package:flutter_dev_case_anila/utils/services/weather_api.dart';
import 'package:flutter_dev_case_anila/models/weather_model.dart';
import 'package:flutter_dev_case_anila/widgets/detailed_forecast.dart';
import 'package:flutter_dev_case_anila/utils/helpers/helpers.dart';

/// DETAILED FORECAST ///
/// Note: Not sure what was meant by 'timepoint', so I displayed all data in a list ///

class WeatherDetails extends StatefulWidget {
  const WeatherDetails({Key? key}) : super(key: key);

  @override
  _WeatherDetailsState createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  Future<Address>? address;
  Future<WeatherModel>? weatherModel;

  @override
  void initState() {
    address = getAddress();
    weatherModel = WeatherAPI().getWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        FutureBuilder<Address>(
          future: address,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // If there is data to fetch, display it
              var city = snapshot.data?.city;
              return CupertinoSliverNavigationBar(
                largeTitle: Text('$city'),
              );
            } else {
              return const CupertinoSliverNavigationBar(
                largeTitle: Text('City Not Found'),
              );
            }
          },
        ),
        SliverFillRemaining(
          child: FutureBuilder<WeatherModel>(
            future: weatherModel,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    // Suitable when fetching a # of data from API
                    itemCount: snapshot.data!.dataseries?.length, // # of data
                    itemBuilder: (context, index) {
                      var weather = snapshot.data?.dataseries![index];
                      var values = ValuesConversion();
                      // CALL TO TRANSFORM ACCORDING TO API OUTPUT VALUE DEFINITIONS
                      String cCover =
                          values.cloudCoverOutput('${weather?.cloudcover}');
                      String seeing = values.seeingOutput('${weather?.seeing}');
                      String transparency =
                          values.transparencyOutput('${weather?.transparency}');
                      String lIndex =
                          values.liftedIndexOutput('${weather?.liftedIndex}');
                      String rHumidity = values.rh2mOutput('${weather?.rh2m}');
                      String speed =
                          values.speedOutput('${weather?.wind10m?.speed}');
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 8.0, right: 18.0, bottom: 8.0),
                        child: Container(
                          height: 150,
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
                              detailedForecast(
                                '${weather?.timepoint}',
                                cCover,
                                seeing,
                                transparency,
                                lIndex,
                                rHumidity,
                                '${weather?.wind10m?.direction}',
                                speed,
                                '${weather?.temp2m}',
                                '${weather?.precType}',
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              } else {
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
