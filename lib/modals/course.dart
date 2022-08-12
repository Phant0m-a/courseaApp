class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourse() {
    return [
      Course('ahsan ali', 'assets/icons/avatar01.png', 'Plant',
          'assets/images/course01.png'),
      Course('ahmad', 'assets/icons/avatar02.png', 'Fruits',
          'assets/images/course02.png')
    ];
  }
}
