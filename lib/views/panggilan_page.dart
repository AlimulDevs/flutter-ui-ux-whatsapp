import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PanggilanPage extends StatelessWidget {
  const PanggilanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
            padding: EdgeInsets.only(left: 10, top: 16, right: 25),
            shrinkWrap: true,
            itemCount: 12,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 73,
                child: Row(
                  children: [
                    Container(
                      height: 51,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        image: DecorationImage(
                          image: AssetImage('assets/profil.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jane Cooper',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'February 11, 23:17',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Image.asset(
                      'assets/telpon_icon.png',
                      width: 21,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
