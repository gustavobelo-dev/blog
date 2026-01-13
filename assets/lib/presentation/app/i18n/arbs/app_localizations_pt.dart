// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get commonHumanizedDateHourAgo => 'hora atrás';

  @override
  String get commonHumanizedDateHoursAgo => 'horas atrás';

  @override
  String get commonHumanizedDateMinutesAgo => 'minutos atrás';

  @override
  String get commonHumanizedDateSecondsAgo => 'segundos atrás';

  @override
  String get commonHumanizedDateYesterday => 'Ontem';

  @override
  String commonHumanizedDateWeekday(String weekday) {
    String _temp0 = intl.Intl.selectLogic(weekday, {
      '1': 'Segunda-feira',
      '2': 'Terça-feira',
      '3': 'Quarta-feira',
      '4': 'Quinta-feira',
      '5': 'Sexta-feira',
      '6': 'Sábado',
      '7': 'Domingo',
      'other': '',
    });
    return '$_temp0';
  }

  @override
  String get commonSave => 'Salvar';

  @override
  String get homeScreenNewPostButton => 'Novo';

  @override
  String get blogName => 'Notas de uma mente inquieta';

  @override
  String get blogTitle => 'Blog';

  @override
  String get blogAbout => 'Sobre mim';

  @override
  String get aboutMeScreenDescription =>
      'Tenho uma dificuldade medonha em distinguir o que EU SOU e o que EU ESTOU. \n\nEu sou de Fortaleza mas eu estou em Curitiba.\n\nEu sou um faz-tudo mas estou como Dev.\n\nEu sou averso a redes sociais mas eu estou no [Instagram](https://www.instagram.com/ogustavobelo/).\n\nEu sou um apaixonado pela escrita e eu estou escrevendo este [blog](/blog).\n\n';

  @override
  String get aboutMeScreenPosts => 'Postagens';

  @override
  String get postScreenCreateError => 'Não foi possível salvar a postagem!';

  @override
  String get postScreenCreateSuccess => 'Postagem salva com sucesso!';

  @override
  String get postScreenEmptyContentHint =>
      'Clique aqui para preencher conteúdo...';

  @override
  String get postScreenInputContentHint => 'Conteúdo da postagem...';

  @override
  String get postScreenInputTitleHint => 'Título da postagem';

  @override
  String get postScreenTitle => 'Nova postagem';

  @override
  String validatorsMinLength(Object min) {
    return 'Você deve informar pelo menos $min dígitos';
  }

  @override
  String get validatorsRequired => 'Este campo é obrigatório';
}
