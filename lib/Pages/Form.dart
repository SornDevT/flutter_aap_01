import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class User {
  late String email;
  late String password;
  late String gender;
  late bool agreePolicy;
  late bool receiveEmail;

  User() {
    this.email = "";
    this.password = "";
    this.gender = "male";
    this.agreePolicy = false;
    this.receiveEmail = false;
  }
}

final _formkey = GlobalKey<FormState>();

User user = User();

TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();

bool _checkForm = false;

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: _formkey,
            child: ListView(
              children: [
                TextFormField(
                  onChanged: (value) {
                    _CF();
                  },
                  controller: _email,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'ປ້ອນອີເມວລ໌',
                    icon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ກະລຸນາປ້ອນຂໍ້ມູນ';
                    }
                    if (!isEmail(value)) {
                      return 'ອີເມວລ໌ບໍ່ຖຶກຕ້ອງ';
                    }
                  },
                ),
                TextFormField(
                  onChanged: (value) {
                    _CF();
                  },
                  controller: _password,
                  decoration: const InputDecoration(
                    labelText: 'Pasword',
                    hintText: 'ປ້ອນລະຫັດ',
                    icon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  // keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'ກະລຸນາປ້ອນລະຫັດຜ່ານ';
                    }
                    if (value.length < 5) {
                      return 'ລະຫັດຜ່ານຕ້ອງຫຼາຍກ່ວາ 5 ຕົວອັກສອນ';
                    }
                  },
                ),
                Row(
                  children: [
                    Text('ເພດ:'),
                    Radio(
                        value: 'male',
                        groupValue: user.gender,
                        onChanged: onChangedGender),
                    Text('ຊາຍ'),
                    Radio(
                        value: 'female',
                        groupValue: user.gender,
                        onChanged: onChangedGender),
                    Text('ຍິງ'),
                  ],
                ),
                Row(
                  children: [
                    Text('Receive Email:'),
                    Switch(
                        activeColor: Colors.red,
                        value: user.receiveEmail,
                        onChanged: (value) {
                          print(value);

                          setState(() {
                            user.receiveEmail = value;
                          });
                        })
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: user.agreePolicy,
                        onChanged: (value) {
                          setState(() {
                            user.agreePolicy = value!;
                          });
                        }),
                    Text('ຍອມຮັບເງື່ອນໄຂ'),
                  ],
                ),
                ElevatedButton(
                  onPressed: _checkForm ? _submitForm : null,
                  child: Text('ບັນທຶກຂໍ້ມູນ'),
                )
              ],
            )),
      ),
    );
  }

  void _CF() {
    print(_email.text);

    if (_email.text.isEmpty || _password.text.isEmpty) {
      setState(() {
        _checkForm = false;
      });
    } else {
      setState(() {
        _checkForm = true;
      });
    }
  }

  // void aa() {
  //   // ຂຽນ if ແບບຫຍໍ້
  //   _checkForm ? _submitForm() : null;

  //   // ຂຽນ if ແບບເຕັມ
  //   if (_checkForm) {
  //     return _submitForm();
  //   } else {
  //     return null;
  //   }
  // }

  void onChangedGender(value) {
    print(value);

    setState(() {
      user.gender = value;
    });
  }

  void _submitForm() {
    if (_formkey.currentState!.validate()) {
      if (user.agreePolicy == false) {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('ແຈ້ງເຕືອນຈາກລະບົບ'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('ທ່ານ ຕ້ອງຍອມຮັບເງື່ອນໄຂ'),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('ປິດ')),
                ],
              );
            });
      } else {
        print(user.agreePolicy);
        user.email = _email.text;
        user.password = _password.text;
      }
    }
  }
}
