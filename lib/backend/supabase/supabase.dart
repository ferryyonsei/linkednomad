import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://rauhenbjaccyfspznhde.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJhdWhlbmJqYWNjeWZzcHpuaGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDExMzQ0MDQsImV4cCI6MjAxNjcxMDQwNH0.wl2yc2gCzExMvlk3MpWRBnLcvIrxxzzWHHs2441wnsk';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
