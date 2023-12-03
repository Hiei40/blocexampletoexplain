import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenStates> {
  HomeScreenCubit() : super(HomeScreenInitial());
  int counter = 0;

  void incrementCounter() {
    counter++;
    print(counter);
    emit(HomeScreenadd());
  }
  void removeCounter(){
    counter--;
    print(counter);
    emit(HomeScreenremove());
  }

}
