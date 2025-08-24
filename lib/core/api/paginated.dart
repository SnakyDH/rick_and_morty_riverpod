class Paginated<T> {
  final int count;
  final int pages;
  final List<T> results;
  final String? next;
  final String? prev;

  Paginated({
    required this.count,
    required this.pages,
    required this.results,
    this.next,
    this.prev,
  });
}
