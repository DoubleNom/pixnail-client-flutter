import 'package:flutter/material.dart';
import 'package:pixnails_flutter/client_manager.dart';
import 'package:pixnails_flutter/constants.dart';
import 'package:pixnails_flutter/widgets/reworked_client.dart';
import 'package:pixnails_flutter/widgets/webview_client.dart';

import 'package:provider/provider.dart';

class ClientWrapper extends StatelessWidget {
  const ClientWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Consumer<ClientManager>(
        builder: (_, _manager, __) => Column(
          children: [
            if (_manager.loaded)
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
                  Expanded(child: Container()),
                  DropdownButton<String>(
                    value: _manager.channel,
                    onChanged: (value) {
                      _manager.channel = value ?? "Doublenom";
                    },
                    items: twitchChannels
                        .map<DropdownMenuItem<String>>(
                            (e) => DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                ))
                        .toList(),
                  ),
                  Expanded(child: Container()),
                  ElevatedButton(
                    onPressed: _manager.toggleOfficial,
                    child: Text(_manager.official ? "Official" : "Reworked"),
                  )
                  // SwitchListTile(
                  //   value: clientManager.official,
                  //   onChanged: (value) => clientManager.official,
                  // )
                ],
              ),
            Expanded(
              child: _manager.official
                  ? WebviewClient(manager: _manager)
                  : ReworkedClient(manager: _manager),
            )
          ],
        ),
      );
}
