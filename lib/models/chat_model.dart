import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModel {
  String foto;
  String nama;
  String chat;
  String waktu;
  Widget iconchat;
  String jumlahChat;

  ChatModel(
      {required this.foto,
      required this.nama,
      required this.chat,
      required this.waktu,
      required this.iconchat,
      required this.jumlahChat});
}

List<ChatModel> chatModel = [
  ChatModel(
    foto: 'assets/profil10.jpg',
    nama: 'Aidan ',
    chat: 'Aidan (Asal Irlandia) yang berarti "Lahir dari api".',
    waktu: 'waktu',
    iconchat: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(360),
        color: Colors.green,
      ),
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Text(
          '1',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    ),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil9.jfif',
    nama: 'Ambrose ',
    chat: ' Ambrose (Asal Inggris) yang berarti "Yang abadi".',
    waktu: 'waktu',
    iconchat: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(360),
        color: Colors.green,
      ),
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Text(
          '1',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    ),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil1.jfif',
    nama: 'Apollo ',
    chat: 'Apollo (Asal Yunani) yang berarti "Dewa Yunani".',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil2.jfif',
    nama: 'Aquila ',
    chat: ' Aquila (Asal Bahasa Inggris) yang berarti "Elang".',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil3.jpg',
    nama: 'Asher ',
    chat: 'Asher (Asal Bahasa Inggris) yang berarti "Kebahagiaan".',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil4.jfif',
    nama: 'Ashton',
    chat: 'chat',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil5.jpg',
    nama: 'Atticus ',
    chat: 'chat',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil6.jpg',
    nama: 'Augustus',
    chat: 'chat',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil7.jpg',
    nama: 'Caleb',
    chat: 'chat',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
  ChatModel(
    foto: 'assets/profil8.jpg',
    nama: 'Craney ',
    chat: 'chat',
    waktu: 'waktu',
    iconchat: Container(),
    jumlahChat: '2',
  ),
];
