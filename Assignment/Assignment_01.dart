class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;
  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear, this.pagesRead)
  {
    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = 2024;
    return currentYear - publicationYear;
  }
}

void main() {
  Book book1 = Book("Les Miserables", "Victor Hugo", 1862, 340);
  Book book2 = Book("War and Peace", "Tolstoy", 1869, 450);
  Book book3 = Book("Anna Karenina", "Leo Tolstoy", 1878, 800);
  Book book4 = Book("The Secret", "Julie Garwood", 1992, 800);

  book1.read(50);
  book2.read(40);
  book3.read(80);
  book4.read(30);

  print("Title:${book1.getTitle()}\n \t Author: ${book1.getAuthor()}\n \t Publication Year: ${book1.getPublicationYear()}\n \t Pages Read: ${book1.getPagesRead()}\n \t Book Age: ${book1.getBookAge()} years");
  print("Title:${book2.getTitle()}\n \t Author: ${book2.getAuthor()}\n \t Publication Year: ${book2.getPublicationYear()}\n \t Pages Read: ${book2.getPagesRead()}\n \t Book Age: ${book2.getBookAge()} years");
  print("Title:${book3.getTitle()}\n \t Author: ${book3.getAuthor()}\n \t Publication Year: ${book3.getPublicationYear()}\n \t Pages Read: ${book3.getPagesRead()}\n \t Book Age: ${book3.getBookAge()} years");
  print("Title:${book4.getTitle()}\n \t Author: ${book4.getAuthor()}\n \t Publication Year: ${book4.getPublicationYear()}\n \t Pages Read: ${book4.getPagesRead()}\n \t Book Age: ${book4.getBookAge()} years");
  print("\n\nTotal number of books created: ${Book.totalBooks}");
}

