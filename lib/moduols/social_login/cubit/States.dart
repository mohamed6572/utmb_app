
abstract class utmbLoginStates {}

class utmbLoginIntialState extends utmbLoginStates {}

class utmbLoginLodingState extends utmbLoginStates {}

class utmbLoginSucsesState extends utmbLoginStates {
  final String? uId;

  utmbLoginSucsesState(this.uId);
}

class utmbLoginerrorState extends utmbLoginStates {
  final String Error;

  utmbLoginerrorState(this.Error);
}

class utmbChangePasswordVisibiltyState extends utmbLoginStates {}
