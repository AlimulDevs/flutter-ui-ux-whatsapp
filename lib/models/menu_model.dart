import 'package:flutter/cupertino.dart';

class MenuModel {
  String menuText;
  String icon;

  MenuModel({required this.menuText, required this.icon});
}

List<MenuModel> menuModel = [
  MenuModel(menuText: 'Photo', icon: 'assets/image_icon.png'),
  MenuModel(menuText: 'Video', icon: 'assets/image_icon.png'),
  MenuModel(menuText: 'Links', icon: 'assets/camera_icon.png'),
  MenuModel(menuText: 'GIFs', icon: 'assets/gif_icon.png'),
  MenuModel(menuText: 'Audios', icon: 'assets/audio_icon.png'),
  MenuModel(menuText: 'document', icon: 'assets/document_icon.png'),
];
