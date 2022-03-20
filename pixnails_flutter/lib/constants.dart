import 'package:pixnails_flutter/Model/channel.dart';

const String userAgent =
    "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.4) Gecko/20100101 Firefox/4.0";
const String twitchLogin = "https://www.twitch.tv/login";
const String twitchHome = "https://www.twitch.tv";
const String twitchPanelStart = "https://www.twitch.tv/popout/";
const String twitchPanelEnd =
    "/extensions/39l3u7h2njvvw0vijwldod0ks8wzpz/panel";

Map<Channel, bool> twitchChannels = [
  Channel("Doublenom", true),
  Channel("UselessCorp", false),
  Channel("Mizuki_Okami", false),
  Channel("BritanouilleTV", false),
];

const String defaultChannel = "Doublenom";
const String prefChannelKey = "channel";
