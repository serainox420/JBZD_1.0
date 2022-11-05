package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.l;
import com.facebook.appevents.AppEventsLogger;
/* loaded from: classes.dex */
public class BoltsMeasurementEventListener extends BroadcastReceiver {
    private static final String BOLTS_MEASUREMENT_EVENT_PREFIX = "bf_";
    private static final String MEASUREMENT_EVENT_ARGS_KEY = "event_args";
    private static final String MEASUREMENT_EVENT_NAME_KEY = "event_name";
    private static final String MEASUREMENT_EVENT_NOTIFICATION_NAME = "com.parse.bolts.measurement_event";
    private static BoltsMeasurementEventListener _instance;
    private Context applicationContext;

    private BoltsMeasurementEventListener(Context context) {
        this.applicationContext = context.getApplicationContext();
    }

    private void open() {
        l.a(this.applicationContext).a(this, new IntentFilter(MEASUREMENT_EVENT_NOTIFICATION_NAME));
    }

    private void close() {
        l.a(this.applicationContext).a(this);
    }

    public static BoltsMeasurementEventListener getInstance(Context context) {
        if (_instance != null) {
            return _instance;
        }
        _instance = new BoltsMeasurementEventListener(context);
        _instance.open();
        return _instance;
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AppEventsLogger newLogger = AppEventsLogger.newLogger(context);
        String str = BOLTS_MEASUREMENT_EVENT_PREFIX + intent.getStringExtra(MEASUREMENT_EVENT_NAME_KEY);
        Bundle bundleExtra = intent.getBundleExtra(MEASUREMENT_EVENT_ARGS_KEY);
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        newLogger.logEvent(str, bundle);
    }
}
