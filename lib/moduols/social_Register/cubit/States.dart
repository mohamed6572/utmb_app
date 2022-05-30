abstract class utmbRegisterStates {}

class utmbRegisterIntialState extends utmbRegisterStates {}

class utmbRegisterLodingState extends utmbRegisterStates {}

class utmbRegisterSucseslState extends utmbRegisterStates {}

class utmbRegisterErerorState extends utmbRegisterStates {
  final String Error;

  utmbRegisterErerorState(this.Error);
}


class utmbCreateUserLodingState extends utmbRegisterStates {}

class utmbCreateUserSucseslState extends utmbRegisterStates {}

class utmbCreateUserErerorState extends utmbRegisterStates {
  final String Error;

  utmbCreateUserErerorState(this.Error);
}

class utmbRegisterChangePasswordVisibiltyState extends utmbRegisterStates {}
