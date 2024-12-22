class PodcastModel {
  String? id;
  String? title;
  String? poster;
  String? publisher;
  String? view;
  String? createdAt;

  PodcastModel(
      {this.id,
        this.title,
        this.poster,
        this.publisher,
        this.view,
        this.createdAt});

  PodcastModel.fromJson(Map<String, dynamic> element) {
    id = element['id'];
    title = element['title'];
    poster = element['poster'];
    publisher = element['publisher'];
    view = element['view'];
    createdAt = element['created_at'];
  }
  }