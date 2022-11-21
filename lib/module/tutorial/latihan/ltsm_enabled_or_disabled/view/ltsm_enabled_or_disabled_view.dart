import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_enabled_or_disabled_controller.dart';

class LtsmEnabledOrDisabledView extends StatefulWidget {
  const LtsmEnabledOrDisabledView({Key? key}) : super(key: key);

  Widget build(context, LtsmEnabledOrDisabledController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmEnabledOrDisabled"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                /*
                ? Buat variabel enabled di dalam State/Controller
                ! bool enabled = false;

                ? Tambahkan widget ini di dalam Column:
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.enabled ? Colors.orange : Colors.grey,
                  ),
                  onPressed: () {
                    if(controller.enabled==false) return;
                  },
                ),

                ? Buat button lainnya, dan tambahkan kode ini di dalam event onPressed()
                /*
                controller.enabled = controller.enabled!;
                controller.setState((){});
                */
                  
                */

                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.enabled ? Colors.orange : Colors.grey,
                  ),
                  onPressed: () {
                    if (controller.enabled == false) return;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    controller.setState(() {
                      controller.enabled = !controller.enabled;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text("Enable ${controller.enabled}"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmEnabledOrDisabledView> createState() =>
      LtsmEnabledOrDisabledController();
}
