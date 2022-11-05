package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import com.google.android.gms.common.util.zzt;
import com.google.firebase.iid.zzb;
/* loaded from: classes2.dex */
public final class FirebaseInstanceIdInternalReceiver extends WakefulBroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3579a = false;
    private zzb.b b;
    private zzb.b c;

    private zzb.b a(Context context, String str) {
        if ("com.google.firebase.MESSAGING_EVENT".equals(str)) {
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

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
        if (!(parcelableExtra instanceof Intent)) {
            Log.e("FirebaseInstanceId", "Missing or invalid wrapped intent");
            return;
        }
        Intent intent2 = (Intent) parcelableExtra;
        if (zzt.zzzq()) {
            a(context, intent.getAction()).a(intent2, goAsync());
        } else {
            f.a().a(context, intent.getAction(), intent2);
        }
    }
}
