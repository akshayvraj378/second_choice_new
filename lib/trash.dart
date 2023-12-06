

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showBlurMenu() {
    final overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;
    overlayEntry = OverlayEntry(builder: (context) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          overlayEntry?.remove();
        },
        child: BlurMenu(
          width: 300,
          height: 300,
          itemHeight: (300 - 32) / 4,
          onSelect: (_) => Future.delayed(
            const Duration(milliseconds: 150),
                () => overlayEntry?.remove(),
          ),
          items: const [
            BlurMenuItem('On Sale', value: 'on_sale', selected: true),
            BlurMenuItem('Created', value: 'created'),
            BlurMenuItem('About Me', value: 'about_me'),
            BlurMenuItem('Liked', value: 'liked'),
          ],
        ),
      );
    });
    overlayState!.insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  PictureCard(
                      onPressed: _showBlurMenu,
                      asset: 'assets/images/profile.jpg',
                      width: 300,
                      height: 300),
                  PictureCard(
                      onPressed: _showBlurMenu,
                      asset: 'assets/images/profile.jpg',
                      width: 300,
                      height: 300),    PictureCard(
                      onPressed: _showBlurMenu,
                      asset: 'assets/images/profile.jpg',
                      width: 300,
                      height: 300),
                  PictureCard(
                      onPressed: _showBlurMenu,
                      asset: 'assets/images/profile.jpg',
                      width: 300,
                      height: 300),
                  PictureCard(
                      onPressed: _showBlurMenu,
                      asset: 'assets/images/profile.jpg',
                      width: 300,
                      height: 300),
                  PictureCard(
                      onPressed: _showBlurMenu,
                      asset: 'assets/images/profile.jpg',
                      width: 300,
                      height: 300),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PictureCard extends StatelessWidget {
  final double width;
  final double height;
  final String asset;
  final VoidCallback onPressed;
  const PictureCard({
    Key? key,
    required this.asset,
    required this.width,
    required this.height,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(asset),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
          ),
          child: Container(),
        ),
      ),
    );
  }
}

class BlurMenu extends StatelessWidget {
  final double width;
  final double height;
  final double itemHeight;
  final List<BlurMenuItem> items;
  final void Function(String value) onSelect;
  const BlurMenu(
      {Key? key,
        required this.items,
        required this.onSelect,
        required this.width,
        required this.height,
        this.itemHeight = 64})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              alignment: Alignment.center,
              color: Colors.black45,
              width: width,
              height: height,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  padding: EdgeInsets.zero,
                  itemExtent: itemHeight,
                  shrinkWrap: true,
                  children: [
                    for (final item in items)
                      ListTile(
                        onTap: () => onSelect(item.value),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        title: item,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlurMenuItem extends StatelessWidget {
  final String text;
  final String value;
  final bool? selected;
  const BlurMenuItem(this.text, {Key? key, required this.value, this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          if (selected == true) const Spacer(),
          if (selected == true)
            const Icon(
              Icons.check,
              color: Colors.white,
            ),
        ],
      ),
    );
  }
}
