import 'package:flutter/material.dart';
import '../data/peliculas_data.dart';
import '../widgets/pelicula_card.dart';
import 'menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String categoriaSeleccionada = 'Comedia';

  int obtenerColumnas(double ancho) {
    if (ancho >= 1200) {
      return 4;
    } else if (ancho >= 800) {
      return 3;
    } else {
      return 2;
    }
  }

  Widget categoriaBoton(String categoria) {
    final bool estaSeleccionada = categoriaSeleccionada == categoria;

    return GestureDetector(
      onTap: () {
        setState(() {
          categoriaSeleccionada = categoria;
        });
      },
      child: Text(
        categoria,
        style: TextStyle(
          color: estaSeleccionada ? Colors.white : Colors.white38,
          fontSize: 22,
          fontWeight: estaSeleccionada ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final peliculasFiltradas = peliculas.where((pelicula) {
      return pelicula['categoria'] == categoriaSeleccionada;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'HBO Max',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'INGRESA',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('SUSCRÍBETE'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()),
                );
              },
              icon: const Icon(Icons.menu, color: Colors.white),
            ),
          ),
        ],
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          final columnas = obtenerColumnas(constraints.maxWidth);

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),

                  const Center(
                    child: Text(
                      'DESCUBRE LO MEJOR EN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Center(
                    child: Text(
                      categoriaSeleccionada,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      categoriaBoton('Acción'),
                      categoriaBoton('Comedia'),
                      categoriaBoton('Drama'),
                    ],
                  ),

                  const SizedBox(height: 30),

                  Text(
                    'Series de $categoriaSeleccionada destacadas',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  peliculasFiltradas.isEmpty
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.all(40),
                            child: Text(
                              'No hay contenido disponible en esta categoría',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      : GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: peliculasFiltradas.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: columnas,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 1.55,
                              ),
                          itemBuilder: (context, index) {
                            final pelicula = peliculasFiltradas[index];

                            return PeliculaCard(
                              titulo: pelicula['titulo']!,
                              categoria: pelicula['categoria']!,
                              imagen: pelicula['imagen']!,
                            );
                          },
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
