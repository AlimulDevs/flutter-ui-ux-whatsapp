import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/views/chat_item.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatList();
  }
}

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          shrinkWrap: true,
          itemCount: chatModel.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 52,
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                      height: 52,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 117, 109, 109),
                        borderRadius: BorderRadius.circular(360),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(chatModel[index].foto),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ChatItem(
                            img: chatModel[index].foto,
                            nama: chatModel[index].nama,
                          );
                        }));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatModel[index].nama,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            chatModel[index].chat,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        chatModel[index].waktu,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        child: chatModel[index].iconchat,
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
