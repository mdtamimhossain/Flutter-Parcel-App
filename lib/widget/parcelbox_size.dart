import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ParcelBoxSized extends StatelessWidget {
  const ParcelBoxSized(
      {Key? key,
      required this.parcelSize,
      required this.parcelSizedDimention,
      required this.parcelSizedDiscription,
      required this.parcelsizedImage})
      : super(key: key);
  final String parcelSize,
      parcelSizedDimention,
      parcelSizedDiscription,
      parcelsizedImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            spreadRadius: 4,
            blurRadius: 10,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 99,
              width: 66,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(parcelsizedImage))),
            ),
            const SizedBox(
              width: 60,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  parcelSize,
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 4),
                Text(
                  parcelSizedDimention,
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  parcelSizedDiscription,
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
