package com.moat.analytics.mobile.aol;

import android.media.MediaPlayer;
import android.view.View;
import com.moat.analytics.mobile.aol.OnOffTrackerProxy;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
class NativeVideoTrackerImpl extends IntervalVideoTracker<MediaPlayer> implements NativeVideoTracker {
    @Override // com.moat.analytics.mobile.aol.BaseVideoTracker
    public /* bridge */ /* synthetic */ boolean trackVideoAd(Map map, Object obj, View view) {
        return trackVideoAd((Map<String, String>) map, (MediaPlayer) obj, view);
    }

    public NativeVideoTrackerImpl(String str, ActivityState activityState, OnOffSwitch onOffSwitch) {
        super(str, activityState, onOffSwitch);
    }

    @Override // com.moat.analytics.mobile.aol.IntervalVideoTracker
    protected Integer getCurrentPosition() {
        return Integer.valueOf(((MediaPlayer) this.ad.get()).getCurrentPosition());
    }

    @Override // com.moat.analytics.mobile.aol.IntervalVideoTracker
    protected boolean isPlaying() {
        return ((MediaPlayer) this.ad.get()).isPlaying();
    }

    @Override // com.moat.analytics.mobile.aol.IntervalVideoTracker
    protected Integer getDuration() {
        return Integer.valueOf(((MediaPlayer) this.ad.get()).getDuration());
    }

    @Override // com.moat.analytics.mobile.aol.NativeVideoTracker
    public boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
        if (mediaPlayer == null) {
            logMessage("Null player instance. Not tracking.");
        }
        try {
            mediaPlayer.getCurrentPosition();
            return super.trackVideoAd(map, (Map<String, String>) mediaPlayer, view);
        } catch (IllegalStateException e) {
            logMessage("Playback has already completed. Not tracking.");
            return false;
        }
    }

    @Override // com.moat.analytics.mobile.aol.BaseVideoTracker, com.moat.analytics.mobile.aol.NativeVideoTracker
    public void changeTargetView(View view) {
        super.changeTargetView(view);
    }

    @Override // com.moat.analytics.mobile.aol.BaseVideoTracker
    protected Map<String, Object> getAdData() throws MoatException {
        MediaPlayer mediaPlayer = (MediaPlayer) this.ad.get();
        HashMap hashMap = new HashMap();
        hashMap.put("width", Integer.valueOf(mediaPlayer.getVideoWidth()));
        hashMap.put("height", Integer.valueOf(mediaPlayer.getVideoHeight()));
        hashMap.put(VastIconXmlManager.DURATION, Integer.valueOf(mediaPlayer.getDuration()));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Postponer implements OnOffTrackerProxy.Postponer<NativeVideoTracker> {
        private static final Optional<Method> changeTargetView;
        private static final Optional<Method> dispatchEvent;
        private static final Optional<Method> dispatchEventDep;
        private static final Optional<Method> setDebug;
        private static final Optional<Method> trackVideoAd;

        static {
            Optional<Method> optional;
            NoSuchMethodException e;
            Optional<Method> empty = Optional.empty();
            Optional<Method> empty2 = Optional.empty();
            Optional<Method> empty3 = Optional.empty();
            Optional<Method> empty4 = Optional.empty();
            Optional<Method> empty5 = Optional.empty();
            try {
                Method method = NativeVideoTracker.class.getMethod("setDebug", Boolean.TYPE);
                Method method2 = NativeVideoTracker.class.getMethod("trackVideoAd", Map.class, MediaPlayer.class, View.class);
                Method method3 = NativeVideoTracker.class.getMethod("changeTargetView", View.class);
                Method method4 = NativeVideoTracker.class.getMethod("dispatchEvent", Map.class);
                Method method5 = NativeVideoTracker.class.getMethod("dispatchEvent", Map.class);
                empty = Optional.of(method);
                empty2 = Optional.of(method2);
                empty3 = Optional.of(method3);
                optional = Optional.of(method4);
                try {
                    empty4 = Optional.of(method5);
                } catch (NoSuchMethodException e2) {
                    e = e2;
                    Exceptions.handleException(e);
                    setDebug = empty;
                    trackVideoAd = empty2;
                    changeTargetView = empty3;
                    dispatchEvent = optional;
                    dispatchEventDep = empty4;
                }
            } catch (NoSuchMethodException e3) {
                optional = empty5;
                e = e3;
            }
            setDebug = empty;
            trackVideoAd = empty2;
            changeTargetView = empty3;
            dispatchEvent = optional;
            dispatchEventDep = empty4;
        }

        @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Postponer
        public boolean isQueueable(Method method) {
            Optional of = Optional.of(method);
            return setDebug.equals(of) || trackVideoAd.equals(of) || changeTargetView.equals(of) || dispatchEvent.equals(of) || dispatchEventDep.equals(of);
        }

        @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Postponer
        public Class<NativeVideoTracker> getMethodsOwner() {
            return NativeVideoTracker.class;
        }
    }
}
