
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_application_2/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RxInt counter = 0.obs;

  final box = GetStorage();

  @override
  void initState() {
    super.initState();
    counter.value = box.read('counter') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      getPages: AppRoutes.pages,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.counter,
    required this.box,
  });

  final RxInt counter;
  final GetStorage box;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Counter: ${counter.value}'),
              ElevatedButton(
                onPressed: () {
                  counter.value--;
                  box.write('counter', counter.value);
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
          box.write('counter', counter.value);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
