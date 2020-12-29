import 'package:flutter/material.dart';
import 'package:message_app/dashboard/presentation/page/story.dart';

class StorisSingleWidget extends StatefulWidget {
  final String url;

  StorisSingleWidget({
    Key key,
    @required this.url,
  }) : super(key: key);
  @override
  _StorisSingleWidgetState createState() => _StorisSingleWidgetState();
}

class _StorisSingleWidgetState extends State<StorisSingleWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/storyPage');
          },
          child: Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffFF9720),
                ),
                borderRadius: BorderRadius.circular(10000)),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(widget.url),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }
}
