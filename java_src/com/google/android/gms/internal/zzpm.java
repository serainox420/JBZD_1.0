package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Future;
@zzme
/* loaded from: classes.dex */
public final class zzpm {

    /* loaded from: classes2.dex */
    private static abstract class zza extends zzpj {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzpj
        public void onStop() {
        }
    }

    /* loaded from: classes2.dex */
    public interface zzb {
        void zzh(Bundle bundle);
    }

    public static Future zza(final Context context, final int i) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putInt("request_in_session_count", i);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zza(final Context context, final long j) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putLong("app_last_background_time_ms", j);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zza(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.10
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("use_https", zzn.getBoolean("use_https", true));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zza(final Context context, final String str, final long j) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putString("app_settings_json", str);
                edit.putLong("app_settings_last_update_ms", j);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zzb(final Context context, final long j) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.12
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putLong("first_ad_req_time_ms", j);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zzb(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.14
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putInt("webview_cache_version", zzn.getInt("webview_cache_version", 0));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zzc(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.16
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("content_url_opted_out", zzn.getBoolean("content_url_opted_out", true));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zzc(final Context context, final boolean z) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putBoolean("use_https", z);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zzd(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.18
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putString("content_url_hashes", zzn.getString("content_url_hashes", ""));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zze(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("auto_collect_location", zzn.getBoolean("auto_collect_location", false));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zze(final Context context, final boolean z) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.15
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putBoolean("content_url_opted_out", z);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zzf(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", zzn.getString("app_settings_json", ""));
                bundle.putLong("app_settings_last_update_ms", zzn.getLong("app_settings_last_update_ms", 0L));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zzf(final Context context, final boolean z) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putBoolean("auto_collect_location", z);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zzg(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putLong("app_last_background_time_ms", zzn.getLong("app_last_background_time_ms", 0L));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zzh(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.11
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putInt("request_in_session_count", zzn.getInt("request_in_session_count", -1));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static Future zzi(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.13
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences zzn = zzpm.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putLong("first_ad_req_time_ms", zzn.getLong("first_ad_req_time_ms", 0L));
                if (zzbVar != null) {
                    zzbVar.zzh(bundle);
                }
            }
        }.zziP();
    }

    public static SharedPreferences zzn(Context context) {
        return context.getSharedPreferences("admob", 0);
    }

    public static Future zzp(final Context context, final String str) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.17
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putString("content_url_hashes", str);
                edit.apply();
            }
        }.zziP();
    }

    public static Future zzq(final Context context, final String str) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzpm.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzpj
            public void zzco() {
                SharedPreferences.Editor edit = zzpm.zzn(context).edit();
                edit.putString("content_vertical_hashes", str);
                edit.apply();
            }
        }.zziP();
    }

    public static void zzr(Context context, String str) {
        SharedPreferences zzn = zzn(context);
        Set<String> stringSet = zzn.getStringSet("never_pool_slots", Collections.emptySet());
        if (!stringSet.contains(str)) {
            HashSet hashSet = new HashSet(stringSet);
            hashSet.add(str);
            SharedPreferences.Editor edit = zzn.edit();
            edit.putStringSet("never_pool_slots", hashSet);
            edit.apply();
        }
    }

    public static void zzs(Context context, String str) {
        SharedPreferences zzn = zzn(context);
        Set<String> stringSet = zzn.getStringSet("never_pool_slots", Collections.emptySet());
        if (stringSet.contains(str)) {
            HashSet hashSet = new HashSet(stringSet);
            hashSet.remove(str);
            SharedPreferences.Editor edit = zzn.edit();
            edit.putStringSet("never_pool_slots", hashSet);
            edit.apply();
        }
    }

    public static boolean zzt(Context context, String str) {
        return zzn(context).getStringSet("never_pool_slots", Collections.emptySet()).contains(str);
    }
}
