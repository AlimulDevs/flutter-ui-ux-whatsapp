import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatItem extends StatelessWidget {
  ChatItem({Key? key, required this.img, required this.nama}) : super(key: key);

  var img;
  var nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008069),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            SizedBox(
              width: 8,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(img),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              nama,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 19,
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/bg2_foto.jpg',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SizedBox()),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 41,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(Icons.mood),
                        // suffixIcon: Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     children: [
                        //       Icon(Icons.attachment),
                        //       SizedBox(
                        //         width: 7,
                        //       ),
                        //       Icon(Icons.loyalty),
                        //       SizedBox(
                        //         width: 7,
                        //       ),
                        //       Icon(Icons.photo_camera),
                        //     ],
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff008069),
                  child: Icon(Icons.mic),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
