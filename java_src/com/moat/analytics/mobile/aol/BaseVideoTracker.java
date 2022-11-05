package com.moat.analytics.mobile.aol;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
abstract class BaseVideoTracker<PlayerOrIMAAd> {
    protected static final String AD_DURATION_KEY = "duration";
    protected static final String AD_HEIGHT_KEY = "height";
    protected static final String AD_WIDTH_KEY = "width";
    private static final double MS_TO_COMPLETION_TOLERANCE = 750.0d;
    private static final double PC_TO_COMPLETION_TOLERANCE = 0.05d;
    protected static final MoatAdEventType[] QUARTILE_EVENTS = {MoatAdEventType.AD_EVT_FIRST_QUARTILE, MoatAdEventType.AD_EVT_MID_POINT, MoatAdEventType.AD_EVT_THIRD_QUARTILE};
    private static final String TAG = "MoatVideoTracker";
    protected final ActivityState activityState;
    protected WeakReference<PlayerOrIMAAd> ad;
    protected Map<String, String> adIds;
    private WeakReference<Context> context;
    protected boolean debug;
    private boolean didShutdown;
    protected final Handler handler;
    private MoatWebView moatWebView;
    protected final OnOffSwitch onOffSwitch;
    protected final Map<MoatAdEventType, Integer> oneTimeEventsDispatched;
    protected WeakReference<View> vidView;

    protected abstract Map<String, Object> getAdData() throws MoatException;

    public BaseVideoTracker(String str, ActivityState activityState, OnOffSwitch onOffSwitch) {
        this.onOffSwitch = onOffSwitch;
        this.activityState = activityState;
        logMessage("Initializing.");
        this.moatWebView = new MoatWebView(str, onOffSwitch, activityState);
        this.oneTimeEventsDispatched = new HashMap();
        this.handler = new Handler();
        this.context = new WeakReference<>(activityState.getActivity());
        this.didShutdown = false;
        this.debug = false;
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }

    public boolean trackVideoAd(Map<String, String> map, PlayerOrIMAAd playerorimaad, View view) {
        boolean z = true;
        boolean z2 = false;
        if (map == null) {
            try {
                logMessage("trackVideoAd received null adIds object. Not tracking.");
                z = false;
            } catch (Exception e) {
                Exceptions.handleException(e);
            }
        }
        if (view == null) {
            logMessage("trackVideoAd received null video view instance");
        }
        if (playerorimaad == null) {
            logMessage("trackVideoAd received null ad instance. Not tracking.");
            z = false;
        }
        if (z) {
            Object[] objArr = new Object[3];
            objArr[0] = new JSONObject(map).toString();
            objArr[1] = playerorimaad.toString();
            objArr[2] = view != null ? view.getClass().getSimpleName() + "@" + view.hashCode() : "null";
            logMessage(String.format("trackVideoAd tracking ids: %s | ad: %s | view: %s", objArr));
            this.adIds = map;
            this.ad = new WeakReference<>(playerorimaad);
            this.vidView = new WeakReference<>(view);
            startTracking();
        }
        z2 = z;
        logMessage("Attempt to start tracking ad was " + (z2 ? "" : "un") + "successful.");
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startTracking() throws MoatException {
        Map<String, Object> adData = getAdData();
        Integer num = (Integer) adData.get("width");
        Integer num2 = (Integer) adData.get("height");
        Integer num3 = (Integer) adData.get("duration");
        logMessage(String.format("Player metadata: height = %d, width = %d, duration = %d", num2, num, num3));
        this.moatWebView.startTracking(this.vidView.get(), this.adIds, num, num2, num3);
    }

    public void changeTargetView(View view) {
        if (this.onOffSwitch.isDebugActive()) {
            Log.d(TAG, "changing view to " + (view != null ? view.getClass().getSimpleName() + "@" + view.hashCode() : "null"));
        }
        this.vidView = new WeakReference<>(view);
        this.moatWebView.changeTargetView(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject formatAndCheckEvent(MoatAdEvent moatAdEvent) {
        if (Double.isNaN(moatAdEvent.adVolume.doubleValue())) {
            try {
                moatAdEvent.adVolume = Double.valueOf(getVideoVolumeOfMax());
            } catch (Exception e) {
                moatAdEvent.adVolume = Double.valueOf(1.0d);
            }
        }
        return new JSONObject(moatAdEvent.toMap());
    }

    private MoatAdEvent convertOldStyleEvent(Map<String, Object> map) {
        Integer num;
        Double d;
        MoatAdEventType fromString = MoatAdEventType.fromString((String) map.get("type"));
        if (map.containsKey("playHead")) {
            num = (Integer) map.get("playHead");
        } else {
            num = MoatAdEvent.TIME_UNAVAILABLE;
        }
        if (map.containsKey(MoatAdEvent.EVENT_AD_VOLUME)) {
            d = (Double) map.get(MoatAdEvent.EVENT_AD_VOLUME);
        } else {
            d = MoatAdEvent.VOLUME_UNAVAILABLE;
        }
        return new MoatAdEvent(fromString, num, d);
    }

    public void dispatchEvent(Map<String, Object> map) {
        try {
            dispatchEventUnsafe(convertOldStyleEvent(map));
        } catch (Exception e) {
            Exceptions.handleException(e);
        }
    }

    public void dispatchEvent(MoatAdEvent moatAdEvent) {
        try {
            dispatchEventUnsafe(moatAdEvent);
        } catch (Exception e) {
            Exceptions.handleException(e);
        }
    }

    private void dispatchEventUnsafe(MoatAdEvent moatAdEvent) throws MoatException {
        JSONObject formatAndCheckEvent = formatAndCheckEvent(moatAdEvent);
        logMessage(String.format("Received event: %s", formatAndCheckEvent.toString()));
        this.moatWebView.dispatchJSCall(formatAndCheckEvent);
        MoatAdEventType moatAdEventType = moatAdEvent.eventType;
        if (moatAdEventType == MoatAdEventType.AD_EVT_COMPLETE || moatAdEventType == MoatAdEventType.AD_EVT_STOPPED || moatAdEventType == MoatAdEventType.AD_EVT_SKIPPED) {
            this.oneTimeEventsDispatched.put(moatAdEventType, 1);
            shutDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void shutDown() {
        if (!this.didShutdown) {
            this.handler.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.aol.BaseVideoTracker.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        BaseVideoTracker.this.logMessage("Shutting down.");
                        BaseVideoTracker.this.moatWebView.destroy();
                        BaseVideoTracker.this.moatWebView = null;
                    } catch (Exception e) {
                        Exceptions.handleException(e);
                    }
                }
            }, 500L);
            this.didShutdown = true;
        }
    }

    private int getVideoVolume(AudioManager audioManager) throws MoatException {
        return audioManager.getStreamVolume(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double getVideoVolumeOfMax() throws MoatException {
        AudioManager audioManager = (AudioManager) this.context.get().getSystemService("audio");
        return getVideoVolume(audioManager) / audioManager.getStreamMaxVolume(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isDonePlayBack() {
        return this.oneTimeEventsDispatched.containsKey(MoatAdEventType.AD_EVT_COMPLETE) || this.oneTimeEventsDispatched.containsKey(MoatAdEventType.AD_EVT_STOPPED) || this.oneTimeEventsDispatched.containsKey(MoatAdEventType.AD_EVT_SKIPPED);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void logMessage(String str) {
        if (this.onOffSwitch.isDebugActive() || this.debug) {
            Log.d(TAG, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isNearCompletion(Integer num, Integer num2) {
        return ((double) (num2.intValue() - num.intValue())) <= Math.min((double) MS_TO_COMPLETION_TOLERANCE, ((double) num2.intValue()) * PC_TO_COMPLETION_TOLERANCE);
    }
}
