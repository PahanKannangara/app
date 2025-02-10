import 'package:flutter/material.dart';
import '../widgets/book_card.dart';
import '../models/book.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of books to display
    final List<Book> books = [
      Book(
        title: 'Rich Dad Poor Dad',
        author: 'Robert T. Kiyosaki',
        price: 1200,
        coverUrl: 'assets/images/rich_dad.jpg',
      ),
      Book(
        title: 'The Alchemist',
        author: 'Paulo Coelho',
        price: 1000,
        coverUrl: 'assets/images/alchemist.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended'),
        backgroundColor: const Color(0xFFFFE4B5),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: BookCard(book: books[index]),
          );
        },
      ),
    );
  }
}