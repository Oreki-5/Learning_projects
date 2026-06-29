import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:weather_api_app/const.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherFactory _wf = WeatherFactory("key here");

  Weather? _weather;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _wf.currentWeatherByCityName("Mumbai").then((w) {
      setState(() {
        _weather = w;
        print(_weather);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyUI(),
    backgroundColor:Color.fromARGB(255, 151, 151, 151),);
  }

  Widget _bodyUI() {
    if (_weather == null) {
      return Center(child: CircularProgressIndicator());
    }
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _locationHeader(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          _dataTimeInfo(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          _weatherIcon(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          _currentTemp(),
        ],
      ),
    );
  }

  Widget _locationHeader() {
    return Text(
      _weather?.areaName ?? "",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }

  Widget _dataTimeInfo() {
    DateTime now = _weather!.date!;
    return Column(
      children: [
        Text(
          DateFormat("h:mm a").format(now),
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              DateFormat("EEEE").format(now),
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(
              "  ${DateFormat("d.mm.y").format(now)}",
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }

  Widget _weatherIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height*0.20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "http://openweathermap.org/img/wn/${_weather?.weatherIcon}@4x.png",
              ),
            ),
          ),
        ),
        Text("${_weather?.weatherDescription??""}",
        style: TextStyle(
          fontSize: 20
        ),)
      ],
    );
  }

  Widget _currentTemp(){
    return Text("${_weather?.temperature?.celsius?.toStringAsFixed(0)}°C",
    style: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold
    ),);
  }
}
