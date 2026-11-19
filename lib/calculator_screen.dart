import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  String result = '';

  void calculate(String op) {
    final double? a = double.tryParse(num1Controller.text.trim());
    final double? b = double.tryParse(num2Controller.text.trim());

    if (a == null || b == null) {
      setState(() => result = 'Enter valid numbers.');
      return;
    }

    double? value;
    switch (op) {
      case '+':
        value = a + b;
        break;
      case '-':
        value = a - b;
        break;
      case '*':
        value = a * b;
        break;
      case '/':
        if (b == 0) {
          setState(() => result = 'Cannot divide by zero.');
          return;
        }
        value = a / b;
        break;
    }

    setState(() => result = value!.toStringAsFixed(1));
  }

  void clear() {
    num1Controller.clear();
    num2Controller.clear();
    setState(() => result = '');
  }

  @override
  void dispose() {
    num1Controller.dispose();
    num2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          TextField(
            controller: num1Controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'First Number',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: num2Controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Second Number',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => calculate('+'),
                  child: const Text('+'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => calculate('-'),
                  child: const Text('−'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => calculate('*'),
                  child: const Text('×'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => calculate('/'),
                  child: const Text('÷'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                result.isEmpty ? 'Result: —' : 'Result: $result',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: clear,
            child: const Text('Clear'),
          ),
        ],
      ),
    );
  }
}