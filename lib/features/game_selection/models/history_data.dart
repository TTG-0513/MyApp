import 'dart:ffi';

class HistoryData {
  final Int siege;
  final Int runden;
  final Int firstdarts;
  final Int rundendurchschnitt;
  final Int spiele;
  final Int verloren;
  final Double checkout;
  final Double durchschnittspunkte;

  HistoryData({
    required this.spiele,
    required this.runden,
    required this.siege,
    required this.verloren,
    required this.firstdarts,
    required this.rundendurchschnitt,
    required this.checkout,
    required this.durchschnittspunkte,
  });
}
