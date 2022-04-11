import 'package:clash_status/pages/home_player/player_result_data.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class InicialTextFild extends StatefulWidget {
  const InicialTextFild({Key? key}) : super(key: key);

  @override
  State<InicialTextFild> createState() => _InicialTExtFildState();
}

class _InicialTExtFildState extends State<InicialTextFild> {
  final _formKey = GlobalKey<FormState>();
  var tagPlayerController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: Validatorless.multiple([
              Validatorless.required("Tag Requeria"),
            ]),
            controller: tagPlayerController,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              label: const Text("Digite sua Tag aqui"),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),

            child: ElevatedButton(
              onPressed: () {
                var formValid = _formKey.currentState?.validate() ?? false;
                if (formValid) {
                  setState(() {
                    var tag = tagPlayerController.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => PlayerData(tag)),
                      ),
                    );
                  });
                }
              },
              
              child: const Text("Procurar"),
            ),
          ),
        ],
      ),
    );
  }
}
