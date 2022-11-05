package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.l;
import com.facebook.internal.Validate;
/* loaded from: classes.dex */
public abstract class AccessTokenTracker {
    private final l broadcastManager;
    private boolean isTracking = false;
    private final BroadcastReceiver receiver;

    protected abstract void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2);

    public AccessTokenTracker() {
        Validate.sdkInitialized();
        this.receiver = new CurrentAccessTokenBroadcastReceiver();
        this.broadcastManager = l.a(FacebookSdk.getApplicationContext());
        startTracking();
    }

    public void startTracking() {
        if (!this.isTracking) {
            addBroadcastReceiver();
            this.isTracking = true;
        }
    }

    public void stopTracking() {
        if (this.isTracking) {
            this.broadcastManager.a(this.receiver);
            this.isTracking = false;
        }
    }

    public boolean isTracking() {
        return this.isTracking;
    }

    /* loaded from: classes.dex */
    private class CurrentAccessTokenBroadcastReceiver extends BroadcastReceiver {
        private CurrentAccessTokenBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
                AccessTokenTracker.this.onCurrentAccessTokenChanged((AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"), (AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    private void addBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.broadcastManager.a(this.receiver, intentFilter);
    }
}
