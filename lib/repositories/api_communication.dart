import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

import '../constant/list.dart';

void sendMessage(msg) async {
  IOWebSocketChannel? channel;

  // We use a try - catch statement, because the connection might fail.
  try {
    // Connect to our backend.
    channel = IOWebSocketChannel.connect('ws://192.168.100.196:3000');
  } catch (e) {
    // If there is any error that might be because you need to use another connection.
    debugPrint("Error on connecting to websocket: $e");
  }
  // Send message to backend
  try {
    channel?.sink.add(msg);

    debugPrint("succesffuly send message");
  } catch (e) {
    debugPrint("Error on sending message to node server: $e");
  }

  // Listen for any message from backend
  channel?.stream.listen(
    (event) {
      debugPrint("waiting answer....");

      // Just making sure it is not empty
      if (event!.isNotEmpty) {
        debugPrint(event);

        // story.add(event);

        backendMessage = event;

        // Now only close the connection and we are done here!
        channel!.sink.close();
      } else {
        debugPrint("sa ne donne pas....");
      }
    },
  );
}
