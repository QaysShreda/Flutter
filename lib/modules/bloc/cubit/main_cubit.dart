import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cource/modules/bloc/states/states.dart';
import 'package:flutter_cource/modules/screens/location_screen.dart';
import 'package:flutter_cource/modules/screens/products_screen.dart';
import 'package:flutter_cource/modules/screens/profile_screen.dart';

class MainCubit extends Cubit<MainState>
{
  MainCubit() : super(InitialState());

  static MainCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;


  List<Widget> screens = [
    ProductsScreen(),
    LocationScreen(),
    ProfileScreen(),
  ];


  void changeScreen(int index){
    currentIndex = index;
    emit(ChangeScreenState());
  }

}