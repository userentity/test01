// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/data_source/firebase_data_source.dart' as _i3;
import 'data/data_source/firebase_data_source_impl.dart' as _i4;
import 'data/repository/auth_repository_impl.dart' as _i6;
import 'domain/repository/auth_repository.dart' as _i5;
import 'domain/use_case/sign_in_use_case.dart' as _i7;
import 'domain/use_case/sign_out_use_case.dart' as _i8;
import 'domain/use_case/sign_up_use_case.dart' as _i9;
import 'presentation/auth/bloc/auth_bloc.dart' as _i11;
import 'presentation/success/bloc/success_bloc.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.FirebaseDataSource>(_i4.FirebaseDataSourceImpl());
  gh.singleton<_i5.AuthRepository>(
      _i6.AuthRepositoryImpl(get<_i3.FirebaseDataSource>()));
  gh.factory<_i7.SignInUseCase>(
      () => _i7.SignInUseCaseImpl(get<_i5.AuthRepository>()));
  gh.factory<_i8.SignOutUseCase>(
      () => _i8.SignOutUseCaseImpl(get<_i5.AuthRepository>()));
  gh.factory<_i9.SignUpUseCase>(
      () => _i9.SignUpUseCaseImpl(get<_i5.AuthRepository>()));
  gh.factory<_i10.SuccessBloc>(
      () => _i10.SuccessBloc(get<_i8.SignOutUseCase>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(
        get<_i7.SignInUseCase>(),
        get<_i9.SignUpUseCase>(),
      ));
  return get;
}
