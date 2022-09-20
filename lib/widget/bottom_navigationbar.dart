import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BnavigationBar extends StatefulWidget {
  const BnavigationBar({Key? key}) : super(key: key);

  @override
  State<BnavigationBar> createState() => _BnavigationBarState();
}

class _BnavigationBarState extends State<BnavigationBar> {
  int _selectedIndex = 0;
  void _indexSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 13,
      unselectedFontSize: 13,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? SvgPicture.asset("assets/images/icon_my_parcels.svg")
              : SvgPicture.asset("assets/images/icon_my_parcels_grey.svg"),
          label: "My Parcels",
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? SvgPicture.asset("assets/images/icon_send_parcel.svg")
              : SvgPicture.asset("assets/images/icon_send_parcel_grey.svg"),
          label: "Send Parcel",
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? SvgPicture.asset("assets/images/icon_parcel_center.svg")
              : SvgPicture.asset("assets/images/icon_parcels_center_grey.svg"),
          label: "Parcel Center",
        ),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: _indexSelect,
    );
  }
}
