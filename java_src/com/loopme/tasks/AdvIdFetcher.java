package com.loopme.tasks;

import android.content.Context;
import com.loopme.AdvertisingIdClient;
import com.loopme.common.Logging;
/* loaded from: classes2.dex */
public class AdvIdFetcher implements Runnable {
    private static final String LOG_TAG = AdvIdFetcher.class.getSimpleName();
    private String mAdvertisingId;
    private final Context mContext;
    private final Listener mListener;

    /* loaded from: classes2.dex */
    public interface Listener {
        void onComplete(String str, boolean z);
    }

    public AdvIdFetcher(Context context, Listener listener) {
        this.mContext = context;
        this.mListener = listener;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mAdvertisingId = "";
        boolean z = false;
        try {
            AdvertisingIdClient.AdInfo advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.mContext);
            this.mAdvertisingId = advertisingIdInfo.getId();
            z = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e) {
            Logging.out(LOG_TAG, "Exception: " + e.getMessage());
        }
        if (this.mListener != null) {
            this.mListener.onComplete(this.mAdvertisingId, z);
        }
    }
}
