import 'package:flutter/material.dart';
import 'chatpage.dart';
import 'profile.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateHome();
  }
}

class _StateHome extends State<Home> {
  List<Widget> navigation = [
    Chatpage(),
    Container(
      child: Text('two'),
    ),
    Container(
      child: Text('three'),
    )
  ];
  int _navigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 170, left: 50),
        child: FloatingActionButton(
          clipBehavior: Clip.antiAlias,
          highlightElevation: 5,
          elevation: 10,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 30,
          ),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(16)),
          backgroundColor: Color.fromRGBO(255, 0, 169, 1.0),
          isExtended: true,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navigationIndex,
        onTap: (int index) {
          setState(() {
            _navigationIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('messages'),
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
          ),
          BottomNavigationBarItem(
              title: Text('contacts'),
              icon: Icon(Icons.people_outline),
              activeIcon: Icon(Icons.people)),
          BottomNavigationBarItem(
              title: Text('profile'),
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person))
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.home,
          size: 30,
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
          ),
          Icon(
            Icons.menu,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
          )
        ],
        iconTheme: IconThemeData(color: Colors.grey[800], opacity: 1.0),
        elevation: 1,
        title: Row(
          children: <Widget>[
            Text(
              'f',
              style: TextStyle(color: Colors.grey[800]),
            ),
            Text(
              'l',
              style: TextStyle(color: Color.fromRGBO(255, 0, 169, 1.0)),
            ),
            Text(
              'a',
              style: TextStyle(color: Colors.grey[800]),
            ),
            Text(
              'pp',
              style: TextStyle(color: Color.fromRGBO(255, 0, 169, 1.0)),
            ),
            Text(
              'er ',
              style: TextStyle(color: Colors.grey[800]),
            ),
            Text(
              '<',
              style: TextStyle(color: Color.fromRGBO(255, 0, 169, 1.0)),
            ),
            Text(
              'Beta',
              style: TextStyle(color: Colors.grey[800]),
            ),
            Text(
              '>',
              style: TextStyle(color: Color.fromRGBO(255, 0, 169, 1.0)),
            ),
          ],
        ),
      ),
      body: navigation[_navigationIndex],
    );
  }
}

//       floatingActionButton: new FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Color.fromRGBO(255, 0, 169, 1.0),
//         child: Icon(
//           Icons.add,
//           size: 35,
//         ),
//       ),
//       body: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               indicatorColor: Colors.deepPurple,
//               indicatorWeight: 3.5,
//               tabs: [
//                 Tab(icon: Icon(Icons.chat)),
//                 Tab(icon: Icon(Icons.call)),
//                 Tab(icon: Icon(Icons.person)),
//               ],
//             ),
//             title: Text('Flapper  <beta>'),
//             actions: <Widget>[
//               Padding(
//                 padding: EdgeInsets.all(10),
//                 child: new Row(
//                   children: <Widget>[
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.search,
//                         size: 32,
//                       ),
//                     ),
//                     Padding(padding: EdgeInsets.all(10)),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.settings,
//                         size: 32,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           body: TabBarView(
//             children: [
//               new Chatpage(),
//               Center(
//                   child: Text(
//                 'calls',
//                 style: TextStyle(fontSize: 50),
//               )),
//               new Profile()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
