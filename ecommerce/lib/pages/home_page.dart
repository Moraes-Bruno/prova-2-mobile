import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: MyBottomNavBar(
            onTabChange: (index) => navigateBottomBar(index),
          )),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                child: Image.asset(
              'assets/images/4027496_15916-removebg-preview.png',
              width: 180,
            )),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Divider(color: Colors.red,),
            ),
            const Padding(
              padding: EdgeInsets.only(left:25),
              child: ListTile(
                leading: Icon(Icons.home,color:Colors.white,size: 20,),
                title: Text("Inicio",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left:25),
              child: ListTile(
                leading: Icon(Icons.info,color:Colors.white,size: 20,),
                title: Text("Sobre",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left:25,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout,color:Colors.white,size: 20,),
                title: Text("Sair",style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
