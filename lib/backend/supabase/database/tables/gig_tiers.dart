import '../database.dart';

class GigTiersTable extends SupabaseTable<GigTiersRow> {
  @override
  String get tableName => 'gig_tiers';

  @override
  GigTiersRow createRow(Map<String, dynamic> data) => GigTiersRow(data);
}

class GigTiersRow extends SupabaseDataRow {
  GigTiersRow(super.data);

  @override
  SupabaseTable get table => GigTiersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get gigId => getField<int>('gig_id');
  set gigId(int? value) => setField<int>('gig_id', value);

  String? get tier1Name => getField<String>('tier1_name');
  set tier1Name(String? value) => setField<String>('tier1_name', value);

  String? get tier1Desc => getField<String>('tier1_desc');
  set tier1Desc(String? value) => setField<String>('tier1_desc', value);

  double? get tier1Price => getField<double>('tier1_price');
  set tier1Price(double? value) => setField<double>('tier1_price', value);

  String? get tier2Name => getField<String>('tier2_name');
  set tier2Name(String? value) => setField<String>('tier2_name', value);

  String? get tier2Desc => getField<String>('tier2_desc');
  set tier2Desc(String? value) => setField<String>('tier2_desc', value);

  double? get tier2Price => getField<double>('tier2_price');
  set tier2Price(double? value) => setField<double>('tier2_price', value);

  String? get tier3Name => getField<String>('tier3_name');
  set tier3Name(String? value) => setField<String>('tier3_name', value);

  String? get tier3Desc => getField<String>('tier3_desc');
  set tier3Desc(String? value) => setField<String>('tier3_desc', value);

  double? get tier3Price => getField<double>('tier3_price');
  set tier3Price(double? value) => setField<double>('tier3_price', value);
}
