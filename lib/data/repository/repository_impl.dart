import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/responses/sign_up_result.dart';
import 'package:water_tracker/data/models/user_settings.dart';
import 'package:water_tracker/data/repository/repository.dart';
import 'package:water_tracker/data/services/authentication_service/authentication_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/data/services/storage_service/secure_storage.dart';
import 'package:water_tracker/data/services/storage_service/storage_service.dart';

class RepositoryImpl extends Repository {
  RepositoryImpl(
    this.registrationService,
    this.storageService,
    this.secureStorage,
  );

  final AuthenticationService registrationService;
  final StorageService storageService;
  final SecureStorageService secureStorage;

  final counterCupsDateFormat = DateFormat('dd.MM.yyyy');

  String? _userEmail;

  String get userEmail {
    if (_userEmail == null) throw Exception('email could not be null at this point');
    return _userEmail!;
  }

  set userEmail(String value) {
    _userEmail = value;
  }

  @override
  Future<SignUpResult> registerUser(String email, String password) async {
    final result = await registrationService.registerUser(email, password);
    return result;
  }

  @override
  Future<bool> loginUser(String email, String password) async {
    final result = await registrationService.loginUser(email, password);
    final isSuccessful = result.error == null;
    if (isSuccessful) _userEmail = email;
    return isSuccessful;
  }

  @override
  Future<bool> saveGeneralInfo(UserSettings userSettings) async {
    final result =
        await storageService.saveUserSetting(userEmail, userSettings);
    return result;
  }

  @override
  Future<bool> saveGoal(GoalList goalsList) async {
    final result = await storageService.saveUserGoal(userEmail, goalsList);
    return result;
  }

  @override
  Future<bool> saveCupCount(int counterCups) async {
    final time = DateTime.now();
    final result = await storageService.saveUserCount(
      userEmail,
      getDateKey(time),
      counterCups,
    );
    return result;
  }

  @override
  Future<int?> getCupCount(DateTime time) async {
    return storageService.getUserCount(userEmail, getDateKey(time));
  }

  String getDateKey(DateTime dateTime) =>
      counterCupsDateFormat.format(dateTime);

  @override
  Future<String?> getAccessToken() async => await secureStorage.getAccessToken();

  @override
  Future<void> saveAccessToken(String accessToken) async {
   await secureStorage.saveAccessToken(accessToken);
  }
}
