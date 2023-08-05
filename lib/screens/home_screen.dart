import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/custm_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
        ),
      ),
      body: Center(
        child: Container(
          child: const Text("It's my Home"),
        ),
      ),
      drawer: CustumDrawer(),
    );
  }
}
