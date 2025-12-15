import 'package:bookly_app2/%20constants.dart';
import 'package:bookly_app2/core/utils/app_routers.dart';
import 'package:bookly_app2/core/utils/service_locator.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/manager/bewest%20books%20cubit/newest_cubit_cubit.dart';
import 'package:bookly_app2/features/splash/presentation/views/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp2());
}

class BooklyApp2 extends StatelessWidget {
  const BooklyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryKolor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
