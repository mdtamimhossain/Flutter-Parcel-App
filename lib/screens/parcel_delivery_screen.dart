import 'package:flutter/material.dart';

import '../widget/parcel_delivary_method.dart';

class ParcelDelivaryScreen extends StatelessWidget {
  const ParcelDelivaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          bottom: 15,
          left: 25,
          right: 25,
        ),
        child: ListView(children: [
          Text(
            "Send Parcel",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            "Delivary Method",
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 15,
          ),
          const ParcelDeliverymethod(
            delivaryDuration: "1-2 days",
            parcelDeliveryMethod: "From door to parcel center",
            delivaryImage: "assets/images/img_door_to_parcel.png",
          ),
          const SizedBox(
            height: 5,
          ),
          const ParcelDeliverymethod(
            delivaryDuration: "2-3 days",
            parcelDeliveryMethod: "From door to door",
            delivaryImage: "assets/images/img_door_to_door.png",
          )
        ]),
      ),
    );
  }
}
