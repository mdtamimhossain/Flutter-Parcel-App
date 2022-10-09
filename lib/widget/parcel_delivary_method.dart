import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class ParcelDeliverymethod extends StatelessWidget {
  const ParcelDeliverymethod(
      {Key? key,
      required this.parcelDeliveryMethod,
      required this.delivaryDuration,
      required this.delivaryImage})
      : super(key: key);
  final String parcelDeliveryMethod, delivaryDuration, delivaryImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        trailing: const SizedBox.shrink(),
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(delivaryImage))),
            ),
            const SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  parcelDeliveryMethod,
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 8),
                Text(
                  delivaryDuration,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            )
          ],
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            color: Color.fromARGB(255, 43, 38, 38),
          ),
          const SizedBox(
            height: 15,
          ),
          _buldExpansionChild(context)
        ],
      ),
    );
  }

  Widget _buldExpansionChild(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Recipient Info",
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              width: 5,
            ),
            Text(
              "Name",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
        Container(
          height: 41,
          width: 269,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey, width: 1.5)),
          child: TextField(
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              width: 5,
            ),
            Text(
              "Email",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
        Container(
          height: 41,
          width: 269,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey, width: 1.5),
          ),
          child: TextField(
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              width: 5,
            ),
            Text(
              "Phone Number",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
        Container(
          height: 41,
          width: 269,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey, width: 1.5)),
          child: TextField(
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              width: 5,
            ),
            Text(
              "Address ",
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
        Container(
          height: 41,
          width: 269,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey, width: 1.5)),
          child: TextField(
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 25,
            width: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 2,
                    width: 5,
                  ),
                  const Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SvgPicture.asset("assets/images/icon_details.svg")
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}
