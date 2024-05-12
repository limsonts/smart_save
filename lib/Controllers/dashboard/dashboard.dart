
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:smart_save/Model/data_model.dart';

class   ItemBloc extends Bloc<void, List<Item>> {
  ItemBloc() : super([]);

  @override
  Stream<List<Item>> mapEventToState(void event) async* {
    // Load items from API or local storage
    // For demonstration, let's add some dummy data
    yield [
      Item(name: 'Item 1', imageUrl: 'url1'),
      Item(name: 'Item 2', imageUrl: 'url2'),
      Item(name: 'Item 3', imageUrl: 'url3'),
    ];
  }
}