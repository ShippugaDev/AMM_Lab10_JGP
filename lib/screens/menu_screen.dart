import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  Widget opcionMenu({
    required IconData icono,
    required String titulo,
    required String subtitulo,
  }) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          icono,
          color: Colors.purpleAccent,
        ),
        title: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 16,
        ),
        onTap: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Menú HBO Max'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Text(
            'Categorías',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          opcionMenu(
            icono: Icons.movie,
            titulo: 'Películas',
            subtitulo: 'Explora películas destacadas',
          ),

          opcionMenu(
            icono: Icons.tv,
            titulo: 'Series',
            subtitulo: 'Mira tus series favoritas',
          ),

          opcionMenu(
            icono: Icons.family_restroom,
            titulo: 'Niños y Familia',
            subtitulo: 'Contenido para toda la familia',
          ),

          opcionMenu(
            icono: Icons.star,
            titulo: 'Originales HBO',
            subtitulo: 'Producciones exclusivas',
          ),

          opcionMenu(
            icono: Icons.arrow_back,
            titulo: 'Volver',
            subtitulo: 'Regresar a la pantalla principal',
          ),
        ],
      ),
    );
  }
}