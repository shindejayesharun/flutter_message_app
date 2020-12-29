import 'package:flutter/material.dart';

class MessageCardWidget extends StatefulWidget {
  final String url, name, message, notification, time;

  MessageCardWidget({
    Key key,
    @required this.url,
    @required this.name,
    @required this.message,
    this.notification,
    this.time,
  }) : super(key: key);
  @override
  _MessageCardWidgetState createState() => _MessageCardWidgetState();
}

class _MessageCardWidgetState extends State<MessageCardWidget> {
  @override
  Widget build(BuildContext context) {
    final double dWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffF8FAFE),
      ),
      margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
      width: dWidth - 32,
      height: 100,
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage(
                widget.url,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Color(0xff1E324A),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      widget.message,
                      style: TextStyle(
                        color: Color(0xff1E324A),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          widget.notification != null
              ? Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(
                      0xff1EBC19,
                    ),
                  ),
                  child: Text(
                    widget.notification,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(right: 16),
                  child: Text(widget.time),
                ),
        ],
      ),
    );
  }
}
