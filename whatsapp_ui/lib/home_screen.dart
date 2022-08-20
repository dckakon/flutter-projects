import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

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
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            // Icon(Icons.more_horiz_outlined),'
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (
                context,
              ) =>
                  [
                const PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Logout'),
                )
              ],
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://api.time.com/wp-content/uploads/2017/02/john-wick-2-keanu-reeves1.jpg'),
                ),
                title: Text('John Wick'),
                subtitle: Text('Where is my pencil?'),
                trailing: Text('6.30 AM'),
              );
            }),
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: ((context, index) {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://api.time.com/wp-content/uploads/2017/02/john-wick-2-keanu-reeves1.jpg'),
                  ),
                ),
                title: Text('John Wick'),
                subtitle: Text('45m ago'),
              );
            }),
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://api.time.com/wp-content/uploads/2017/02/john-wick-2-keanu-reeves1.jpg'),
                ),
                title: const Text('John Wick'),
                subtitle: Text(
                  index % 2 == 0 ? 'you missed call' : 'Call duration is 3:39',
                  style: TextStyle(color: Colors.red),
                ),
                //! Align(alignment: Alignment.topLeft, child: Icon(Icons.phone)),
                trailing: Icon(index % 2 == 0 ? Icons.phone : Icons.video_call),
              );
            }),
          ),
        ]),
      ),
    );
  }
}
