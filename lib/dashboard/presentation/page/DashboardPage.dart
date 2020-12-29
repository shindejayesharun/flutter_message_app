import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:message_app/dashboard/data/list.dart';
import 'package:message_app/dashboard/presentation/widget/messageCardWidget.dart';
import 'package:message_app/dashboard/presentation/widget/storisSingleWidget.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final double dWidth = MediaQuery.of(context).size.width;
    final double dHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffD9E6F8),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: dHeight / 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Messeges",
                        style: TextStyle(
                          color: Color(0xff2F324B),
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                          color: Color(0xff777EAE),
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Groups",
                        style: TextStyle(
                          color: Color(0xff777EAE),
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "chat with friends",
                    style: TextStyle(
                      color: Color(0xff777EAE),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              // TODO: Storis
              Container(
                width: dWidth,
                height: 130,
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Storis",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(
                                0xff262B4A,
                              ),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(
                                0xff767EB1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: dWidth,
                      height: 80,
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: storiesList.length,
                        itemBuilder: (context, index) {
                          return StorisSingleWidget(
                            url: storiesList[index].url,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // TODO: Last Chats
              Container(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Last Chats",
                        style: TextStyle(
                          color: Color(0xff767EB1),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: dWidth,
                      // height: dHeight,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: chatList.length,
                        itemBuilder: (context, index) {
                          return MessageCardWidget(
                            url: chatList[index].profileImage,
                            name: chatList[index].name,
                            message: chatList[index].message,
                            notification: chatList[index].notification,
                            time: chatList[index].time,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
