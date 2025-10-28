import 'package:flutter/material.dart';
import '../Controller/amigosController.dart';
import '../Widget/input_number.dart';
import '../Widget/calculate_button.dart';

class AmigosView extends StatefulWidget {
  @override
  State<AmigosView> createState() => _AmigosViewState();
}

class _AmigosViewState extends State<AmigosView> {
  final controller = AmigosController();
  final num1Ctrl = TextEditingController();
  final num2Ctrl = TextEditingController();

  void _calcular() {
    try {
      controller.setNumeros(num1Ctrl.text, num2Ctrl.text);
      final resultado = controller.verificarAmistad();
      Navigator.pushNamed(
        context,
        '/resultado',
        arguments: {"resultado": resultado},
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ingrese solo números válidos')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: Text('Números Amigos'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Ingrese dos números para verificar si son amigos:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            InputNumber(controller: num1Ctrl, label: 'Primer número'),
            SizedBox(height: 10),
            InputNumber(controller: num2Ctrl, label: 'Segundo número'),
            SizedBox(height: 20),
            CalculateButton(onPressed: _calcular, label: 'Verificar'),
          ],
        ),
      ),
    );
  }
}
