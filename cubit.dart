import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_silver_app/cubit/states.dart';
import 'package:gold_silver_app/network/dio_helper.dart';
class MainCubit extends Cubit<States>{
  //MainCubit(super.initialState);

  MainCubit(): super(InitState());

static MainCubit get(context)=>BlocProvider.of(context);





  double? goldD;
  int? goldI;
  double? silverD;
  int? silverI;

  getGoldPrice(){
    DioHelper.getdata('XAU/USD/').then((value) {

        goldD =value.data['price'];
        goldI=goldD!.round();
        print(goldI);
        emit(getGoldPriceState());


    }).catchError((error){
      print(error.toString());
    });
  }
  getSilverPrice(){
    DioHelper.getdata('XAG/USD/').then((value) {

        silverD =value.data['price'];
        silverI=silverD!.round();
        print(silverI);
        emit(getSilverPriceState());

    }).catchError((error){
      print(error.toString());
    });
  }
}

