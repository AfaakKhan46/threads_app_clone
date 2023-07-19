class thread{
  String? name;
  String? posted;
  String? description;
  String? image;
  String? profileImage;
  String? replies;
  String? likes;
  String? replier;
  String? replier1;
  String? replier2;
  thread(
      this.name,
      this.description,
      this.posted,
      this.image,
      this.profileImage,
      this.replies,
      this.likes,
      this.replier,
      this.replier1,
      this.replier2,
      );

  factory thread.formJson(Map<String, String> jsonObject){
    return thread(
        jsonObject['name'],
        jsonObject['description'],
        jsonObject['posted'],
        jsonObject['image'],
        jsonObject['profileImage'],
        jsonObject['replies'],
        jsonObject['likes'],
        jsonObject['replier'],
        jsonObject['replier1'],
        jsonObject['replier2'],
    );
  }
}