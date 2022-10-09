import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parcel_deivery_app/widget/parcelbox_size.dart';

class SendParcelScreen extends StatelessWidget {
  const SendParcelScreen({Key? key}) : super(key: key);

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
            "parcel size",
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 15,
          ),
          const ParcelBoxSized(
            parcelSize: "small",
            parcelSizedDimention: "Max. 25 kg, 8 x 38 x 64 cm",
            parcelSizedDiscription: "Fits in an envelope",
            parcelsizedImage: 'assets/images/img_parcel_size_small.png',
          ),
          const SizedBox(
            height: 15,
          ),
          const ParcelBoxSized(
            parcelSize: "Medium",
            parcelSizedDimention: "Max. 25 kg, 19 x 38 x 64 cm",
            parcelSizedDiscription: "Fits in a shoe box",
            parcelsizedImage: 'assets/images/img_parcel_size_medium.png',
          ),
          const SizedBox(
            height: 15,
          ),
          const ParcelBoxSized(
            parcelSize: "Large",
            parcelSizedDimention: "Max. 25 kg, 41 x 38 x 64 cm",
            parcelSizedDiscription: "Fits in a cardbourd box",
            parcelsizedImage: 'assets/images/img_parcel_size_large.png',
          ),
          const SizedBox(
            height: 15,
          ),
          const ParcelBoxSized(
            parcelSize: "Custom",
            parcelSizedDimention: "Max: 30kg or 300cm",
            parcelSizedDiscription: "Fits on a skid",
            parcelsizedImage: 'assets/images/img_parcel_size_custom.png',
          )
        ]),
      ),
    );
  }
}
