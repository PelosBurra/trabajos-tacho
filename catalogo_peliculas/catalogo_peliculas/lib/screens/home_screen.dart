import 'package:flutter/material.dart';
import '../data/peliculas_data.dart';
import '../models/pelicula.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String generoActual = 'Todas';
  String texto = '';

  @override
  Widget build(BuildContext context) {
    // Peliculas que se van a mostrar segun el filtro y la busqueda
    List<Pelicula> lista = peliculas.where((p) {
      bool porGenero = generoActual == 'Todas' || p.genero == generoActual;
      bool porTexto = p.titulo.toLowerCase().contains(texto.toLowerCase());
      return porGenero && porTexto;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Barra de busqueda
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Buscar',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (valor) {
                setState(() {
                  texto = valor;
                });
              },
            ),
          ),

          // Botones de genero
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: generos.map((g) {
                return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        generoActual = g;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          generoActual == g ? Colors.indigo : Colors.grey[300],
                      foregroundColor:
                          generoActual == g ? Colors.white : Colors.black,
                    ),
                    child: Text(g),
                  ),
                );
              }).toList(),
            ),
          ),

          // Cuadricula de peliculas
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: lista.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final pelicula = lista[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(pelicula: pelicula),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Hero(
                            tag: pelicula.titulo,
                            child: Image.asset(
                              pelicula.imagen,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pelicula.titulo,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                pelicula.sinopsis,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
