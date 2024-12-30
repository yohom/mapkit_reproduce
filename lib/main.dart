import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            MapKitView(),
            Positioned(
              right: 0,
              bottom: 32,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Press me, move the map, then map will freezed'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MapKitView extends StatelessWidget {
  const MapKitView({super.key});

  @override
  Widget build(BuildContext context) {
    const String viewType = 'map_view';

    return UiKitView(viewType: viewType);
  }
}
