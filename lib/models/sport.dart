class Sport{
  String createdat;
  String description;
  String featured;
  String id;
  String source;
  String title; 

  Sport(this.id,this.title,this.description,this.source,this.featured,this.createdat);

  Sport.fromJson(Map<String, dynamic> jsonObject) {
      this.id = jsonObject['id'].toString();
      this.title =jsonObject['title'].toString();
      this.description=jsonObject['description'].toString();
      this.source=jsonObject['source'].toString();
      this.featured=jsonObject['featured'].toString();
      this.createdat=jsonObject['created_at'].toString();
  }  
}