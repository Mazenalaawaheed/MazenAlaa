//task 1
class Book {
  String title;
  String author;
  int numberOfPages;

  Book({
    required this.title,
    required this.author,
    required this.numberOfPages,
  });

  void displayBookInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numberOfPages');
  }
}
//task 2
class Novel extends Book {
  String novelGenre;
  Novel({
    required String title,
    required String author,
    required int numberOfPages,
    required this.novelGenre,
  }) : super(
          title: title,
          author: author,
          numberOfPages: numberOfPages,
        );

  @override
  void displayBookInfo() {
    super.displayBookInfo(); 
    print('Genre: $novelGenre');
  }
}

void main() {
  var book1 = Book(
    title: '1984',
    author: 'George Orwell',
    numberOfPages: 328,
  );

  var novel1 = Novel(
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    numberOfPages: 281,
    novelGenre: 'Novel',
  );

  print('Book 1:');
  book1.displayBookInfo();

  print('\nNovel 1:');
  novel1.displayBookInfo();
}
//task 3 

abstract class Shape {
  double area();
}


class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void printShapeArea(Shape shape) {
  print('Area of the shape: ${shape.area()}');
}
//task 4
abstract class Serializable {
  Map<String, dynamic> toJson();
}

class User implements Serializable {
  String name;
  int age;

  User({
    required this.name,
    required this.age,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}