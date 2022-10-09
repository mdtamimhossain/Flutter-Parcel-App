import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcel_deivery_app/src/locations.dart' as locations;
import 'package:parcel_deivery_app/widget/detailpage_details_box.dart';

class Buildsheet extends StatefulWidget {
  const Buildsheet({Key? key}) : super(key: key);

  @override
  State<Buildsheet> createState() => _BuildsheetState();
}

class _BuildsheetState extends State<Buildsheet> {
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, bottom: 90, left: 20, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Details",
                  style: Theme.of(context).textTheme.headline2,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.cancel))
              ],
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "00359007738060313786",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Container(
                        height: 31,
                        width: 78,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/simple-vector-filled-flat-amazon-icon-logo-solid-black-pictogram-isolated-white-background-amazon-logo-159029074.jpg"))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "In transit",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Last update: 3 hours ago",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.5),
                          child: LinearProgressIndicator(
                              value: .7,
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              backgroundColor: const Color(0xFFF8F8F8)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(0, 0),
                  zoom: 2,
                ),
                markers: _markers.values.toSet(),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const DetailsBox(
                event: "Parcel In transit",
                eventDate: "20.09.22",
                eventTime: "16.20"),
            const SizedBox(
              height: 7,
            ),
            const DetailsBox(
                event: "Parcel handed over to the courier.",
                eventDate: "20.09.22",
                eventTime: "15.20"),
            const SizedBox(
              height: 7,
            ),
            const DetailsBox(
                event: "Parcel prepared - not yet handed over to the\ncourier.",
                eventDate: "20.09.22",
                eventTime: "13.20"),
          ]),
        ),
      ],
    );
  }
}
