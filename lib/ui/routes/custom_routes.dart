import 'package:flutter/material.dart';
import 'package:prices_dinamica/ui/pages/cash_withdrawal/cash_withdrawal_page.dart';
import 'package:prices_dinamica/ui/pages/deposit_money/deposit_money_page.dart';
import 'package:prices_dinamica/ui/pages/home/home_page.dart';
import 'package:prices_dinamica/ui/pages/transfer_money/transfer_money_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/ingresar-dinero': (context) => const DepositMoneyPage(),
  '/retiro-efectivo': (context) => const CashWithdrawalPage(),
  '/transferir-dinero': (context) => const TransferMoneyPage(),
};
