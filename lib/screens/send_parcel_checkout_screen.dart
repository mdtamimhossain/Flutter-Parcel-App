import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class SendParcelCheckoutScreen extends StatefulWidget {
  const SendParcelCheckoutScreen({Key? key}) : super(key: key);

  @override
  State<SendParcelCheckoutScreen> createState() =>
      _SendParcelCheckoutScreenState();
}

class _SendParcelCheckoutScreenState extends State<SendParcelCheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 25,
          ),
          child: ListView(children: [
            Text(
              "Checkout",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 207,
              width: 327,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 19),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          AssetImage("assets/images/img_card_background.png"))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "****  ****  ****  **** 2843",
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Md Tamim Hossain",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.white),
                        ),
                        Text(
                          "08/24",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ]),
            )
          ]),
        ),
      ),
      bottomSheet: _buildBottomSheet(context),
    );
  }
}

//Bottom part start from here

Widget _buildBottomSheet(context) {
  return Container(
    height: 435,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color.fromARGB(223, 234, 234, 234),
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).shadowColor,
          spreadRadius: 0,
          blurRadius: 4,
          offset: Offset(0, 4),
        )
      ],
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Summary",
                style: Theme.of(context).textTheme.headline3,
              ),
              Column(
                children: [
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
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      SvgPicture.asset("assets/images/icon_details.svg")
                    ],
                  ),
                  Container(
                    height: 1,
                    width: 50,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Recipent",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "md Tamim Hossain",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "hossain@gmail.com",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "01752227406",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Yksg-2 DSC ,Savar,Dhaka",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Parcel Size",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Medium",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Delivary Method",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "From Door to Door",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 48,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.black87),
            child: const Center(
                child: Text(
              "Pay £3,08",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )),
          )
        ],
      ),
    ),
  );
}
