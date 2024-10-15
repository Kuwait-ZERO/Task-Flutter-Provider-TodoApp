class Todo {
  int id;
  String title;
  bool done;

  Todo({
    required this.id,
    required this.title,
    this.done = false,
  });
}
