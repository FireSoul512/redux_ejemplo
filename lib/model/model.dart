class Item{
  final int id;
  final String body;

  Item({
    required this.id,
    required this.body
  });

  Item copyWith({required int id, required String body}){
    return Item(
      id: this.id,
      body: this.body
    );
  }
}

class AppState{
  final List<Item> items;

  AppState({
    required this.items
  });

  AppState.initialState() : items = List.unmodifiable(<Item>[]);
}