import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/CustomAppBar.dart';

import 'account/account_screen.dart';
import 'package:oxe_banking/screens/card/card_screen.dart';
import 'package:oxe_banking/screens/loan/loan_screen.dart';
import 'package:oxe_banking/screens/savings/savings_screen.dart';
import 'package:oxe_banking/screens/transfer/transfer_screen.dart';
import 'package:oxe_banking/screens/payments/payments_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _menuCard(
      {required String title,
      required IconData iconData,
      required Function()? onTap}) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.orange,
              size: 48.0,
            ),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.0,
          children: [
            _menuCard(
                title: 'Extrato', iconData: Icons.assignment, onTap: () {}),
            _menuCard(
                title: 'Transferência',
                iconData: Icons.sync_alt,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TransferScreen()),
                  );
                }),
            _menuCard(
                title: 'Empréstimos',
                iconData: Icons.monetization_on,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoanScreen()),
                  );
                }),
            _menuCard(
                title: 'Pagamentos',
                iconData: Icons.currency_exchange,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentsScreen()),
                  );
                }),
            _menuCard(
                title: 'Poupança',
                iconData: Icons.account_balance_wallet,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SavingsScreen()),
                  );
                }),
            _menuCard(
                title: 'Cartão',
                iconData: Icons.credit_card,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CardScreen()),
                  );
                }),
            _menuCard(
                title: 'Investimento',
                iconData: Icons.currency_exchange,
                onTap: () {}),
            _menuCard(
                title: 'Conta',
                iconData: Icons.account_balance,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountScreen()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
