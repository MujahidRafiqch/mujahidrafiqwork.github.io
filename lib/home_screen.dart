import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'Chat'),
            Tab(text: 'Status'),
            Tab(text: 'Call'),
          ]),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                // Add search functionality here
              },
            ),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Log Out'),
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/mypic.jpeg'),
                  ),
                  title: Text('Mujahid Rafiq'),
                  subtitle: Text('CodeUpScale Right Now.'),
                  trailing: Text('10:15 AM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        )),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/mypic.jpeg'),
                    ),
                  ),
                  title: Text('Mujahid Rafiq'),
                  subtitle: Text('15 Minutes ago'),
                  // trailing: Text('10:15 AM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/youpic.jpg'),
                  ),
                  title: Text('Tayyab Hussain '),
                  subtitle: Text('You Missed Video Call'),
                  trailing: Icon(
                    Icons.video_call_rounded,
                    color: Colors.red,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
