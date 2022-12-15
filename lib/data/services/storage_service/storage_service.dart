import 'package:water_tracker/data/models/goal_list.dart';
import 'package:water_tracker/data/models/user_settings.dart';

abstract class StorageService {
  Future<bool> saveGeneralInfo(UserSettings userSettings);

  Future<bool> saveGoal(GoalsList goalsList);
}
