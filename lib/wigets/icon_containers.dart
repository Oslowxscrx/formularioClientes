import 'package:flutter/material.dart';

class IconContainers extends StatelessWidget {
  final String url;
  const IconContainers({key, required this.url})
      // ignore: unnecessary_null_comparison
      : assert(url != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: CircleAvatar(
        radius: 100.0,
        backgroundColor: Colors.transparent,
        // ignore: unnecessary_this
        backgroundImage: AssetImage(this.url),
      ),
    );
  }
}
