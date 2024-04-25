import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_home_cupit_state.dart';

class MainHomeCupitCubit extends Cubit<MainHomeCupitState> {
  MainHomeCupitCubit() : super(MainHomeCupitInitial());
  int currentindex = 0;
}
