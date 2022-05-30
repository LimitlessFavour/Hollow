import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';


part 'home_cubit.freezed.dart';
part 'home_cubit.g.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void setHomeTab(HomeTab tab) => emit(
        state.copyWith(homeTab: tab),
      );
}
