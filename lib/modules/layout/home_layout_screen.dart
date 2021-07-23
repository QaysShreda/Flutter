

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cource/modules/bloc/cubit/main_cubit.dart';

class HomeLayout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(
          Icons.menu,
        ) ,
        title: Text(
          'Hello World'
        ) ,
        actions: [IconButton(onPressed: (){},
              icon: Icon(Icons.search,
              ),)],
      ),
      body: Column(
        children: [
          Text('Hello World'),
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: 0,
        onTap: (index){
          MainCubit.get(context).changeScreen(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Items'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: 'Profile'),
        ],
      )
    );
  }
}
