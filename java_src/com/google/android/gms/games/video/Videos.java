package com.google.android.gms.games.video;

import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
/* loaded from: classes2.dex */
public interface Videos {
    public static final int CAPTURE_OVERLAY_STATE_CAPTURE_STARTED = 2;
    public static final int CAPTURE_OVERLAY_STATE_CAPTURE_STOPPED = 3;
    public static final int CAPTURE_OVERLAY_STATE_DISMISSED = 4;
    public static final int CAPTURE_OVERLAY_STATE_SHOWN = 1;

    /* loaded from: classes2.dex */
    public interface CaptureAvailableResult extends Result {
        boolean isAvailable();
    }

    /* loaded from: classes2.dex */
    public interface CaptureCapabilitiesResult extends Result {
        VideoCapabilities getCapabilities();
    }

    /* loaded from: classes2.dex */
    public interface CaptureOverlayStateListener {
        void onCaptureOverlayStateChanged(int i);
    }

    /* loaded from: classes2.dex */
    public interface CaptureRuntimeErrorCallback {
    }

    /* loaded from: classes2.dex */
    public interface CaptureStateResult extends Result {
        CaptureState getCaptureState();
    }

    /* loaded from: classes2.dex */
    public interface CaptureStoppedResult extends Result {
    }

    /* loaded from: classes2.dex */
    public interface CaptureStreamingAvailabilityResult extends Result {
    }

    /* loaded from: classes2.dex */
    public interface CaptureStreamingMetadataResult extends Result {
    }

    /* loaded from: classes2.dex */
    public interface CaptureStreamingUrlResult extends Result {
        String getUrl();
    }

    /* loaded from: classes2.dex */
    public interface ListVideosResult extends Result {
    }

    PendingResult<CaptureCapabilitiesResult> getCaptureCapabilities(GoogleApiClient googleApiClient);

    Intent getCaptureOverlayIntent(GoogleApiClient googleApiClient);

    PendingResult<CaptureStateResult> getCaptureState(GoogleApiClient googleApiClient);

    PendingResult<CaptureAvailableResult> isCaptureAvailable(GoogleApiClient googleApiClient, int i);

    boolean isCaptureSupported(GoogleApiClient googleApiClient);

    void registerCaptureOverlayStateChangedListener(GoogleApiClient googleApiClient, CaptureOverlayStateListener captureOverlayStateListener);

    void unregisterCaptureOverlayStateChangedListener(GoogleApiClient googleApiClient);
}
