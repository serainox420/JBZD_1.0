package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.mopub.common.CacheService;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastXmlManagerAggregator;
import com.mopub.mobileads.VideoDownloader;
/* loaded from: classes3.dex */
public class VastManager implements VastXmlManagerAggregator.b {

    /* renamed from: a  reason: collision with root package name */
    private VastManagerListener f4470a;
    private VastXmlManagerAggregator b;
    private String c;
    private double d;
    private int e;
    private final boolean f;

    /* loaded from: classes3.dex */
    public interface VastManagerListener {
        void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig);
    }

    public VastManager(Context context, boolean z) {
        a(context);
        this.f = z;
    }

    public void prepareVastVideoConfiguration(String str, VastManagerListener vastManagerListener, String str2, Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        if (this.b == null) {
            this.f4470a = vastManagerListener;
            this.b = new VastXmlManagerAggregator(this, this.d, this.e, context.getApplicationContext());
            this.c = str2;
            try {
                AsyncTasks.safeExecuteOnExecutor(this.b, str);
            } catch (Exception e) {
                MoPubLog.d("Failed to aggregate vast xml", e);
                this.f4470a.onVastVideoConfigurationPrepared(null);
            }
        }
    }

    public void cancel() {
        if (this.b != null) {
            this.b.cancel(true);
            this.b = null;
        }
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.b
    public void onAggregationComplete(final VastVideoConfig vastVideoConfig) {
        if (this.f4470a == null) {
            throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
        }
        if (vastVideoConfig == null) {
            this.f4470a.onVastVideoConfigurationPrepared(null);
            return;
        }
        if (!TextUtils.isEmpty(this.c)) {
            vastVideoConfig.setDspCreativeId(this.c);
        }
        if (!this.f || a(vastVideoConfig)) {
            this.f4470a.onVastVideoConfigurationPrepared(vastVideoConfig);
            return;
        }
        VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), new VideoDownloader.a() { // from class: com.mopub.mobileads.VastManager.1
            @Override // com.mopub.mobileads.VideoDownloader.a
            public void onComplete(boolean z) {
                if (z && VastManager.this.a(vastVideoConfig)) {
                    VastManager.this.f4470a.onVastVideoConfigurationPrepared(vastVideoConfig);
                    return;
                }
                MoPubLog.d("Failed to download VAST video.");
                VastManager.this.f4470a.onVastVideoConfigurationPrepared(null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            vastVideoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(networkMediaFileUrl));
            return true;
        }
        return false;
    }

    private void a(Context context) {
        Preconditions.checkNotNull(context, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        float f = context.getResources().getDisplayMetrics().density;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            f = 1.0f;
        }
        int max = Math.max(width, height);
        int min = Math.min(width, height);
        this.d = max / min;
        this.e = (int) ((min / f) * (max / f));
    }
}
