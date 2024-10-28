import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart'; // Ensure this part directive is included

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loading() = _Loading;
  const factory HomePageState.loaded(List<String> data) = _Loaded;
  const factory HomePageState.error(String message) = _Error;
}
