part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;

  DestinationSuccess(this.destinations);

  @override
  // TODO: implement props
  List<Object> get props => (destinations);
}

class DestinationFailed extends DestinationState {
  final String erorr;

  DestinationFailed(this.erorr);

  @override
  // TODO: implement props
  List<Object> get props => [e];
}
