import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_provider.freezed.dart';

enum HomeState {
  home,
}

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(HomeState.home) HomeState currentFragment,
  }) = _HomePageState;

  const HomePageState._();
}

final homeNotifierProvider =
    StateNotifierProvider<HomeProvider, HomePageState>((ref) {
  return HomeProvider();
});

class HomeProvider extends StateNotifier<HomePageState> {
  HomeProvider() : super(const HomePageState());

  void showHomeFragment() {
    state = state.copyWith(currentFragment: HomeState.home);
  }
}
