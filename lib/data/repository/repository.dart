import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class Repository {
  Future<bool> registerUser(
    String email,
    String password,
  );

  Future<bool> loginUser(
    String email,
    String password,
  );

  Future<String?> getUserInfo();

  Future<bool> signInWithGoogle();

  Future<String?> getAccessToken();

  Future<int?> getCupCount(DateTime time);

  Future<bool> saveGoal(GoalList goalsList);

  Future<bool> saveCupCount(int counterCups);

  Future<bool> saveGeneralInfo(UserSettings userSettings);


  Future<void> initNotification();

  Future<void> showOneHourNotification({
    required id,
    required String title,
    required String body,
    required String payload,
  });

  Future<void> showTwoHoursNotification({
    required id,
    required String title,
    required String body,
    required String payload,
  });
}
