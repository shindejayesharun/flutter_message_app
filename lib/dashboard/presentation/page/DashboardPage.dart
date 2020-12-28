import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      body: SafeArea(
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
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=644&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1504593811423-6dd665756598?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1336&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1543080853-556086153871?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1569124589354-615739ae007b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1523264939339-c89f9dadde2e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1475021200099-fd2cbb889dd1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                        ),
                        StorisSingleWidget(
                          url:
                              "https://images.unsplash.com/photo-1456327102063-fb5054efe647?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                  Container(
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
                          width: 8,
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 90,
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Smith Marthen",
                                      style: TextStyle(
                                        color: Color(0xff1E324A),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Hey, I am Smith Marthen",
                                  style: TextStyle(
                                    color: Color(0xff1E324A),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.ac_unit)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
