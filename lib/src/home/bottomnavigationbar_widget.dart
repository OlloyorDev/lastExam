import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lastexam/src/home/constants/bottomnavigationbar_svg.dart';
import 'package:lastexam/src/home/screens/home_page.dart';
import 'package:lastexam/src/home/state_managment/home_bloc/home_bloc_bloc.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomeBlocBloc>();
    return BlocBuilder<HomeBlocBloc, HomeBlocState>(
      builder: (context, state) {
        if (state is CurrentActiv) {
          return Scaffold(
            body: IndexedStack(
              index: state.activ,
              children: const [
                MyHomePage(),
                Center(child: Text('Favorites')),
                Center(child: Text('Bronirovan')),
                Center(child: Text('Profile')),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xfff0fb8d3),
              selectedFontSize: 10,
              unselectedFontSize: 10,
              elevation: 0,
              currentIndex: state.activ,
              onTap: (value) {
                homeBloc.add(ChangeActivEvent(value));
              },
              items: [
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(slectedSearch),
                    icon: SvgPicture.asset(unSlectedSearch),
                    label: 'Поиск'),
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(slectedFavorites),
                    icon: SvgPicture.asset(unSlectedFavorites),
                    label: 'Интересное'),
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(slectedBronirovan),
                    icon: SvgPicture.asset(unSlectedBronirovan),
                    label: 'Бронирования'),
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(slectedProfile),
                    icon: SvgPicture.asset(unSlectedProfile),
                    label: 'Профиль'),
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
