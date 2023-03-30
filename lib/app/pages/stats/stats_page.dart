import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/text_styles.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorsApp.lightYellow,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: context.colorsApp.lightYellow,
        elevation: 0,
      ),
      body: DataTable(
        columnSpacing: 20,
        dataTextStyle: context.textStyles.textSolidBlueData,
        columns: const [
          DataColumn(label: Text('')),
          DataColumn(
              label: Text('Bulbasaur',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontFamily: 'Pokemon-Solid'))),
          DataColumn(
              label: Text('Charmander',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontFamily: 'Pokemon-Solid'))),
          DataColumn(
              label: Text('Squirtle',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontFamily: 'Pokemon-Solid'))),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('Partidas')),
            DataCell(Text('5',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('7',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('8',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontFamily: 'Pokemon-Solid'))),
          ]),
          DataRow(cells: [
            DataCell(Text('Vitórias')),
            DataCell(Text('5',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('7',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('8',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontFamily: 'Pokemon-Solid'))),
          ]),
          DataRow(cells: [
            DataCell(Text('Derrotas')),
            DataCell(Text('5',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('7',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('8',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontFamily: 'Pokemon-Solid'))),
          ]),
          DataRow(cells: [
            DataCell(Text('Empates')),
            DataCell(Text('5',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('7',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('8',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontFamily: 'Pokemon-Solid'))),
          ]),
          DataRow(cells: [
            DataCell(Text('Média')),
            DataCell(Text('5',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('7',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontFamily: 'Pokemon-Solid'))),
            DataCell(Text('8',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontFamily: 'Pokemon-Solid'))),
          ]),
          DataRow(cells: [
            DataCell(Text('Total')),
            DataCell(Text('')),
            DataCell(Text('20')),
            DataCell(Text('')),
          ]),
        ],
      ),
    );
  }
}
