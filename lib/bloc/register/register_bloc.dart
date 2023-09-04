import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multistore_app/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_multistore_app/data/model/auth_response_model.dart';
import 'package:flutter_multistore_app/data/model/request/register_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final result = await AuthRemoteDatasource().register(event.model);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
