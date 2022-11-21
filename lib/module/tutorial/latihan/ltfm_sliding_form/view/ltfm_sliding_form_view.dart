import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSlidingFormView extends StatefulWidget {
  const LtfmSlidingFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmSlidingFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSlidingForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                width: controller.submitted
                    ? 160
                    : MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Apply Leave",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //! 1. buat datepicker, atur label-nya menjadi
                      //? "Leave Date"
                      QDatePicker(
                        label: "Leave Date",
                        onChanged: (p0) {},
                      ),

                      //! 2. Buat textarea, atur label-nya menjadi
                      //? "Reason"
                      Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Reason",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextField(
                                maxLines: 8, //or null
                                decoration: InputDecoration.collapsed(
                                  hintText: "Enter your text here",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //! 3. Tambahkan Divider
                      const Divider(),
                      //! 4. Buat sebuah tombol:
                      //? width: MediaQuery.of(context).size.width,
                      //? height: 40

                      //! 5. Ketika di klik, tambahkan kode ini:
                      /*
                        controller.submitted = !controller.submitted;
                        controller.update();
                      */
                      ElevatedButton(
                        onPressed: () {
                          controller.submitted = !controller.submitted;
                          controller.update();
                        },
                        child: const Text("Apply"),
                      ),
                      //! 6. Jika Container mengecil ketika tombol di klik
                      //? maka task ini selesai!
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSlidingFormView> createState() => LtfmSlidingFormController();
}
