import 'package:flutter/material.dart';
import 'package:flutter_homework_39/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderItem(),
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.watch<ProviderItem>().isActive ? Colors.black : Colors.blue,
        title: Switch(
          value: context.watch<ProviderItem>().isActive,
          onChanged: (onChanged) {
            context.read<ProviderItem>().isActive = onChanged;
            setState(() {});
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Container(
          color: context.watch<ProviderItem>().isActive
              ? context.watch<ProviderItem>().colors2[index]
              : context.watch<ProviderItem>().colors[index],
        ),
        itemCount: context.watch<ProviderItem>().colors.length,
      ),
    );
  }
}
