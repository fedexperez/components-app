import 'package:flutter/material.dart';

import 'package:components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario',
                    hintText: 'Pepe',
                    icon: Icons.deblur_outlined,
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    helperText: 'Apellido del usuario',
                    hintText: 'Perez',
                    icon: Icons.person_add_alt,
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    helperText: 'Correo del usuario',
                    hintText: '@',
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    helperText: 'Clave del usuario',
                    hintText: '***',
                    icon: Icons.password,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'User', child: Text('User')),
                      DropdownMenuItem(value: 'Guest', child: Text('Guest')),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScopeNode().requestFocus();
                        if (!myFormKey.currentState!.validate()) {
                          // print('Invalid Form');
                          return;
                        }
                        ;
                        print(formValues);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text('Send Form'),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.send)
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
