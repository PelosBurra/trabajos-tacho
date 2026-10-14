import 'package:flutter/material.dart';
import '../models/pelicula.dart';

class DetailScreen extends StatefulWidget {
  final Pelicula pelicula;

  const DetailScreen({super.key, required this.pelicula});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool esFavorita = false;

  @override
  Widget build(BuildContext context) {
    final p = widget.pelicula;

    return Scaffold(
      appBar: AppBar(title: Text(p.titulo)),
      body: ListView(
        children: [
          Hero(
            tag: p.titulo,
            child: Image.asset(
              p.imagen,
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  p.titulo,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(p.genero, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.star, color: Colors.orange),
                        Text('${p.calificacion}'),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.access_time),
                        Text(p.duracion),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.calendar_today),
                        Text('${p.anio}'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Sinopsis',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(p.sinopsis),
                const SizedBox(height: 12),
                Text('Director: ${p.director}'),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        esFavorita = !esFavorita;
                      });
                    },
                    icon: Icon(
                      esFavorita ? Icons.favorite : Icons.favorite_border,
                    ),
                    label: Text(esFavorita ? 'En favoritos' : 'Favorito'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
