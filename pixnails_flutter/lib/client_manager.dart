import 'package:flutter/cupertino.dart';
import 'package:pixnails_flutter/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ClientManager extends ChangeNotifier {
  Channel _channel = defaultChannel;
  String get channel => _channel;
  set channel(String value){
    _channel = value;
    _preferences.setString(prefChannelKey, value);
    notifyListeners();
  }

  bool _loaded = true;
  bool get loaded => _loaded;

  bool _official = true;
  bool get official => _official;
  set official(bool value){
    _official = value;
    notifyListeners();
  }
  void toggleOfficial() {
    _official = !_official;
    notifyListeners();
  }

  String _webviewUrl = twitchLogin;
  String get webviewUrl => _webviewUrl;
  late WebViewController webviewController;

  late SharedPreferences _preferences;

  void init() async {
    _preferences = await SharedPreferences.getInstance();
    _channel = _preferences.getString(prefChannelKey) ?? defaultChannel;
    notifyListeners();
  }

}