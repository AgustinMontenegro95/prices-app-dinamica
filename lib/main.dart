import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prices_dinamica/constants/components.dart';
import 'package:prices_dinamica/domain/blocs/cash_withdrawal/cash_withdrawal_bloc.dart';
import 'package:prices_dinamica/domain/blocs/deposit_money/deposit_money_bloc.dart';
import 'package:prices_dinamica/domain/blocs/transfer_money/transfer_money_bloc.dart';
import 'package:prices_dinamica/domain/repositories/cash_withdrawal_repository.dart';
import 'package:prices_dinamica/domain/repositories/deposit_money_repository.dart';
import 'package:prices_dinamica/domain/repositories/trasnfer_money_repository.dart';
import 'package:prices_dinamica/domain/services/get_material_color.dart';
import 'package:prices_dinamica/ui/routes/custom_routes.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const PricesDinamica());
}

class PricesDinamica extends StatelessWidget {
  const PricesDinamica({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => CashWithdrawalRepository(),
        ),
        RepositoryProvider(
          create: (context) => DepositMoneyRepository(),
        ),
        RepositoryProvider(
          create: (context) => TransferMoneyRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CashWithdrawalBloc(
                cashWithdrawalRepository:
                    RepositoryProvider.of<CashWithdrawalRepository>(
                        context)) /* ..add(const CashWithdrawalEvent.get()) */,
          ),
          BlocProvider(
            create: (context) => DepositMoneyBloc(
                depositMoneyRepository:
                    RepositoryProvider.of<DepositMoneyRepository>(
                        context)) /* ..add(const DepositMoneyEvent.get()) */,
          ),
          BlocProvider(
            create: (context) => TransferMoneyBloc(
                transferMoneyRepository:
                    RepositoryProvider.of<TransferMoneyRepository>(
                        context)) /* ..add(const TransferMoneyEvent.get()) */,
          ),
        ],
        child: MaterialApp(
          title: "Costos - DINÁMICA",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: getMaterialColor(primary)),
          builder: (context, child) {
            return ResponsiveWrapper.builder(
                ClampingScrollWrapper.builder(context, child!),
                maxWidth: 1920,
                minWidth: 450,
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.resize(450, name: MOBILE),
                  const ResponsiveBreakpoint.resize(600, name: "MOBILE_LARGE"),
                  const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                  const ResponsiveBreakpoint.resize(1350,
                      name: "DESKTOP_LARGE"),
                  const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                ],
                background: Container(color: const Color(0xFFF5F5F5)));
          },
          initialRoute: '/',
          routes: customRoutes,
        ),
      ),
    );
  }
}
