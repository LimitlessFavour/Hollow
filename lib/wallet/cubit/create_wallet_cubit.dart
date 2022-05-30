import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hollow/app/bloc/app_bloc.dart';
import 'package:shared/shared.dart';

part 'create_wallet_cubit.freezed.dart';
part 'create_wallet_cubit.g.dart';

part 'create_wallet_state.dart';

class CreateWalletCubit extends Cubit<CreateWalletState> {
  CreateWalletCubit() : super(const CreateWalletState());
}
