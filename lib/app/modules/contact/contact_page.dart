import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marmita_express/app/modules/contact/contact_store.dart';
import 'package:marmita_express/app/modules/contact/shared/widgets/contact_widget.dart';

class ContactPage extends StatefulWidget {
  final String amount;
  const ContactPage({required this.amount, Key? key}) : super(key: key);
  @override
  ContactPageState createState() => ContactPageState();
}

class ContactPageState extends State<ContactPage> {
  ContactStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: InkWell(
                    onTap: () {
                      Modular.to.navigate('/cart/');
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                title: const Text(
                  'Voltar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 25, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contato',
                      style: GoogleFonts.cabin(fontSize: 26),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Column(
                children: [
                  Observer(builder: (_) {
                    return Column(
                      children: [
                        ContactWidget(
                          title: 'Nome',
                          hint: 'Insira seu nome',
                          type: TextInputType.text,
                          controller: store.nameController,
                          onChanged: (String value) => store.validateForm(),
                        ),
                        ContactWidget(
                          title: 'Email',
                          hint: 'Insira seu email',
                          type: TextInputType.emailAddress,
                          controller: store.emailController,
                          onChanged: (String value) => store.validateForm(),
                        ),
                        ContactWidget(
                          title: 'Contato',
                          hint: 'Insira seu telefone',
                          type: TextInputType.phone,
                          controller: store.phoneController,
                          onChanged: (String value) => store.validateForm(),
                        ),
                        ContactWidget(
                          title: 'Address',
                          hint: 'Enter Your Current Address',
                          type: TextInputType.text,
                          controller: store.addressController,
                          onChanged: (String value) => store.validateForm(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 25),
                          child: Text(
                            'Certifique-se de escrever o endereço atual e o número de telefone ativo '
                            ',pois serão usados para entregar o seu item.',
                            style: GoogleFonts.cabin(
                                fontSize: 12, color: Colors.grey),
                          ),
                        )
                      ],
                    );
                  }),
                  Observer(builder: (_) {
                    return Container(
                      alignment: Alignment.bottomRight,
                      height: 60,
                      padding: const EdgeInsets.only(top: 22, right: 20),
                      child: ElevatedButton(
                        onPressed: store.client.isFormValid
                            ? () {
                                store.saveUserInformation();
                                Modular.to.navigate('/payment/',
                                    arguments: widget.amount);
                              }
                            : null,
                        child: const Text(
                          'Concluir',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 10,

                          //padding: EdgeInsets.symmetric(horizontal: 70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
