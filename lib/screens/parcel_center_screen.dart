import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcel_deivery_app/src/locations.dart' as locations;
import 'package:parcel_deivery_app/widget/parcel_box_office.dart';

class ParcelCenterScreen extends StatefulWidget {
  const ParcelCenterScreen({Key? key}) : super(key: key);

  @override
  State<ParcelCenterScreen> createState() => _ParcelCenterScreenState();
}

class _ParcelCenterScreenState extends State<ParcelCenterScreen> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 15,
          left: 25,
          right: 25,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Parcel Center",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 221,
              width: 327,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(0, 0),
                  zoom: 2,
                ),
                markers: _markers.values.toSet(),
              ),
            ),
            ParcelBoxOffice(),
            ParcelBoxOffice()
          ]),
        ),
      ),
    );
  }
}
