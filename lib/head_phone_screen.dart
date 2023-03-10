import 'package:flutter/material.dart';
import 'package:headset_connection_event/headset_event.dart';

class HeadPhoneScreen extends StatefulWidget {
  const HeadPhoneScreen({Key? key}) : super(key: key);

  @override
  State<HeadPhoneScreen> createState() => _HeadPhoneScreenState();
}

class _HeadPhoneScreenState extends State<HeadPhoneScreen> {

  final _headsetPlugin = HeadsetEvent();
  HeadsetState? _headsetState;

  @override
  void initState() {
    super.initState();

    ///Request Permissions (Required for Android 12)
    _headsetPlugin.requestPermission();

    /// if headset is plugged
    _headsetPlugin.getCurrentState.then((val) {
      setState(() {
        _headsetState = val;
      });
    });

    /// Detect the moment headset is plugged or unplugged
    _headsetPlugin.setListener((val) {
      setState(() {
        _headsetState = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.headset,
              color: _headsetState == HeadsetState.CONNECT
                  ? Colors.green
                  : Colors.red,
            ),
            Text('State : $_headsetState\n'),
          ],
        ),
      ),
    );
  }
}
