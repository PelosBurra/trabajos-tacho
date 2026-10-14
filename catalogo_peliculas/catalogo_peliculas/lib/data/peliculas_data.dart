import '../models/pelicula.dart';

// Lista de peliculas de prueba
List<Pelicula> peliculas = [
  Pelicula(
    titulo: 'Inception',
    genero: 'Ciencia ficción',
    sinopsis:
        'Un ladrón que roba secretos entrando en los sueños recibe la misión '
        'de implantar una idea en la mente de un empresario.',
    imagen: 'assets/images/inception.png',
    anio: 2010,
    duracion: '2h 28min',
    director: 'Christopher Nolan',
    calificacion: 8.8,
  ),
  Pelicula(
    titulo: 'Interstellar',
    genero: 'Ciencia ficción',
    sinopsis:
        'Un grupo de astronautas viaja por un agujero de gusano para buscar '
        'un nuevo hogar para la humanidad.',
    imagen: 'assets/images/interstellar.png',
    anio: 2014,
    duracion: '2h 49min',
    director: 'Christopher Nolan',
    calificacion: 8.7,
  ),
  Pelicula(
    titulo: 'El padrino',
    genero: 'Drama',
    sinopsis:
        'La historia de la familia Corleone, una poderosa familia mafiosa de '
        'Nueva York, y el cambio de liderazgo de su patriarca.',
    imagen: 'assets/images/padrino.png',
    anio: 1972,
    duracion: '2h 55min',
    director: 'Francis Ford Coppola',
    calificacion: 9.2,
  ),
  Pelicula(
    titulo: 'Parásitos',
    genero: 'Drama',
    sinopsis:
        'Una familia pobre consigue trabajo poco a poco en la casa de una '
        'familia rica, y todo se complica.',
    imagen: 'assets/images/parasitos.png',
    anio: 2019,
    duracion: '2h 12min',
    director: 'Bong Joon-ho',
    calificacion: 8.5,
  ),
  Pelicula(
    titulo: 'Amores perros',
    genero: 'Drama',
    sinopsis:
        'Tres historias de la Ciudad de México que se cruzan después de un '
        'accidente de auto.',
    imagen: 'assets/images/amores_perros.png',
    anio: 2000,
    duracion: '2h 34min',
    director: 'Alejandro González Iñárritu',
    calificacion: 8.1,
  ),
  Pelicula(
    titulo: 'El viaje de Chihiro',
    genero: 'Animación',
    sinopsis:
        'Una niña entra a un mundo de espíritus y tiene que trabajar en una '
        'casa de baños para rescatar a sus papás.',
    imagen: 'assets/images/viaje_chihiro.png',
    anio: 2001,
    duracion: '2h 5min',
    director: 'Hayao Miyazaki',
    calificacion: 8.6,
  ),
  Pelicula(
    titulo: 'Coco',
    genero: 'Animación',
    sinopsis:
        'Miguel quiere ser músico y en el Día de Muertos viaja a la Tierra de '
        'los Muertos, donde conoce la historia de su familia.',
    imagen: 'assets/images/coco.png',
    anio: 2017,
    duracion: '1h 45min',
    director: 'Lee Unkrich',
    calificacion: 8.4,
  ),
  Pelicula(
    titulo: 'El laberinto del fauno',
    genero: 'Fantasía',
    sinopsis:
        'En la España de 1944, una niña descubre un laberinto y un fauno que '
        'le pone tres pruebas.',
    imagen: 'assets/images/laberinto.png',
    anio: 2006,
    duracion: '1h 58min',
    director: 'Guillermo del Toro',
    calificacion: 8.2,
  ),
];

List<String> generos = [
  'Todas',
  'Ciencia ficción',
  'Drama',
  'Animación',
  'Fantasía',
];
