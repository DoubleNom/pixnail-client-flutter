import 'package:flutter/material.dart';
import 'package:pixnails_flutter/client_manager.dart';

class ReworkedClient extends StatefulWidget {
  final ClientManager _manager;

  const ReworkedClient({Key? key, required ClientManager manager})
      : _manager = manager,
        super(key: key);

  @override
  State<ReworkedClient> createState() => _ReworkedClientState();
}

class _ReworkedClientState extends State<ReworkedClient> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
