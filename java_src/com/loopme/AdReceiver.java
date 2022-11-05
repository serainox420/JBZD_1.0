package com.loopme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.loopme.common.StaticParams;
/* loaded from: classes2.dex */
class AdReceiver extends BroadcastReceiver {
    private Listener mListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onClickBroadcast();

        void onDestroyBroadcast();
    }

    public AdReceiver(Listener listener) {
        this.mListener = listener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.mListener != null) {
            if (intent.getAction().equalsIgnoreCase(StaticParams.DESTROY_INTENT)) {
                this.mListener.onDestroyBroadcast();
            } else if (intent.getAction().equalsIgnoreCase(StaticParams.CLICK_INTENT)) {
                this.mListener.onClickBroadcast();
            }
        }
    }
}
