import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class AgoraTest extends StatefulWidget {
  const AgoraTest({super.key});

  @override
  State<AgoraTest> createState() => _AgoraTestState();
}

class _AgoraTestState extends State<AgoraTest> {
  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  void dispose() async {
    // await client.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(
              client: client,
            ),
            AgoraVideoButtons(
              client: client,
            ),
          ],
        ),
      ),
    );
  }
}

// Instantiate the client
final AgoraClient client = AgoraClient(
  agoraConnectionData: AgoraConnectionData(
    appId: "ea86ae45acc044a2953d58755f3a289e",
    channelName: "test",
  ),
);
