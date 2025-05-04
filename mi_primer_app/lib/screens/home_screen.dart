import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final options = [
    'Noticias y Actualidad',
    'Biblioteca Central',
    'Informaciones',
    'Pensum',
    'Repositorios',
    'Foros',
  ];

  final List<String> imageList = [
    'https://i.pinimg.com/736x/13/36/ae/1336ae5845f6e180b769e97b87d03704.jpg',
    'http://i.pinimg.com/736x/ba/79/09/ba79096eb3979d345105aee4417d9412.jpg',
    'https://i.pinimg.com/736x/c8/6a/44/c86a443d91cfdc8202c2878d290b771f.jpg',
    'https://i.pinimg.com/736x/30/c1/14/30c114d5393509e97ed1e01d3332502a.jpg',
    'https://i.pinimg.com/736x/05/d0/51/05d05172cda45d213ddcd057619d49eb.jpg',
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portal Ingeniería de Sistemas"),
        backgroundColor: Colors.greenAccent,
        leading: const Icon(Icons.airline_stops_outlined),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Image.network(
                  imageList[index],
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(child: Icon(Icons.error));
                  },
                );
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(options[index]),
                  leading: const Icon(Icons.book),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Seleccionaste: ${options[index]}'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: options.length,
            ),
          ),
        ],
      ),
    );
  }
}
