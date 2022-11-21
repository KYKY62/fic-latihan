import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              ? Buat variabel loading di dalam State/Controller
              ! bool loading = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                CircularProgressIndicator();

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.loading = controller.loading!;
              controller.setState((){});
              */
                
              */

              controller.loading
                  ? const CircularProgressIndicator()
                  : Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const NetworkImage(
                            "https://images.unsplash.com/photo-1581833971358-2c8b550f87b3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80",
                          ),
                        ),
                        title: const Text("Harry Kane"),
                        subtitle: const Text("Programmer"),
                      ),
                    ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.setState(() {
                    controller.loading = !controller.loading;
                  });
                },
                child:
                    Text(controller.loading ? "Loading True" : "Loading false"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
