package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.a.a;
/* loaded from: classes2.dex */
class e {
    private static AppMeasurement a(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }

    public static void a(Context context, Intent intent) {
        f(context, intent);
        a(context, "_nr", intent);
    }

    private static void a(Context context, String str, Intent intent) {
        Bundle bundle = new Bundle();
        String stringExtra = intent.getStringExtra("google.c.a.c_id");
        if (stringExtra != null) {
            bundle.putString("_nmid", stringExtra);
        }
        String stringExtra2 = intent.getStringExtra("google.c.a.c_l");
        if (stringExtra2 != null) {
            bundle.putString("_nmn", stringExtra2);
        }
        String stringExtra3 = intent.getStringExtra("from");
        if (stringExtra3 == null || !stringExtra3.startsWith("/topics/")) {
            stringExtra3 = null;
        }
        if (stringExtra3 != null) {
            bundle.putString("_nt", stringExtra3);
        }
        try {
            bundle.putInt("_nmt", Integer.valueOf(intent.getStringExtra("google.c.a.ts")).intValue());
        } catch (NumberFormatException e) {
            Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e);
        }
        if (intent.hasExtra("google.c.a.udt")) {
            try {
                bundle.putInt("_ndt", Integer.valueOf(intent.getStringExtra("google.c.a.udt")).intValue());
            } catch (NumberFormatException e2) {
                Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e2);
            }
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            String valueOf = String.valueOf(bundle);
            Log.d("FirebaseMessaging", new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(valueOf).length()).append("Sending event=").append(str).append(" params=").append(valueOf).toString());
        }
        AppMeasurement a2 = a(context);
        if (a2 != null) {
            a2.logEventInternal("fcm", str, bundle);
        } else {
            Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
        }
    }

    public static void b(Context context, Intent intent) {
        e(context, intent);
        a(context, "_no", intent);
    }

    public static void c(Context context, Intent intent) {
        a(context, "_nd", intent);
    }

    public static void d(Context context, Intent intent) {
        a(context, "_nf", intent);
    }

    private static void e(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        if (!"1".equals(intent.getStringExtra("google.c.a.tc"))) {
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return;
            }
            Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
            return;
        }
        AppMeasurement a2 = a(context);
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
        }
        if (a2 == null) {
            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
            return;
        }
        String stringExtra = intent.getStringExtra("google.c.a.c_id");
        a2.zzb("fcm", "_ln", stringExtra);
        Bundle bundle = new Bundle();
        bundle.putString("source", "Firebase");
        bundle.putString(a.b.MEDIUM, "notification");
        bundle.putString(a.b.CAMPAIGN, stringExtra);
        a2.logEventInternal("fcm", "_cmp", bundle);
    }

    private static void f(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("google.c.a.abt");
        if (stringExtra == null) {
            return;
        }
        d.a(context, "fcm", Base64.decode(stringExtra, 0), new c(), 1);
    }
}
