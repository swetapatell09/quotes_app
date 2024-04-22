class QuotesModel {
  int? count, totalCount, page, totalPages, lastItemIndex;
  List<Result>? resultList = [];

  QuotesModel(
      {this.count,
      this.totalCount,
      this.page,
      this.totalPages,
      this.lastItemIndex,
      this.resultList});

  factory QuotesModel.mapToModel(Map m1) {
    List l1 = m1['results'];
    List<Result> l2 = l1.map((e) => Result.mapToModel(e)).toList();
    return QuotesModel(
        count: m1['count'],
        lastItemIndex: m1['lastItemIndex'],
        page: m1['page'],
        totalCount: m1['totalCount'],
        totalPages: m1['totalPages'],
        resultList: l2);
  }
}

class Result {
  String? id, author, content, authorSlug, dateAdded, dateModified;
  int? length;

  Result({
    this.id,
    this.author,
    this.content,
    this.authorSlug,
    this.dateAdded,
    this.dateModified,
    this.length,
  });

  factory Result.mapToModel(Map m1) {
    List l1 = m1['tags'];

    return Result(
      author: m1['author'],
      authorSlug: m1['authorSlug'],
      content: m1['content'],
      dateAdded: m1['dateAdded'],
      dateModified: m1['dateModified'],
      id: m1['id'],
      length: m1['length'],
    );
  }
}
