import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/screens/details/widgets/actionsMenu.dart';
import 'package:agenda_de_contatos/screens/details/widgets/customDivider.dart';
import 'package:agenda_de_contatos/style.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Contact _contact;

  Details(this._contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Hero(
              tag: _contact.cel,
              child: Icon(
                (_contact.favorite) ? Icons.star : Icons.star_border,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: _contact.name,
              child: Image.asset(
                _contact.photo,
                width: 500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                _contact.name,
                style: TextStyle(
                  color: greyTheme,
                  fontSize: 26,
                ),
              ),
            ),
            CustomDivider(),
            ActionsMenu(),
            CustomDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 22,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _contact.cel,
                            style: TextStyle(
                              color: greyTheme,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Celular",
                            style: TextStyle(
                              color: greyTheme,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.videocam,
                        color: Theme.of(context).primaryColor,
                        size: 22,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.message_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 22,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomDivider(20),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 16,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 22,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    _contact.email,
                    style: TextStyle(
                      color: greyTheme,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
