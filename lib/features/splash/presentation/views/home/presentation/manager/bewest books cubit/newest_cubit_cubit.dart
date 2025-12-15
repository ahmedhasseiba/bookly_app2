import 'package:bloc/bloc.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newest_cubit_state.dart';

class NewestCubitCubit extends Cubit<NewestCubitState> {
  NewestCubitCubit() : super(NewestCubitInitial());
}
