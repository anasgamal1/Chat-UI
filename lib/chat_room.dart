import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user.dart';

List<User> users = [
  User(
      activeMsg: true,
      message: 'Hello ka xa halkabar',
      name: 'Ram Hari',
      photoUrl: '',
      time: '7:00'),
  User(
      activeMsg: false,
      message: 'ko ho aelo',
      name: 'Sham Hari',
      photoUrl: '',
      time: '7:50'),
  User(
      activeMsg: false,
      message: 'Have a good day',
      name: 'Himal Hari',
      photoUrl: '',
      time: '5:60'),
  User(
      activeMsg: false,
      message: 'Hey! whats up man',
      name: 'yubraj Hari',
      photoUrl: '',
      time: '4:57'),
  User(
      activeMsg: false,
      message: 'Anomol send a photo',
      name: 'Anomol Hari',
      photoUrl: '',
      time: '3:14')
];

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> tabs = ["Messages", "Calls", "Group", "Create"];
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chat with \nfriends',
                    style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        if (index == 0) {
                          return CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.green[500],
                            child: Icon(
                              Icons.search,
                              size: 35,
                              color: Colors.white,
                            ),
                          );
                        }
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.green[500],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabs.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.amber,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                tabs[index],
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                            ],
                          );
                        } else if (index == tabs.length - 1) {
                          return Container(
                            padding: EdgeInsets.fromLTRB(15, 4, 15, 4),
                            alignment: Alignment.center,
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green[500],
                              borderRadius: BorderRadius.circular(17),
                            ),
                          );
                        }
                        return Padding(
                          padding: EdgeInsets.all(7),
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 37,
                          //backgroundImage: NetworkImage(users[index].photoUrl),
                        ),
                        title: Row(
                          children: [
                            Text(
                              users[index].name,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '7:00',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text('Hi hello nameste'),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
