import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green) ,
      home: HomeActivity(),);
  }
}
 MysnackBar (message, BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content:Text (message))
  );
}
class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("Dbrata nath"),
                accountEmail: Text("dibratanath77@gmail.com"),
                currentAccountPicture: Image.network('https://lh3.googleusercontent.com/a/ACg8ocJQ7_T0tUTtrlaK66XP22ROlGz0nQ8wowccV_fvEtHYVCs=s432-c-no'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                MysnackBar("I am a profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_outlined),
              title: Text("Phone"),
              onTap: (){
                MysnackBar("I am a Phone", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Mail"),
              onTap: (){
                MysnackBar("I am a Mail", context);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_business)),
          IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
        title: Text('MY App'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){
          MysnackBar("I am a Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MysnackBar("Iam a home", context);
          }
          if (index == 1) {
            MysnackBar("Iam a message", context);
          }
          if(index == 2){
            MysnackBar("Iam a Profile", context);
          }
        }
      ),
    );
  }
}