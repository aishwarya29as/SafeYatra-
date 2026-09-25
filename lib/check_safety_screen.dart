import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class CheckSafetyScreen extends StatefulWidget {
  const CheckSafetyScreen({super.key});

  @override
  State<CheckSafetyScreen> createState() => _CheckSafetyScreenState();
}

class _CheckSafetyScreenState extends State<CheckSafetyScreen> {
  String status = "Checking...";
  double? latitude;
  double? longitude;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      setState(() {
        status = "Please turn on Location.";
      });
      return;
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        status = "Location Permission Permanently Denied";
      });
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    latitude = position.latitude;
    longitude = position.longitude;

    // --------- Yelahanka Demo Logic ----------
    if (latitude! >= 13.09 &&
        latitude! <= 13.14 &&
        longitude! >= 77.56 &&
        longitude! <= 77.62) {
      status = "🟢 SAFE AREA";
    } else {
      status = "🔴 UNSAFE AREA";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check My Safety"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                size: 80,
                color: Colors.red,
              ),
              const SizedBox(height: 20),

              Text(
                status,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Text(
                "Latitude : ${latitude ?? '--'}",
                style: const TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 10),

              Text(
                "Longitude : ${longitude ?? '--'}",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}