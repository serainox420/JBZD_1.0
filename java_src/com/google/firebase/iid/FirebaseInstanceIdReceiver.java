package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.zzt;
import com.google.firebase.iid.zzb;
/* loaded from: classes2.dex */
public final class FirebaseInstanceIdReceiver extends WakefulBroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3580a = false;
    private zzb.b b;
    private zzb.b c;

    private zzb.b a(Context context, String str) {
        if ("com.google.android.c2dm.intent.RECEIVE".equals(str)) {
            if (this.c == null) {
                this.c = new zzb.b(context, str);
            }
            return this.c;
        }
        if (this.b == null) {
            this.b = new zzb.b(context, str);
        }
        return this.b;
    }

    public int a(Context context, String str, Intent intent) {
        if (zzt.zzzq()) {
            if (isOrderedBroadcast()) {
                setResultCode(-1);
            }
            a(context, str).a(intent, goAsync());
            return -1;
        }
        return f.a().a(context, str, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        String stringExtra2 = intent.getStringExtra("from");
        if ("google.com/iid".equals(stringExtra2) || "gcm.googleapis.com/refresh".equals(stringExtra2)) {
            str = "com.google.firebase.INSTANCE_ID_EVENT";
        } else if ("com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            str = "com.google.firebase.MESSAGING_EVENT";
        } else {
            Log.d("FirebaseInstanceId", "Unexpected intent");
            str = null;
        }
        int i = -1;
        if (str != null) {
            i = a(context, str, intent);
        }
        if (isOrderedBroadcast()) {
            setResultCode(i);
        }
    }
}
