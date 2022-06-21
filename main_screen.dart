import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_silver_app/cubit/cubit.dart';
import 'package:gold_silver_app/cubit/states.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)
    =>
    MainCubit()
      ..getGoldPrice()
      ..getSilverPrice()
    ,
    child: BlocConsumer<MainCubit,States>(
    listener: (context, state) {},
     builder: (context,state){
    return Scaffold(
    backgroundColor: Colors.grey[900],
    appBar: AppBar(
    backgroundColor: Colors.black87,
    title: Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
    Text(
    'Today',
    style: TextStyle(

    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    shadows:[
    BoxShadow(
    color: Colors.grey,
    offset: Offset(
    2,1
    ),
    blurRadius: 5,
    ),
    ],
    ),

    ),
    SizedBox(width: 10.0,),
    Text(
    'Price',
    style: TextStyle(
    color: Colors.orangeAccent,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    shadows:[
    BoxShadow(
    color: Colors.grey,
    offset: Offset(
    2,1
    ),
    blurRadius: 5,
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ),

    body: Container(
    padding: const EdgeInsets.only(left: 8,top: 50,right: 8, bottom: 8),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
    color: Colors.black87,
    borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Expanded(
    child: Column(
    children: [
    Image.asset('assets/images/Gold1.png',
    height: MediaQuery.of(context).size.height/8,
    width: MediaQuery.of(context).size.height/2.0),

    const SizedBox(height: 20.0,),
    Text(
    'Gold',
    style: TextStyle(
    color: Colors.orangeAccent,
     fontSize: MediaQuery.of(context).size.width/8,
     fontWeight: FontWeight.bold,
    shadows:
    [
    BoxShadow(
    color: Colors.yellow[100]!,
    offset: const Offset(
    2,1
    ),
    blurRadius: 5,
    ),
    ],
    ),
    ),
    const SizedBox(height: 20.0,),
    Text('ounce: ${MainCubit.get(context).goldI}💲',
    //textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.orangeAccent,
    fontSize: MediaQuery.of(context).size.width/16,
    fontWeight: FontWeight.bold,
    ),
    ),
    //Image.asset('assets/images/Silver.png'),
    ],
    ),
    ),
    Expanded(
    child: Column(
    children: [

    Image.asset('assets/images/Silver1.png',
    height: MediaQuery.of(context).size.height/8,
    width: MediaQuery.of(context).size.height/2.0),

    const SizedBox(height: 20.0,),
    Text(
    'Silver',
    style: TextStyle(

    color: Colors.grey,
    fontSize: MediaQuery.of(context).size.width/8,
    fontWeight: FontWeight.bold,
    shadows:
    const [
    BoxShadow(
    color: Colors.grey,
    offset: Offset(
    2,1
    ),
    blurRadius: 5,
    ),
    ],
    ),
    ),
    const SizedBox(height: 20.0,),
    Text( '   ounce: ${MainCubit.get(context).silverI}💲',
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.white,
    fontSize: MediaQuery.of(context).size.width/16,
    fontWeight: FontWeight.bold,
    shadows:
    const [
    BoxShadow(
    color: Colors.grey,
    offset: Offset(
    2,1
     ),
    blurRadius: 5,
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    );
    },

    ));
  }


}
