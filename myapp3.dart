
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){

  runApp(const MyApp());//Application
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     theme: ThemeData(primaryColor: Colors.green),
       darkTheme: ThemeData(primarySwatch: Colors.blue),
       color: Colors.red,
       debugShowCheckedModeBanner: false,
       home: HomeActivity()
   );
  }
}


 class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


MySnackBar(message,context){

 return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))
  );

}

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("-----------------My App---------------"),
    titleSpacing: 0,

    toolbarHeight: 60,
    toolbarOpacity: 1,
    elevation: 10,
    backgroundColor: Colors.green,
    actions: [
      IconButton(onPressed: (){MySnackBar("I am comments",context);}, icon:Icon(Icons.comment)),
      IconButton(onPressed: (){MySnackBar("I am search",context);}, icon:Icon(Icons.search)),
      IconButton(onPressed: (){MySnackBar("I an settings",context);}, icon:Icon(Icons.settings)),
      IconButton(onPressed: (){MySnackBar("I am email",context);}, icon:Icon(Icons.email))
    ],
  ),
floatingActionButton: FloatingActionButton(
  elevation: 10,
  child: Icon(Icons.add),
  backgroundColor: Colors.green,
  onPressed: (){
    MySnackBar("I am floating action button",context);
    },
) ,
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: 2,
    items: [
      BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon:Icon(Icons.message),label: "Contact"),
      BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile")
    ],
onTap: (int index){
      if(index==0){
    MySnackBar("I am home bottom menu",context);}

    if(index==1){
    MySnackBar("I am contact bottom menu",context);}

    if(index==2){
    MySnackBar("I am profile bottom menu",context);
    }
    },
  ),
 drawer: Drawer(
   child: ListView(
     children: [
       DrawerHeader(
         margin:  EdgeInsets.only(bottom: 8.0),
         padding: EdgeInsets.all(0),
           child:UserAccountsDrawerHeader(
decoration: BoxDecoration(color:Colors.white),
   accountName: Text("Raju islam",style: TextStyle(color: Colors.black),),
   accountEmail: Text("raju697128@gmail.com",style: TextStyle(color: Colors.black)),

               currentAccountPicture: new Container(
                 margin: const EdgeInsets.only(bottom: 0),
                 width: 30,
                 height: 20,
                 decoration: new BoxDecoration(
                   shape:BoxShape.circle,
                   image: new DecorationImage(
                     fit: BoxFit.fill,
                     image: new NetworkImage(
                       "https://scontent.fdac68-1.fna.fbcdn.net/v/t39.30808-6/359379744_1670308010049866_4802363250202591408_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeF2GZ7pNyjfPcsXp88GwyQfd8lpX2KM6rp3yWlfYozqugi7_sglBYPVNk5NAFw3hz6-PurQc3XrU2na0A_pCgnv&_nc_ohc=lRop_NcEBUEAX_l7AHf&_nc_zt=23&_nc_ht=scontent.fdac68-1.fna&oh=00_AfAa4t6UJbApHr4smDrBgA7Qqbh9OKW9wQ64vgGX7xZOrQ&oe=650A31D2",
                     ),
                   ),
                 ),
               ),
onDetailsPressed: (){MySnackBar("This is my profile",context);},
   ),
   ),

       ListTile(
         leading: Icon(Icons.home),
         title: Text("Home"),
         onTap:(){MySnackBar("I am home",context);},),
       ListTile(
         leading: Icon(Icons.contact_mail),
         title: Text("Contact"),
         onTap:(){MySnackBar("I am contact",context);},),
       ListTile(
         leading: Icon(Icons.person),
         title: Text("Profile"),
         onTap:(){MySnackBar("I am profile",context);},),
       ListTile(
         leading: Icon(Icons.email),
         title: Text("Email"),
         onTap:(){MySnackBar("I am email",context);},),
       ListTile(
         leading: Icon(Icons.phone),
         title: Text("Phone"),
         onTap:(){MySnackBar("I am phone",context);},)
     ],


   ),


 ),



body:Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  TextButton(onPressed: (){MySnackBar("I am Text Button",context );}, child: Text("Text Button")),
  ElevatedButton(onPressed: (){MySnackBar("I am Elevated Button",context );}, child: Text("Text Elevated Button")),
  OutlinedButton(onPressed: (){MySnackBar("I am Outline Button",context );}, child: Text("Outline Button"))
  
],  
  
),


);

  }

  
}
