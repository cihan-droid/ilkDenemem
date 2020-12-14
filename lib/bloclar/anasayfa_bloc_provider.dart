import 'package:flutter/cupertino.dart';
import 'package:ilkDenemem/bloclar/anasayfa_bloc.dart';

class AnasayfaBlocProvider extends InheritedWidget {
  final AnasayfaBloc anasayfaBloc;

  const AnasayfaBlocProvider({Key key, Widget child, this.anasayfaBloc})
      : super(child: child, key: key);

  static AnasayfaBlocProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(AnasayfaBlocProvider old) =>
      anasayfaBloc != old.anasayfaBloc;
}
