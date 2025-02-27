class BatsmanData {
  final String name;
  final String info;
  final String runs;
  final String balls;
  final String fours;
  final String sixes;
  final String strikeRate;
  final String imageUrl;
  final bool isSelected;

  BatsmanData({
    required this.name,
    required this.info,
    required this.runs,
    required this.balls,
    required this.fours,
    required this.sixes,
    required this.strikeRate,
    this.imageUrl = 'assets/player.png',
    this.isSelected = false,
  });
}

class WicketData {
  final String player;
  final String over;
  final String score;

  WicketData({
    required this.player,
    required this.over,
    required this.score,
  });
}

class YetToBatData {
  final String player;
  final String position;

  YetToBatData({
    required this.player,
    required this.position,
  });
}

class BowlerData {
  final String name;
  final String overs;
  final String maidens;
  final String runs;
  final String wickets;
  final String economy;

  BowlerData({
    required this.name,
    required this.overs,
    required this.maidens,
    required this.runs,
    required this.wickets,
    required this.economy,
  });
}

class TeamData {
  static List<BatsmanData> bangladeshBatsmen = [
    BatsmanData(
      name: 'Litton Das',
      info: 'c Kohli b Bumrah',
      runs: '52',
      balls: '30',
      fours: '7',
      sixes: '2',
      strikeRate: '186.5',
    ),
    BatsmanData(
      name: 'Najmul Shanto',
      info: 'c Gill b Thakur',
      runs: '32',
      balls: '26',
      fours: '3',
      sixes: '1',
      strikeRate: '100.0',
    ),
    BatsmanData(
      name: 'Shakib Al Hasan',
      info: 'not out',
      runs: '102',
      balls: '76',
      fours: '10',
      sixes: '3',
      strikeRate: '156.0',
      isSelected: true,
    ),
    BatsmanData(
      name: 'Mushfiqur Rahim',
      info: 'b Bumrah',
      runs: '20',
      balls: '24',
      fours: '1',
      sixes: '2',
      strikeRate: '200.0',
    ),
    BatsmanData(
      name: 'Mahmudullah',
      info: 'b/w Jadeja',
      runs: '7',
      balls: '10',
      fours: '1',
      sixes: '0',
      strikeRate: '200.0',
    ),
    BatsmanData(
      name: 'Afif Hossain',
      info: 'not out',
      runs: '21',
      balls: '30',
      fours: '3',
      sixes: '0',
      strikeRate: '200.0',
    ),
  ];

  static List<BatsmanData> indiaBatsmen = [
    BatsmanData(
      name: 'Shubman Gill',
      info: 'c Shakib b Nasum',
      runs: '52',
      balls: '30',
      fours: '7',
      sixes: '2',
      strikeRate: '186.5',
    ),
    BatsmanData(
      name: 'Rohit Sharma',
      info: 'c Litton b Shakib',
      runs: '32',
      balls: '26',
      fours: '3',
      sixes: '1',
      strikeRate: '100.0',
    ),
    BatsmanData(
      name: 'Virat Kohli',
      info: 'not out',
      runs: '102',
      balls: '76',
      fours: '10',
      sixes: '3',
      strikeRate: '156.0',
      isSelected: true,
    ),
    BatsmanData(
      name: 'Ishan Kishan',
      info: 'b/w Shakib',
      runs: '21',
      balls: '30',
      fours: '3',
      sixes: '0',
      strikeRate: '200.0',
    ),
    BatsmanData(
      name: 'H. Pandya',
      info: 'c Afif b Miraj',
      runs: '32',
      balls: '26',
      fours: '3',
      sixes: '1',
      strikeRate: '100.0',
    ),
    BatsmanData(
      name: 'Axar Patel',
      info: 'b Shakib',
      runs: '20',
      balls: '24',
      fours: '1',
      sixes: '2',
      strikeRate: '200.0',
    ),
    BatsmanData(
      name: 'Ravindra Jadeja',
      info: 'b/w Taskin',
      runs: '7',
      balls: '10',
      fours: '1',
      sixes: '0',
      strikeRate: '200.0',
    ),
    BatsmanData(
      name: 'B. Kumar',
      info: 'c Mehedi b Taskin',
      runs: '7',
      balls: '10',
      fours: '1',
      sixes: '0',
      strikeRate: '200.0',
    ),
  ];

  static List<WicketData> bangladeshWickets = [
    WicketData(player: 'Litton Das', over: '10.1 Over', score: '1-72'),
    WicketData(player: 'Najmul Hossain Shanto', over: '15.6 Over', score: '2-122'),
    WicketData(player: 'Mushfiqur Rahim', over: '24.5 Over', score: '3-170'),
    WicketData(player: 'Mahmudullah', over: '32.3 Over', score: '4-230'),
  ];

  static List<WicketData> indiaWickets = [
    WicketData(player: 'Shubman Gill', over: '10.1 Over', score: '1-72'),
    WicketData(player: 'Rohit Sharma', over: '15.6 Over', score: '2-122'),
    WicketData(player: 'Ishan Kishan', over: '24.6 Over', score: '3-170'),
    WicketData(player: 'H. Pandya', over: '32.3 Over', score: '4-230'),
    WicketData(player: 'Axar Patel', over: '36.5 Over', score: '5-270'),
    WicketData(player: 'R. Jadeja', over: '40.1 Over', score: '6-300'),
    WicketData(player: 'B. Kumar', over: '48.3 Over', score: '7-312'),
  ];

  static List<YetToBatData> bangladeshYetToBat = [
    YetToBatData(player: 'Mehidy Hasan Miraz', position: 'in at 7'),
    YetToBatData(player: 'Ebadot Hossain', position: 'in at 8'),
    YetToBatData(player: 'Mustafizur Rahman', position: 'in at 9'),
    YetToBatData(player: 'Taskin Ahmed', position: 'in at 10'),
    YetToBatData(player: 'Hasan Mahmud', position: 'in at 11'),
  ];

  static List<YetToBatData> indiaYetToBat = [
    YetToBatData(player: 'Kuldeep Yadav', position: 'in at 8'),
    YetToBatData(player: 'Jasprit Bumrah', position: 'in at 10'),
    YetToBatData(player: 'Umran Malik', position: 'in at 11'),
  ];

  static List<BowlerData> bangladeshBowlers = [
    BowlerData(name: 'Shardul Thakur', overs: '4', maidens: '0', runs: '34', wickets: '0', economy: '3.6'),
    BowlerData(name: 'J. Bumrah', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
    BowlerData(name: 'R. Jadeja', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
    BowlerData(name: 'B. Kumar', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
    BowlerData(name: 'H. Pandya', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
  ];

  static List<BowlerData> indiaBowlers = [
    BowlerData(name: 'Mahidy Hasan', overs: '4', maidens: '0', runs: '34', wickets: '0', economy: '3.6'),
    BowlerData(name: 'Ebadot Hossain', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
    BowlerData(name: 'Mustafizur Rahman', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
    BowlerData(name: 'Taskin Ahmed', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
    BowlerData(name: 'Hasan Mahmud', overs: '3', maidens: '1', runs: '22', wickets: '1', economy: '2.1'),
  ];
}