// Static data for this class. Real data comes from the course API later on.
// This file is not part of the exercises: read it, do not change it.
import 'package:flutter/material.dart';

/// Weather condition with the Material icon and the Portuguese label.
enum WeatherType {
  sunny('Sol', Icons.wb_sunny),
  partlyCloudy('Parcialmente nublado', Icons.cloud_queue),
  cloudy('Nublado', Icons.cloud),
  rain('Chuva', Icons.umbrella),
  storm('Trovoada', Icons.thunderstorm);

  const WeatherType(this.description, this.icon);

  final String description;
  final IconData icon;
}

/// Forecast for one day.
class DayForecast {
  const DayForecast({
    required this.date,
    required this.type,
    required this.tMin,
    required this.tMax,
    required this.rainChance,
    required this.windKmh,
  });

  final DateTime date;
  final WeatherType type;
  final double tMin;
  final double tMax;
  final int rainChance; // 0 to 100
  final double windKmh;

  static const _weekdays = ['Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'];

  /// Short weekday label in Portuguese: 'Seg', 'Ter', ...
  String get weekday => _weekdays[date.weekday - 1];
}

/// One of the nine islands, with the photo in assets/img/.
class Island {
  const Island(this.id, this.name, this.image);

  final String id; // used in the route: /island/pico
  final String name;
  final String image;
}

const islands = [
  Island('sao-miguel', 'São Miguel', 'assets/img/sao_miguel.jpg'),
  Island('santa-maria', 'Santa Maria', 'assets/img/santa_maria.jpg'),
  Island('terceira', 'Terceira', 'assets/img/terceira.jpg'),
  Island('graciosa', 'Graciosa', 'assets/img/graciosa.jpg'),
  Island('sao-jorge', 'São Jorge', 'assets/img/sao_jorge.jpg'),
  Island('pico', 'Pico', 'assets/img/pico.jpg'),
  Island('faial', 'Faial', 'assets/img/faial.jpg'),
  Island('flores', 'Flores', 'assets/img/flores.jpg'),
  Island('corvo', 'Corvo', 'assets/img/corvo.jpg'),
];

const location = 'Ponta Delgada';
const currentIsland = Island(
  'sao-miguel',
  'São Miguel',
  'assets/img/sao_miguel.jpg',
);

/// Five days starting today.
final List<DayForecast> forecasts = () {
  final today = DateTime.now();
  DateTime day(int i) => DateTime(today.year, today.month, today.day + i);
  return [
    DayForecast(
      date: day(0),
      type: WeatherType.partlyCloudy,
      tMin: 17,
      tMax: 23,
      rainChance: 20,
      windKmh: 18,
    ),
    DayForecast(
      date: day(1),
      type: WeatherType.rain,
      tMin: 16,
      tMax: 21,
      rainChance: 80,
      windKmh: 32,
    ),
    DayForecast(
      date: day(2),
      type: WeatherType.cloudy,
      tMin: 16,
      tMax: 22,
      rainChance: 40,
      windKmh: 25,
    ),
    DayForecast(
      date: day(3),
      type: WeatherType.sunny,
      tMin: 18,
      tMax: 25,
      rainChance: 5,
      windKmh: 12,
    ),
    DayForecast(
      date: day(4),
      type: WeatherType.storm,
      tMin: 17,
      tMax: 21,
      rainChance: 90,
      windKmh: 45,
    ),
  ];
}();

/// How hard a trail is, with the Portuguese label and a colour.
enum Difficulty {
  easy('Fácil', Colors.green),
  medium('Média', Colors.orange),
  hard('Difícil', Colors.red);

  const Difficulty(this.label, this.color);

  final String label;
  final Color color;
}

/// A walking trail on one of the islands. Distances and times are approximate.
class Trail {
  const Trail({
    required this.id,
    required this.name,
    required this.islandId,
    required this.distanceKm,
    required this.duration,
    required this.difficulty,
    required this.description,
  });

  final String id; // used in the route: /trails/lagoa-do-fogo
  final String name;
  final String islandId; // the id of an Island: 'sao-miguel', 'pico', ...
  final double distanceKm;
  final String duration; // '3 h 30'
  final Difficulty difficulty;
  final String description;

  /// The island of this trail, with the name and the photo.
  Island get island => islands.firstWhere((i) => i.id == islandId);

  /// Distance with a decimal comma: '10,5 km', '12 km'.
  String get distance {
    final n = distanceKm == distanceKm.roundToDouble()
        ? distanceKm.toStringAsFixed(0)
        : distanceKm.toString();
    return '${n.replaceAll('.', ',')} km';
  }
}

const trails = [
  Trail(
    id: 'lagoa-do-fogo',
    name: 'Lagoa do Fogo',
    islandId: 'sao-miguel',
    distanceKm: 10.5,
    duration: '3 h 30',
    difficulty: Difficulty.medium,
    description:
        'Desce da serra até à margem da lagoa, numa reserva natural '
        'sem estradas.',
  ),
  Trail(
    id: 'sete-cidades',
    name: 'Vista do Rei – Sete Cidades',
    islandId: 'sao-miguel',
    distanceKm: 12,
    duration: '4 h',
    difficulty: Difficulty.medium,
    description:
        'Pelo rebordo da caldeira, com as lagoas Azul e Verde '
        'lá em baixo.',
  ),
  Trail(
    id: 'salto-do-prego',
    name: 'Salto do Prego',
    islandId: 'sao-miguel',
    distanceKm: 4.5,
    duration: '2 h',
    difficulty: Difficulty.easy,
    description:
        'Do Faial da Terra até uma cascata, entre ribeiras e '
        'moinhos antigos.',
  ),
  Trail(
    id: 'pico-alto',
    name: 'Pico Alto',
    islandId: 'santa-maria',
    distanceKm: 6,
    duration: '2 h',
    difficulty: Difficulty.easy,
    description: 'Sobe ao ponto mais alto da ilha, com vista para as baías.',
  ),
  Trail(
    id: 'misterios-negros',
    name: 'Mistérios Negros',
    islandId: 'terceira',
    distanceKm: 5,
    duration: '2 h 30',
    difficulty: Difficulty.medium,
    description: 'Entre domos de lava e turfeiras, no interior da ilha.',
  ),
  Trail(
    id: 'caldeira-graciosa',
    name: 'Volta à Caldeira',
    islandId: 'graciosa',
    distanceKm: 8,
    duration: '3 h',
    difficulty: Difficulty.easy,
    description: 'À volta da caldeira, com a Furna do Enxofre lá dentro.',
  ),
  Trail(
    id: 'faja-santo-cristo',
    name: 'Serra do Topo – Fajã de Santo Cristo',
    islandId: 'sao-jorge',
    distanceKm: 10,
    duration: '3 h 30',
    difficulty: Difficulty.medium,
    description:
        'Desce até à fajã da lagoa, onde só se chega a pé ou '
        'de moto.',
  ),
  Trail(
    id: 'montanha-do-pico',
    name: 'Montanha do Pico',
    islandId: 'pico',
    distanceKm: 7.6,
    duration: '7 h',
    difficulty: Difficulty.hard,
    description:
        'Subida ao ponto mais alto de Portugal, 2351 m. Exige registo '
        'na Casa da Montanha.',
  ),
  Trail(
    id: 'caldeira-faial',
    name: 'Volta à Caldeira do Faial',
    islandId: 'faial',
    distanceKm: 7,
    duration: '2 h 30',
    difficulty: Difficulty.easy,
    description: 'À volta da cratera com 2 km de diâmetro no centro da ilha.',
  ),
  Trail(
    id: 'capelinhos',
    name: 'Vulcão dos Capelinhos',
    islandId: 'faial',
    distanceKm: 4,
    duration: '1 h 30',
    difficulty: Difficulty.easy,
    description: 'Sobre as cinzas da erupção de 1957, ao lado do farol.',
  ),
  Trail(
    id: 'faja-lopo-vaz',
    name: 'Fajã de Lopo Vaz',
    islandId: 'flores',
    distanceKm: 3,
    duration: '1 h 30',
    difficulty: Difficulty.hard,
    description: 'Uma descida íngreme até uma fajã no sul da ilha.',
  ),
  Trail(
    id: 'faja-grande',
    name: 'Lajedo – Fajã Grande',
    islandId: 'flores',
    distanceKm: 12,
    duration: '4 h',
    difficulty: Difficulty.medium,
    description: 'Pela costa oeste, entre ribeiras e cascatas.',
  ),
  Trail(
    id: 'caldeirao',
    name: 'Caldeirão',
    islandId: 'corvo',
    distanceKm: 5,
    duration: '2 h',
    difficulty: Difficulty.medium,
    description: 'Desce ao fundo da cratera, com lagoas e pequenos ilhéus.',
  ),
];
