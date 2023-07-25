class Book {
  String name;
  String author;
  String category;
  bool isStarred;

  Book(this.name, this.author, this.category, {this.isStarred = false});

  @override
  String toString() {
    return '{name: $name, author: $author, category: $category}';
  }
}