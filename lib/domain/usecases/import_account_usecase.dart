import 'package:polkadex_mobile_test/domain/repositories/imnemonic_repository.dart';

class ImportAccountUseCase {
  ImportAccountUseCase({
    required IMnemonicRepository mnemonicRepository,
  }) : _mnemonicRepository = mnemonicRepository;

  final IMnemonicRepository _mnemonicRepository;

 // Future<Either<ApiError, ImportedAccountEntity>> call({
 //   required String mnemonic,
 //   required String password,
 // }) async {
 //   return await _mnemonicRepository.importAccount(mnemonic, password);
 // }
}
