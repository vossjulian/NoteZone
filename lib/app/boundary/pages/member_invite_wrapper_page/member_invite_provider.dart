import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_invite_provider.freezed.dart';

enum MemberInviteState {
  memberInvite,
}

@freezed
class MemberInvitePageState with _$MemberInvitePageState {
  const factory MemberInvitePageState({
    @Default(MemberInviteState.memberInvite) MemberInviteState currentFragment,
  }) = _MemberInvitePageState;

  const MemberInvitePageState._();
}

final memberInvitePageNotifierProvider =
    StateNotifierProvider<MemberInvitePageNotifier, MemberInvitePageState>(
        (ref) {
  return MemberInvitePageNotifier();
});

class MemberInvitePageNotifier extends StateNotifier<MemberInvitePageState> {
  MemberInvitePageNotifier() : super(const MemberInvitePageState());

  void showMemberInviteFragment() {
    state = state.copyWith(currentFragment: MemberInviteState.memberInvite);
  }
}
