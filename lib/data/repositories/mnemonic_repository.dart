import 'package:polkadex_mobile_test/data/datasources/mnemonic_remote_datasource.dart';
import 'package:polkadex_mobile_test/domain/repositories/imnemonic_repository.dart';

class MnemonicRepository implements IMnemonicRepository {
  MnemonicRepository(
      {required MnemonicRemoteDatasource mnemonicRemoteDatasource})
      : _mnemonicRemoteDatasource = mnemonicRemoteDatasource;

  final MnemonicRemoteDatasource _mnemonicRemoteDatasource;

  //@override
  //Future<Either<ApiError, List<String>>> generateMnemonic() async {
  //  final result = await _mnemonicRemoteDatasource.generateMnemonic();
//
  //  if (result['mnemonic'] != null) {
  //    return Right(result['mnemonic'].split(' '));
  //  } else {
  //    return Left(ApiError(message: ''));
  //  }
  //}
//
  //@override
  //Future<Either<ApiError, ImportedAccountEntity>> importAccount(
  //    String mnemonic, String password) async {
  //  final result = await _mnemonicRemoteDatasource.importAccount(
  //      mnemonic, password.toBase64());
//
  //  if (result['error'] == null) {
  //    return Right(ImportedAccountModel.fromJson(result));
  //  } else {
  //    return Left(ApiError.fromJson(result['error']));
  //  }
  //}
}
