package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
/* loaded from: classes3.dex */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final long f4412a;
    private Context b;

    public abstract IntentFilter getIntentFilter();

    public BaseBroadcastReceiver(long j) {
        this.f4412a = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, long j, String str) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        Preconditions.checkNotNull(str, "action cannot be null");
        Intent intent = new Intent(str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        android.support.v4.content.l.a(context.getApplicationContext()).a(intent);
    }

    public void register(BroadcastReceiver broadcastReceiver, Context context) {
        this.b = context;
        android.support.v4.content.l.a(this.b).a(broadcastReceiver, getIntentFilter());
    }

    public void unregister(BroadcastReceiver broadcastReceiver) {
        if (this.b != null && broadcastReceiver != null) {
            android.support.v4.content.l.a(this.b).a(broadcastReceiver);
            this.b = null;
        }
    }

    public boolean shouldConsumeBroadcast(Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f4412a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }
}
