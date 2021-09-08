import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user.dart';

List<User> users = [
  User(
      activeMsg: false,
      message: 'Hello Murad Alemdar',
      name: 'Murad Alemdar',
      photoUrl:
          'https://ellearabia.com/media/cache/article_thumbnail_desktop/files/cms/standalone-content/thumbnail/5c56b0ab80ec1090453701.jpg',
      /*'images/'*/
      time: '7:00'),
  User(
      activeMsg: true,
      message: 'Hello Abdulhey ',
      name: 'Abdulhey',
      photoUrl: 'https://www.hsreat.com/attachments/101-jpg.73248/',
      /*images/Abdulhey.jpg*/
      time: '7:50'),
  User(
      activeMsg: false,
      message: 'Hello Laila',
      name: 'Laila',
      photoUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHLxbZMs9-s9-Z6Fwhm5GqFM0XRm_YZWms8mDrlsJbqOHQ_XgsXkZjbstyvQQLcPaLV_Y&usqp=CAU',
      time: '5:60'),
  User(
      activeMsg: false,
      message: 'Hello Oktay Kaynarca',
      name: 'Oktay Kaynarca',
      photoUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbzNwlGzQgh_DK0JAu4BsFa_VtpSeCngx3mA&usqp=CAU',
      time: '4:57'),
  User(
      activeMsg: false,
      message: 'Hello Hoda Turus',
      name: 'Hoda Turus',
      photoUrl:
          'https://cdn101.adwimg.com/u/180624/forums/jyk3ZxbErpIDIyjmGREzK36nGsaL6FqT.png',
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
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.green[500],
                              child: Icon(
                                Icons.search,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          );
                        }
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(users[index - 1].photoUrl),
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
                            padding: EdgeInsets.fromLTRB(11, 4, 11, 4),
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
                          backgroundImage: NetworkImage(users[index].photoUrl),
                          /*backgroundImage: AssetImage(users[index].photoUrl),*/
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
                              users[index].time,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(users[index].message),
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
