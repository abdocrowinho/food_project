import 'package:bloc/bloc.dart';
import 'package:food_project/features/home/presentation/views/widgets/Catgory_model.dart';
import 'package:meta/meta.dart';

part 'main_home_cupit_state.dart';

class MainHomeCupitCubit extends Cubit<MainHomeCupitState> {
  MainHomeCupitCubit() : super(MainHomeCupitInitial());
  int currentindex = 0;

  CatgoryForm catgoryForm = CatgoryForm();
}
