import 'package:pixnails_flutter/constants.dart';

class Channel {
  final String name;
  final bool panel;

  Channel(this.name, this.panel);

  String get url {
    if(panel) {
      return "$twitchPanelStart$name$twitchPanelEnd";
    } else {
      return "$twitchHome/$name";
    }
  }
}
