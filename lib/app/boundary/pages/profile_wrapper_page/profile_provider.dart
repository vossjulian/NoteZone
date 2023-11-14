import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_provider.freezed.dart';

enum ProfileState {
  profile,
}

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState({
    @Default(ProfileState.profile) ProfileState currentFragment,
  }) = _ProfilePageState;

  const ProfilePageState._();
}

final profileNotifierProvider =
    StateNotifierProvider<ProfileProvider, ProfilePageState>((ref) {
  return ProfileProvider();
});

class ProfileProvider extends StateNotifier<ProfilePageState> {
  ProfileProvider() : super(const ProfilePageState());

  void showProfileFragment() {
    state = state.copyWith(currentFragment: ProfileState.profile);
  }
}
