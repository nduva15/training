import 'package:flutter/material.dart';

import 'my_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:  Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
    class HomePage extends StatefulWidget {
      const HomePage({Key? key}) : super(key: key);
    
      @override
      State<HomePage> createState() => _HomePageState();
    }
    
    class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[700],
            title: Text("Training"),
          ),
          body: Container(
            child: const Center(
              child: Text("Home Page", style: TextStyle(color: Colors.grey, fontSize: 22),),
            ),
          ),
          drawer: Drawer(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    MyHeaderDrawer(),
                    MyDrawerList(),
                  ],
                ),
              ),
            ),

          ),
        );
      }
      Widget MyDrawerList() {
        return Container(
          padding: EdgeInsets.only(top: 15,),
          child: Column(
            children:[
              menuItem( 1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
              menuItem( 2, "Contacts", Icons.people_alt_outlined,
                  currentPage == DrawerSections.contacts? true : false),
              menuItem( 3, "Events", Icons.event,
                  currentPage == DrawerSections.events? true : false),
              menuItem( 4, "Notes", Icons.notes,
                  currentPage == DrawerSections.notes? true : false),
              menuItem( 5, "Settings", Icons.settings_outlined,
                  currentPage == DrawerSections.settings ? true : false),
              menuItem( 6, "Notifications", Icons.notifications_outlined,
                  currentPage == DrawerSections.notifications? true : false),
              menuItem( 7, "Privacy Policy", Icons.privacy_tip_outlined,
                  currentPage == DrawerSections.privacy_policy? true : false),
              menuItem( 8, "Send Feedback", Icons.feed_outlined,
                  currentPage == DrawerSections.send_feedback ? true : false),


            ],

          ),
        );
      }
        Widget menuItem( int id, String title, IconData icon, bool selected){
          return Material(
            child: InkWell(
              onTap: (){},
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                     icon,
                      size: 20,
                      color: Colors.black,
                    ),),
                    Expanded(
                      child:
                    Text(title,
                      style:
                      TextStyle(color: Colors.black,
                          fontSize:16 ),), ),

                  ],
                ),

              ),

            ),


          );
        }
      }
      enum DrawerSections{
        dashboard,
        contacts,
        events,
        notes,
        settings,
        notifications,
        privacy_policy,
        send_feedback,
      }



