import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/menu_model.dart';
import 'package:whatsapp/views/chat_page.dart';
import 'package:whatsapp/views/foto_page.dart';
import 'package:whatsapp/views/panggilan_page.dart';
import 'package:whatsapp/views/status_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          backgroundColor: Color(0xff008069),
          flexibleSpace: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60, left: 13, right: 13),
                  child: Row(
                    children: [
                      Text(
                        'Whatsapp',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          showGeneralDialog(
                            barrierDismissible: true,
                            barrierColor: Colors.transparent,
                            transitionDuration: Duration(microseconds: 10000),
                            barrierLabel:
                                MaterialLocalizations.of(context).dialogLabel,
                            context: context,
                            pageBuilder: (context, _, __) {
                              return searchSheet();
                            },
                          );
                        },
                        child: Image.asset(
                          'assets/search_icon.png',
                          width: 18,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          showGeneralDialog(
                              barrierDismissible: true,
                              barrierColor: Colors.transparent,
                              transitionDuration: Duration(microseconds: 10000),
                              barrierLabel:
                                  MaterialLocalizations.of(context).dialogLabel,
                              context: context,
                              pageBuilder: (context, index, _) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                    top: 40,
                                    left:
                                        MediaQuery.of(context).size.width * 0.5,
                                    right: 3,
                                    bottom: MediaQuery.of(context).size.height *
                                        0.63,
                                  ),
                                  child: Card(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(top: 12, left: 12),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 1,
                                              offset: Offset(0, 3),
                                            )
                                          ]),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Grup baru',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Siaran baru',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Perangkat tertaut',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Pesan berbintang',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Setelan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Image.asset(
                          'assets/menu_icon.png',
                          width: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FotoPage();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        padding: EdgeInsets.only(top: 12),
                        width: 22,
                        child: Image.asset(
                          'assets/camera_icon.png',
                          width: 27,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 12),
                        child: TabBar(
                          indicatorColor: Colors.white,
                          isScrollable: true,
                          tabs: [
                            Tab(
                              child: Container(
                                width: 90,
                                height: 21,
                                child: Center(
                                  child: Text('Chat'),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 90,
                                height: 21,
                                child: Center(
                                  child: Text('Status'),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 90,
                                height: 21,
                                child: Center(
                                  child: Text('Panggilan'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: TabBarView(
                children: [
                  ChatPage(),
                  StatusPage(),
                  PanggilanPage(),
                ],
              ),
            ),
            Positioned(
              bottom: 12,
              right: 11,
              child: GestureDetector(
                child: Image.asset(
                  'assets/chat_icon.png',
                  width: 70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class searchSheet extends StatelessWidget {
  const searchSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          margin: EdgeInsets.all(0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 60),
                  height: 175,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'assets/back_icon.png',
                              width: 26,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Container(
                              height: 30,
                              child: TextFormField(
                                autofocus: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search... ',
                                    hintStyle: TextStyle(
                                      color: Color(0xff88949B),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          child: GridView.builder(
                              padding: EdgeInsets.only(right: 27, left: 5),
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: menuModel.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 76 / 30,
                                crossAxisCount: 4,
                              ),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(
                                    left: 6,
                                  ),
                                  margin: EdgeInsets.only(left: 6, bottom: 6),
                                  width: 76,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(131, 108, 122, 131),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        menuModel[index].icon,
                                        width: 15,
                                        height: 25,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        menuModel[index].menuText,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff657782),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
