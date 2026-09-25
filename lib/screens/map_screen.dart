import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class MapScreen extends StatefulWidget {

  const MapScreen({super.key});


  @override
  State<MapScreen> createState()=>_MapScreenState();

}



class _MapScreenState extends State<MapScreen>{


  GoogleMapController? mapController;


  LatLng currentLocation =
      const LatLng(12.9716,77.5946);



  Future<void> getLocation() async {


    Position position =
    await Geolocator.getCurrentPosition();



    setState((){


      currentLocation = LatLng(

        position.latitude,

        position.longitude,

      );


    });



  }



  @override
  void initState(){

    super.initState();

    getLocation();

  }




  @override
  Widget build(BuildContext context){


    return Scaffold(


      appBar:AppBar(

        title:const Text("SafeYatra Map"),

      ),



      body:GoogleMap(


        initialCameraPosition:CameraPosition(


          target:currentLocation,


          zoom:15,


        ),



        myLocationEnabled:true,


        myLocationButtonEnabled:true,


        onMapCreated:(controller){


          mapController=controller;


        },


      ),


    );


  }


}