import 'package:conduit/conduit.dart';
import 'catigories.dart';
import 'user.dart';

class Test extends ManagedObject<_Test> implements _Test {}

class _Test{
  @primaryKey
  int? id;
  @Column(indexed: true)
  String? operationName;
  @Column(indexed: true)
  String? description;
  @Column(indexed: true)
  DateTime? operationDate;
  @Column(indexed: true)
  double? operationTotal;
  @Column(indexed: true)
  bool? isDeleted;

  @Serialize(input: true, output: false)
  int? idCategory;

  @Relate(#financeList, isRequired: false, onDelete: DeleteRule.cascade)
  User? user;
  @Relate(#financeList, isRequired: false, onDelete: DeleteRule.cascade)
  Categories? category;

}