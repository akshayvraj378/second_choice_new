import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        '/page1': (_) => Page1(),
        '/page2': (_) => Page2(),
        '/page3': (_) => Page3(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Main Page Content',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page1');
              },
              child: Text('Go to Page 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Text('Go to Page 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page3');
              },
              child: Text('Go to Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Text('Page 1 Content'),
      ),
      bottomNavigationBar: CustomBottomNavBar(), // Custom bottom navigation bar
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Column(
        children: [
          InkWell(
            child: Text("Item"),
            onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Page4();
        },));
            },
          ),
          Center(
            child: Text('Page 2 Content'),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(), // Custom bottom navigation bar

    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('Page 3 Content'),
      ),
      bottomNavigationBar: CustomBottomNavBar(), // Custom bottom navigation bar
    );
  }
}


class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: Text('Page 3 Content'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Text("hgjj"),
            Text("hgjj"),
          ],
        ),
      ), // Custom bottom navigation bar
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your custom bottom navigation bar here
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
