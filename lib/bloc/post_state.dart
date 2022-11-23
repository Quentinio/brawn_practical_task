part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}


//loading state
class PostLoadingState extends PostState {
  @override
  List<Object?> get props => [];
}

class PostLoadedState extends PostState {
  final PostModel posts;

  PostLoadedState(this.posts);

  @override
  List<Object?> get props => [posts];
}


class PostErrorState extends PostState {
  final String error;

  PostErrorState(this.error);
  @override
  List<Object?> get props => [error];
}

