import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/fragments/member_invite_state.dart';
import 'package:notezone/app/control/invitation_facade.dart';
import 'package:notezone/app/control/invitation_manager.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

final memberInviteProvider =
    StateNotifierProvider<MemberInviteNotifier, MemberInviteState>(
        (ref) => MemberInviteNotifier(
              invitationFacade: ref.watch(invitationManagerProvider),
              logger: Logger(),
            ));

class MemberInviteNotifier extends StateNotifier<MemberInviteState> {
  MemberInviteNotifier({required this.invitationFacade, required this.logger})
      : super(
          MemberInviteState(
            formKey: GlobalKey<FormState>(),
            email: FormInputData(error: "Bitte gültige E-Mail angeben"),
          ),
        );

  final Logger logger;
  final InvitationFacade invitationFacade;

  void setEmail(String value) {
    state = state.copyWith(
      email: state.email.copyWith(
        value: value,
      ),
    );
    validateEmail(value);
  }

  void setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void setSuccess(bool success) {
    state = state.copyWith(success: success);
  }

  void setError(bool error) {
    state = state.copyWith(error: error);
  }

  void validateEmail(String email) {
    final isValidEmail = isEmail(email);

    state = state.copyWith(
      email: state.email.copyWith(isValid: isValidEmail),
    );
  }

  void projectSelected(String projectUid, String projectTitle) {
    state = state.copyWith(
      projectUid: projectUid,
      projectTitle: projectTitle,
    );
  }

  void resetState() {
    state = MemberInviteState(
      formKey: GlobalKey<FormState>(),
      email: FormInputData(error: "Bitte gültige E-Mail angeben"),
    );
  }

  Future<void> submit() async {
    if (!state.formKey.currentState!.validate()) return;
    setLoading(true);
    try {
      await invitationFacade.create(
        projectTitle: state.projectTitle,
        projectUid: state.projectUid,
        receiverEmail: state.email.value,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }
    setLoading(false);
    resetState();
  }
}
