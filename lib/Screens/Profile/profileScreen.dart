import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ifood/Screens/CustomWidgets/CircleAvatar.dart';
import 'package:ifood/Screens/CustomWidgets/ListTile.dart';
import 'package:ifood/Screens/CustomWidgets/Style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const[
            Icon(Icons.qr_code)
          ],
        ),
        body: ListView(
          children: [
            Row(
              children: [
                circleAvatar(
                    'https://imagensfree.com.br/wp-content/uploads/2021/11/icone-ifood-preto-300x300.png'),
                Text(
                  'Nicolas Barbosa ',
                  style: textRobotoBold(16),
                ),
              ],
            ),
            listTile(Icons.message, "Conversas", "Histórico de Conversas"),
            const Divider(),
            listTile(Icons.notifications, "Notificações", "Minha central de notificações"),
            const Divider(),
            listTile(Icons.payment, "Pagamentos", "Meus saldos e cartões"),
            const Divider(),
            listTile(Icons.store, "Assinaturas", "Minhas Assinaturas"),
            const Divider(),
            listTile(Icons.loyalty, "Clube aiFood", "Meus Beneficios exlusivos"),
            const Divider(),
            listTile(Icons.local_offer, "Cupons", "Meus cupons de desconto"),
            const Divider(),
            listTile(Icons.card_giftcard, "aifood Card", "Minha área de compra e resgate"),
            const Divider(),
            listTile(Icons.loyalty, "Fidelidade", "Minhas fidelidades"),
            const Divider(),
            listTile(Icons.favorite, "Favoritos", "Meu locais favoritos"),
            const Divider(),
            listTile(Icons.explore, "Descobrir", "Encontre novidades quentinhas"),
            const Divider(),
            listTile(Icons.location_on, "Endereço", "Meus endereços de entrega"),
            const Divider(),
            listTile(Icons.account_circle, "Dados da conta", "Minhas informações da conta"),
            
          ],
        )
      );
  }
}
