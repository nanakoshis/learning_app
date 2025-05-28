import 'package:flutter/material.dart';

// 各タブの Navigator に対応する GlobalKey を作成
// タブごとに独立したナビゲーションスタックを持たせたい為
final GlobalKey<NavigatorState> tab1NavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> tab2NavigatorKey = GlobalKey<NavigatorState>();

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  BottomNavigationPageState createState() => BottomNavigationPageState();
}

class BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStackで各タブの画面を設定
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // Navigatorでルートナビゲーターを作成
          // GlobalKey<NavigatorState>()を設定することで、タブ1独自のルートナビゲーターを作成できる
          Navigator(
            key: tab1NavigatorKey, // タブ1の Navigator
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                builder: (context) => const Tab1Screen(),
              );
            },
          ),
          // Navigatorでルートナビゲーターを作成
          // GlobalKey<NavigatorState>()を設定することで、タブ2独自のルートナビゲーターを作成できる
          Navigator(
            key: tab2NavigatorKey, // タブ2の Navigator
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                builder: (context) => const Tab2Screen(),
              );
            },
          ),
        ],
      ),
      // ボトムナビゲーションバーを作成
      bottomNavigationBar: BottomNavigationBar(
        // 現在のタブ番号
        currentIndex: _currentIndex,
        // タップしたタブ番号を_currentIndexに設定
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab 1'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Tab 2'),
        ],
      ),
    );
  }
}

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /* タブ1で設定したNavigatorで画面遷移をする
               これにより、ボトムナビゲーションバーを残したまま画面遷移ができる */
            tab1NavigatorKey.currentState?.push(
              MaterialPageRoute(builder: (context) => const Tab1DetailScreen()),
            );
          },
          child: const Text('Go to Detail in Tab 1'),
        ),
      ),
    );
  }
}

class Tab1DetailScreen extends StatelessWidget {
  const Tab1DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab 1 Detail')),
      body: const Center(
        child: Text('This is Tab 1 Detail Screen'),
      ),
    );
  }
}

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /* rootNavigator: trueにすることで親のNavigatorを使用して画面遷移ができる
               これにより、ボトムナビゲーションバーを非表示にして画面遷移ができる */
            Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
                builder: (context) => const Tab2DetailScreen()));
          },
          child: const Text('Go to Detail in Tab 2'),
        ),
      ),
    );
  }
}

class Tab2DetailScreen extends StatelessWidget {
  const Tab2DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab 2 Detail')),
      body: const Center(
        child: Text('This is Tab 2 Detail Screen'),
      ),
    );
  }
}
