import 'package:isar/isar.dart';

//this file is needed to genetate file
// then run: dart run build_runner build

part 'note.g.dart';

@Collection()
class Note{
  Id id =Isar.autoIncrement;
  late String text;
}
