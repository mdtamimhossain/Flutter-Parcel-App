import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parcel_deivery_app/widget/bottom_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Track Parcel",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            centerTitle: false,
            floating: true,
            snap: false,
            pinned: true,
            titleSpacing: 0,
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                          "https://miro.medium.com/fit/c/1360/1360/2*NDZrabY3uLA-1MM3K1MexQ.png"),
                    ),
                  ))
            ],
            shadowColor: Colors.transparent,
            expandedHeight: 426,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(16),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                background: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 46),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.values[1],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter parcel number or scan QR code',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Row(children: [
                            Expanded(
                              child: Container(
                                height: 49,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "tracking number",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 49,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Theme.of(context).backgroundColor,
                              ),
                              child: SvgPicture.asset(
                                  "assets/images/icon_qrcode.svg"),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: 49,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.black,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Track Percel",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 33)),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Parcel",
                      style: Theme.of(context).textTheme.headline3,
                    )
                  ]),
            )
          ])),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Container(
                  height: 174,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor,
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        )
                      ]),
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "00359007738060313786",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Container(
                          height: 31,
                          width: 78,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://thumbs.dreamstime.com/b/simple-vector-filled-flat-amazon-icon-logo-solid-black-pictogram-isolated-white-background-amazon-logo-159029074.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'In transit',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Last update: 3 hours ago',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2.5),
                            child: LinearProgressIndicator(
                              value: 0.7,
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              backgroundColor: const Color(0xFFF8F8F8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        SizedBox(
                          width: 60,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Details',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                  SvgPicture.asset(
                                      'assets/images/icon_details.svg')
                                ],
                              ),
                              Container(
                                height: 1,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              );
            },
          ))
        ],
      ),
      bottomNavigationBar: BnavigationBar(),
    );
  }
}
