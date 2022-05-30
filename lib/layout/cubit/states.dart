abstract class utmbStates {}

class utmbInitialState extends utmbStates {}

class utmbgetUserLoadingState extends utmbStates {}

class utmbgetUserSucsesState extends utmbStates {}

class utmbgetUserErrorState extends utmbStates {
  final String error;

  utmbgetUserErrorState(this.error);
}

class utmbChangeBottomNavState extends utmbStates {}

class utmbNewPostState extends utmbStates {}

class utmbProfileImagePickedSuccsessState extends utmbStates {}
class utmbProfileImagePickedErrorState extends utmbStates {}

class utmbCoverImagePickedSuccsessState extends utmbStates {}
class utmbCoverImagePickedErrorState extends utmbStates {}


class utmbUploadProfileImageSuccsessState extends utmbStates {}
class utmbUploadProfileImageErrorState extends utmbStates {}


class utmbUploadCoverImageSuccsessState extends utmbStates {}
class utmbUploadCoverImageErrorState extends utmbStates {}

class utmbuserUpdateErrorState extends utmbStates {}
class utmbuserUpdateLoadingState extends utmbStates {}

class utmbCreatePostLoadingState extends utmbStates {}
class utmbCreatePostSuccsesState extends utmbStates {}
class utmbCreatePostErrorState extends utmbStates {}


class utmbPostImagePickedSuccsessState extends utmbStates {}
class utmbPostImagePickedErrorState extends utmbStates {}

class utmbRemovePostImageState extends utmbStates {}


class utmbgetPostLoadingState extends utmbStates {}

class utmbgetPostSucsesState extends utmbStates {}

class utmbgetPostErrorState extends utmbStates {
  final String error;

  utmbgetPostErrorState(this.error);
}




class utmbLikePostSucsesState extends utmbStates {}

class utmbLikePostErrorState extends utmbStates {
  final String error;

  utmbLikePostErrorState(this.error);
}

class utmbCommentPostSucsesState extends utmbStates {}

class utmbCommentPostErrorState extends utmbStates {
  final String error;

  utmbCommentPostErrorState(this.error);
}
class utmbgetCommentSucsesState extends utmbStates {}

class utmbgetCommentErrorState extends utmbStates {
  final String error;

  utmbgetCommentErrorState(this.error);
}


class utmbgetAllUsersLoadingState extends utmbStates {}

class utmbgetAllUsersSucsesState extends utmbStates {}

class utmbgetAllUsersErrorState extends utmbStates {
  final String error;

  utmbgetAllUsersErrorState(this.error);
}



class utmbSendMessageSucsesState extends utmbStates {}

class utmbSendMessageErrorState extends utmbStates {
  final String error;

  utmbSendMessageErrorState(this.error);
}


class utmbgetMessageSucsesState extends utmbStates {}

