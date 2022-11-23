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

  @override
  List<Object?> get props => [];
}


//TODO error state


