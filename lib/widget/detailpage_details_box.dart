import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsBox extends StatelessWidget {
  final String event, eventDate, eventTime;
  const DetailsBox(
      {Key? key,
      required this.event,
      required this.eventDate,
      required this.eventTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 251, 198, 5),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(Icons.fire_truck),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event,
              style:
                  Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              eventDate + "-" + eventTime,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.black54, fontSize: 12),
            ),
          ],
        )
      ]),
    );
  }
}
