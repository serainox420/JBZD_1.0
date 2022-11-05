package com.moat.analytics.mobile.aol;

import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
abstract class IntervalVideoTracker<PlayerOrIMAAd> extends BaseVideoTracker<PlayerOrIMAAd> {
    private static final int MAX_CONSEC_FAILED_CHECKS = 5;
    protected static final int NOT_SET = Integer.MIN_VALUE;
    private static final int PLAYBACK_LOOP_MS = 200;
    private int checkLoopRetries;
    protected int duration;
    protected int maxPosition;
    protected PlayerState playerState;
    protected int previousPosition;
    protected double previousVolume;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public enum PlayerState {
        UNINITIALIZED,
        PAUSED,
        PLAYING,
        STOPPED,
        COMPLETED
    }

    protected abstract Integer getCurrentPosition();

    protected abstract Integer getDuration();

    protected abstract boolean isPlaying();

    public IntervalVideoTracker(String str, ActivityState activityState, OnOffSwitch onOffSwitch) {
        super(str, activityState, onOffSwitch);
        this.maxPosition = Integer.MIN_VALUE;
        this.duration = Integer.MIN_VALUE;
        this.previousPosition = Integer.MIN_VALUE;
        this.previousVolume = Double.NaN;
        this.checkLoopRetries = 0;
        this.playerState = PlayerState.UNINITIALIZED;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.moat.analytics.mobile.aol.BaseVideoTracker
    public JSONObject formatAndCheckEvent(MoatAdEvent moatAdEvent) {
        Integer valueOf;
        if (!moatAdEvent.adPlayhead.equals(MoatAdEvent.TIME_UNAVAILABLE)) {
            valueOf = moatAdEvent.adPlayhead;
        } else {
            try {
                valueOf = getCurrentPosition();
            } catch (Exception e) {
                valueOf = Integer.valueOf(this.previousPosition);
            }
            moatAdEvent.adPlayhead = valueOf;
        }
        if (moatAdEvent.adPlayhead.intValue() < 0) {
            valueOf = Integer.valueOf(this.previousPosition);
            moatAdEvent.adPlayhead = valueOf;
        }
        if (moatAdEvent.eventType == MoatAdEventType.AD_EVT_COMPLETE) {
            if (valueOf.intValue() == Integer.MIN_VALUE || this.duration == Integer.MIN_VALUE || !isNearCompletion(valueOf, Integer.valueOf(this.duration))) {
                this.playerState = PlayerState.STOPPED;
                moatAdEvent.eventType = MoatAdEventType.AD_EVT_STOPPED;
            } else {
                this.playerState = PlayerState.COMPLETED;
            }
        }
        return super.formatAndCheckEvent(moatAdEvent);
    }

    protected PlayerState getPlayerState() {
        return this.playerState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.moat.analytics.mobile.aol.BaseVideoTracker
    public void startTracking() throws MoatException {
        super.startTracking();
        this.handler.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.aol.IntervalVideoTracker.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (IntervalVideoTracker.this.ad.get() != null && !IntervalVideoTracker.this.isDonePlayBack()) {
                        if (Boolean.valueOf(IntervalVideoTracker.this.checkPlayback()).booleanValue()) {
                            IntervalVideoTracker.this.handler.postDelayed(this, 200L);
                        } else {
                            IntervalVideoTracker.this.shutDown();
                        }
                    } else {
                        IntervalVideoTracker.this.shutDown();
                    }
                } catch (Exception e) {
                    IntervalVideoTracker.this.shutDown();
                    Exceptions.handleException(e);
                }
            }
        }, 200L);
    }

    protected boolean checkPlayback() throws MoatException {
        MoatAdEventType moatAdEventType;
        boolean z = false;
        if (this.ad.get() == null || isDonePlayBack()) {
            return false;
        }
        try {
            int intValue = getCurrentPosition().intValue();
            if (this.previousPosition >= 0 && intValue < 0) {
                return false;
            }
            this.previousPosition = intValue;
            if (intValue == 0) {
                return true;
            }
            int intValue2 = getDuration().intValue();
            boolean isPlaying = isPlaying();
            double d = intValue2 / 4.0d;
            double videoVolumeOfMax = getVideoVolumeOfMax();
            MoatAdEventType moatAdEventType2 = null;
            if (intValue > this.maxPosition) {
                this.maxPosition = intValue;
            }
            if (this.duration == Integer.MIN_VALUE) {
                this.duration = intValue2;
            }
            if (isPlaying) {
                if (this.playerState == PlayerState.UNINITIALIZED) {
                    moatAdEventType2 = MoatAdEventType.AD_EVT_START;
                    this.playerState = PlayerState.PLAYING;
                } else if (this.playerState == PlayerState.PAUSED) {
                    moatAdEventType2 = MoatAdEventType.AD_EVT_PLAYING;
                    this.playerState = PlayerState.PLAYING;
                } else {
                    int floor = ((int) Math.floor(intValue / d)) - 1;
                    if (floor > -1 && floor < 3) {
                        moatAdEventType = QUARTILE_EVENTS[floor];
                        if (!this.oneTimeEventsDispatched.containsKey(moatAdEventType)) {
                            this.oneTimeEventsDispatched.put(moatAdEventType, 1);
                            moatAdEventType2 = moatAdEventType;
                        }
                    }
                    moatAdEventType = null;
                    moatAdEventType2 = moatAdEventType;
                }
            } else if (this.playerState != PlayerState.PAUSED) {
                moatAdEventType2 = MoatAdEventType.AD_EVT_PAUSED;
                this.playerState = PlayerState.PAUSED;
            }
            boolean z2 = moatAdEventType2 != null;
            if (!z2 && !Double.isNaN(this.previousVolume) && Math.abs(this.previousVolume - videoVolumeOfMax) > 0.05d) {
                moatAdEventType2 = MoatAdEventType.AD_EVT_VOLUME_CHANGE;
                z2 = true;
            }
            if (z2) {
                dispatchEvent(new MoatAdEvent(moatAdEventType2, Integer.valueOf(intValue), Double.valueOf(videoVolumeOfMax)));
            }
            this.previousVolume = videoVolumeOfMax;
            this.checkLoopRetries = 0;
            z = true;
            return true;
        } catch (Exception e) {
            int i = this.checkLoopRetries;
            this.checkLoopRetries = i + 1;
            return i < 5 ? true : z;
        }
    }
}
