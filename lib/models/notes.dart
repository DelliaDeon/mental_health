class NotesModel{
  final int id;
  final String title;
  final String content;
  final String color;
  final String dateTime;

  NotesModel({
    required this.id,
    required this.title,
    required this.content,
    required this.color,
    required this.dateTime,
  });

  // maps each table column to model's
  // attribute for adding notes to database
  Map<String, Object> toMap(){
    return{
      "id": id,
      "title": title,
      "content": content,
      "color": color,
      "dateTime": dateTime,
    };
  }

  // to be used in retrieving all notes
  factory NotesModel.fromMap(Map<String, dynamic> map){
    return NotesModel(
      id: map["id"],
      title: map["title"],
      content: map["content"],
      color: map["color"],
      dateTime: map["dateTime"],
    );
  }
}