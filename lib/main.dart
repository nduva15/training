import 'package:flutter/material.dart';
import 'package:training/Privacy%20Policy.dart';
import 'package:training/contacts.dart';
import 'package:training/dashboard.dart';
import 'package:training/events.dart';
import 'package:training/feedback.dart';
import 'package:training/notes.dart';
import 'package:training/notifications.dart';
import 'package:training/settings.dart';

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
      var currentPage = DrawerSections;

      @override
      Widget build(BuildContext context) {
        var container;
        if (currentPage == DrawerSections.dashboard) {
          container = DashboardPage();
        } else if (currentPage == DrawerSections.contacts) {
          container = ContactsPage();
        } else if (currentPage == DrawerSections.events) {
          container = EventsPage();
        } else if (currentPage == DrawerSections.notes) {
          container = NotesPage();
        } else if (currentPage == DrawerSections.settings) {
          container = SettingsPage();
        } else if (currentPage == DrawerSections.notifications) {
          container = NotificationsPage();
        }else if (currentPage == DrawerSections.privacy_policy) {
          container = PrivacyPolicyPage();
        }else if (currentPage == DrawerSections.send_feedback) {
          container = SendFeedback();
        }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green[700],
              title: Text("Training"),
            ),
            body: Container(
              child: const Center(
                child: Text("Home Page",
                  style: TextStyle(color: Colors.grey, fontSize: 22),),
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
              children: [
                menuItem(1, "Dashboard", Icons.dashboard_outlined,
                    currentPage == DrawerSections.dashboard ? true : false),
                menuItem(2, "Contacts", Icons.people_alt_outlined,
                    currentPage == DrawerSections.contacts ? true : false),
                menuItem(3, "Events", Icons.event,
                    currentPage == DrawerSections.events ? true : false),
                menuItem(4, "Notes", Icons.notes,
                    currentPage == DrawerSections.notes ? true : false),
                menuItem(5, "Settings", Icons.settings_outlined,
                    currentPage == DrawerSections.settings ? true : false),
                menuItem(6, "Notifications", Icons.notifications_outlined,
                    currentPage == DrawerSections.notifications ? true : false),
                menuItem(7, "Privacy Policy", Icons.privacy_tip_outlined,
                    currentPage == DrawerSections.privacy_policy
                        ? true
                        : false),
                menuItem(8, "Send Feedback", Icons.feed_outlined,
                    currentPage == DrawerSections.send_feedback ? true : false),


              ],

            ),
          );
        }
        Widget menuItem(int id, String title, IconData icon, bool selected) {
          return Material(
            color: selected ? Colors.grey[300] : Colors.transparent,
            child: InkWell(
               onTap: () {
                Navigator.pop(context);
                setState(() {

                },
                );
              },
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
                            fontSize: 16),),),

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



