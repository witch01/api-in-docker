import 'dart:async';
import 'package:conduit_core/conduit_core.dart';   

class Migration5 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_Test", [SchemaColumn("id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("operationName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: false),SchemaColumn("description", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: false),SchemaColumn("operationDate", ManagedPropertyType.datetime, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: false),SchemaColumn("operationTotal", ManagedPropertyType.doublePrecision, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: false),SchemaColumn("isDeleted", ManagedPropertyType.boolean, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: false)]));
		database.addColumn("_Test", SchemaColumn.relationship("user", ManagedPropertyType.bigInteger, relatedTableName: "_User", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: true, isUnique: false));
		database.addColumn("_Test", SchemaColumn.relationship("category", ManagedPropertyType.bigInteger, relatedTableName: "_Categories", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: true, isUnique: false));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    