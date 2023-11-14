import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:notezone/app/boundary/pages/profile_wrapper_page/fragments/profile_state.dart';
import 'package:notezone/app/control/auth_facade.dart';
import 'package:notezone/app/control/auth_manager.dart';
import 'package:notezone/app/control/invitation_facade.dart';
import 'package:notezone/app/control/invitation_manager.dart';
import 'package:notezone/app/control/profile_facade.dart';
import 'package:notezone/app/control/profile_manager.dart';
import 'package:notezone/app/domain/entities/profile_entity.dart';
import 'package:notezone/shared/utils/form_input_data.dart';
import 'package:validators/validators.dart';

final profileProvider = StateNotifierProvider<ProfileProvider, ProfileState>(
  (ref) => ProfileProvider(
    logger: Logger(),
    authFacade: ref.watch(authManagerProvider),
    profileFacade: ref.watch(profileManagerProvider),
    invitationFacade: ref.watch(invitationManagerProvider),
  ),
);

class ProfileProvider extends StateNotifier<ProfileState> {
  ProfileProvider({
    required this.logger,
    required this.authFacade,
    required this.profileFacade,
    required this.invitationFacade,
  }) : super(ProfileState(
          formKey: GlobalKey<FormState>(),
          firstname: FormInputData(error: "Bitte gültigen Namen angeben"),
          lastname: FormInputData(error: "Bitte gültigen Namen angeben"),
          email: FormInputData(error: "Bitte gültige E-Mail angeben"),
        )) {
    setCurrentProfile();
  }

  final Logger logger;
  final AuthFacade authFacade;
  final ProfileFacade profileFacade;
  final InvitationFacade invitationFacade;
  StreamSubscription? streamSubscription;

  void getInvitations() {
    state = state.copyWith(isLoading: true);
    if (streamSubscription != null) streamSubscription!.cancel();
    streamSubscription = invitationFacade
        .findAllByProfileUid(profileUid: state.currentProfile!.uid)
        .listen((invitations) {
      state = state.copyWith(
        invitations: invitations,
      );
    });
    logger.d(state.invitations);
  }

  void setEmail(String value) {
    state = state.copyWith(
      email: state.email.copyWith(
        value: value,
      ),
    );
    validateEmail(value);
  }

  void setCurrentProfile() async {
    ProfileEntity profile = await profileFacade
        .findByUid(
          profileUid: authFacade.getCurrentUser().uid,
        )
        .first;
    state = state.copyWith(currentProfile: profile);
    setFirstname(profile.firstname);
    setLastname(profile.lastname);
    setEmail(profile.email);
    getInvitations();
  }

  void setFirstname(String name) {
    state = state.copyWith(
      firstname: state.firstname.copyWith(
        value: name,
      ),
    );
    validateFirstname(name);
  }

  void setLastname(String name) {
    state = state.copyWith(
      lastname: state.firstname.copyWith(
        value: name,
      ),
    );
    validateLastname(name);
  }

  void validateEmail(String email) {
    final isValidEmail = isEmail(email);

    state = state.copyWith(
      email: state.email.copyWith(isValid: isValidEmail),
    );
  }

  void validateFirstname(String name) {
    final isValidFirstname = isAlpha(name);

    state = state.copyWith(
      firstname: state.firstname.copyWith(isValid: isValidFirstname),
    );
  }

  void validateLastname(String name) {
    final isValidLastname = isAlpha(name);

    state = state.copyWith(
      lastname: state.lastname.copyWith(isValid: isValidLastname),
    );
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

  void resetState() {
    state = state.copyWith(
      error: false,
      success: false,
    );
  }

  Future<void> editProfile() async {
    if (!state.formKey.currentState!.validate()) return;

    setLoading(true);

    try {
      await profileFacade.update(
        email: state.email.value,
        firstname: state.firstname.value,
        lastname: state.lastname.value,
        profileUid: state.currentProfile!.uid,
      );
      setSuccess(true);
    } catch (e) {
      setError(true);
    }

    resetState();

    setLoading(false);
  }

  Future<void> updateInvitation(
      String invitationUid, bool hasAccepted, bool hasRejected) async {
    setLoading(true);

    try {
      await invitationFacade.update(
        invitationUid: invitationUid,
        hasAccepted: hasAccepted,
        hasRejected: hasRejected,
      );
    } catch (e) {
      setError(true);
    }
    setLoading(false);
    resetState();
  }

  Future<void> signOut() async {
    try {
      return await authFacade.signOut();
    } catch (e) {
      logger.d(e);
    }
  }
}
