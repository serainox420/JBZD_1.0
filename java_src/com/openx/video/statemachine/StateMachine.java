package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.model.video.VideoAdManager;
/* loaded from: classes3.dex */
public class StateMachine {
    public AdSkippableStateEnum enumAdSkippableState;
    public AdSkippedStateEnum enumAdSkippedState;
    public AdStateEnum enumAdState;
    public ExpandedStateEnum enumExpandedState;
    public MutedStateEnum enumMutedState;
    public PlaylistStateEnum enumPlaylistState;
    public PreparedStateEnum enumPreparedState;
    public VideoStateEnum enumVideoState;
    public WindowStateEnum enumWindowState;
    private boolean isOrientationChanged;
    BaseState mutedState;
    private VideoAdManager videoAdManager;
    BaseState started = new Started(this);
    BaseState paused = new Paused(this);
    BaseState adPlaying = new AdPlaying(this);
    BaseState contentPlaying = new ContentPlaying(this);
    BaseState preparing = new Preparing(this);
    BaseState prepared = new Prepared(this);
    BaseState completed = new Completed(this);
    BaseState notSkipped = new SkippedNot(this);
    BaseState skipped = new Skipped(this);
    BaseState muted = new Muted(this);
    BaseState unmuted = new UnMuted(this);
    BaseState skippable = new Skippable(this);
    BaseState notSkippable = new SkippableNot(this);
    BaseState windowHasFocus = new WindowHasFocus(this);
    BaseState windowHasNoFocus = new WindowHasNoFocus(this);
    BaseState notPlaylist = new NotAPlaylist(this);
    BaseState inPlaylist = new InPlaylist(this);
    BaseState endOfPlaylist = new EndOfPlaylist(this);
    BaseState collapsed = new Collapsed(this);
    BaseState expanded = new Expanded(this);
    BaseState notStarted;
    BaseState videoState = this.notStarted;
    BaseState adState = this.adPlaying;
    BaseState adSkippedState = this.notSkipped;
    BaseState playlistState = this.notPlaylist;
    BaseState expandedState = this.collapsed;
    BaseState adSkippableState = this.skippable;
    BaseState windowState = this.windowHasFocus;
    BaseState preparedState = this.preparing;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum AdSkippableStateEnum {
        Skippable,
        NotSkippable
    }

    /* loaded from: classes3.dex */
    enum AdSkippedStateEnum {
        SkippedNot,
        Skipped
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum AdStateEnum {
        AdPlaying,
        ContentPlaying
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum Event {
        none,
        pause,
        play,
        touch,
        windowFocusChange
    }

    /* loaded from: classes3.dex */
    enum ExpandedStateEnum {
        Collapsed,
        Expanded
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum MutedStateEnum {
        Muted,
        Unmuted
    }

    /* loaded from: classes3.dex */
    enum PlaylistStateEnum {
        NotAPlaylist,
        InPlaylist,
        EndOfPlaylist
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum PreparedStateEnum {
        Preparing,
        Prepared
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum VideoStateEnum {
        None,
        Started,
        Paused,
        Completed
    }

    /* loaded from: classes3.dex */
    enum WindowStateEnum {
        HasFocus,
        HasNoFocus
    }

    public StateMachine(VideoAdManager videoAdManager) {
        this.videoAdManager = videoAdManager;
        setWindowHasFocus();
        setSkippedNot();
        setSkippable();
    }

    public VideoAdManager getVideoAdManager() {
        return this.videoAdManager;
    }

    public void playClick() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  PlayHandler videoState: " + this.enumVideoState.name());
        switch (this.enumVideoState) {
            case Started:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  PlayHandler event: " + this.enumVideoState.name());
                setPaused();
                return;
            case Paused:
                OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  PlayHandler event: " + this.enumVideoState.name());
                setStarted();
                return;
            default:
                return;
        }
    }

    public void touch() {
        if (this.enumPreparedState != null) {
            this.videoAdManager.callbackEvent(VideoAdEvent.Event.TOUCH);
        }
    }

    public void closeLinear() {
        if (this.enumAdSkippableState == AdSkippableStateEnum.Skippable && this.enumAdState == AdStateEnum.AdPlaying) {
            this.videoAdManager.callbackEvent(VideoAdEvent.Event.AD_CLOSELINEAR);
        }
    }

    public void onWindowFocusChanged(boolean z) {
        if (z) {
            setWindowHasFocus();
        } else if (!z) {
            setWindowHasNoFocus();
            setPaused();
        }
    }

    public boolean getIsOrientationChanged() {
        return this.isOrientationChanged;
    }

    public void setIsOrientationChanged(boolean z) {
        this.isOrientationChanged = z;
    }

    public void orientationChanged(int i) {
        if (this.videoAdManager.getAllowFullscreen() && this.videoAdManager.getAllowFullscreenOnOrientationChange()) {
            this.isOrientationChanged = true;
            if (i == 2 && this.videoAdManager.getIsFullScreen()) {
                this.isOrientationChanged = false;
            } else if (i == 1 && !this.videoAdManager.getIsFullScreen()) {
                this.isOrientationChanged = false;
            } else if (i == 2 && !this.videoAdManager.getIsFullScreen()) {
                OXLog.debug("EXPAND", "onOrientationChanged@@@@@@@@@@  LANDSCAPE");
                setExpanded();
            } else {
                OXLog.debug("EXPAND", "onOrientationChanged@@@@@@@@@@   PORTRAIT");
                setCollapsed();
            }
        }
    }

    public void close() {
        if (this.enumAdSkippableState == AdSkippableStateEnum.Skippable && this.enumAdState == AdStateEnum.AdPlaying) {
            this.videoAdManager.callbackEvent(VideoAdEvent.Event.AD_CLOSE);
        }
    }

    private void setWindowHasFocus() {
        this.windowState = this.windowHasFocus;
        this.windowState.entry();
        this.windowState.process(Event.none);
    }

    private void setWindowHasNoFocus() {
        this.windowState = this.windowHasNoFocus;
        this.windowState.entry();
        this.windowState.process(Event.none);
    }

    public void setStarted() {
        this.videoState = this.started;
        this.videoState.entry();
        this.videoState.process(Event.play);
    }

    public void setPaused() {
        this.videoState = this.paused;
        this.videoState.entry();
        this.videoState.process(Event.pause);
    }

    public void setMuted() {
        this.mutedState = this.muted;
        this.mutedState.entry();
        this.mutedState.process(Event.none);
    }

    public void setUnMuted() {
        this.mutedState = this.unmuted;
        this.mutedState.entry();
        this.mutedState.process(Event.none);
    }

    public void setAdPlaying() {
        this.adState = this.adPlaying;
        this.adState.entry();
        this.adState.process(Event.none);
    }

    public void setContentPlaying() {
        this.adState = this.contentPlaying;
        this.adState.entry();
        this.adState.process(Event.none);
    }

    public void setPreparing() {
        this.videoState = this.preparing;
        this.videoState.entry();
        this.videoState.process(Event.none);
    }

    public void setPrepared() {
        this.videoState = this.prepared;
        this.videoState.entry();
        this.videoState.process(Event.none);
    }

    public void setCompleted() {
        this.videoState = this.completed;
        this.videoState.entry();
        this.videoState.process(Event.none);
    }

    public void setSkippable() {
        this.adSkippableState = this.skippable;
        this.adSkippableState.entry();
        this.adSkippableState.process(Event.none);
    }

    public void setNotSkippable() {
        this.adSkippableState = this.notSkippable;
        this.adSkippableState.entry();
        this.adSkippableState.process(Event.none);
    }

    public void setSkipped() {
        this.adSkippedState = this.skipped;
        this.adSkippedState.entry();
        this.adSkippedState.process(Event.none);
    }

    public void setSkippedNot() {
        this.adSkippedState = this.notSkipped;
        this.adSkippedState.entry();
        this.adSkippedState.process(Event.none);
    }

    public void setNotPlaylist() {
        this.playlistState = this.notPlaylist;
        this.playlistState.entry();
        this.playlistState.process(Event.none);
    }

    public void setInPlaylist() {
        this.playlistState = this.inPlaylist;
        this.playlistState.entry();
        this.playlistState.process(Event.none);
    }

    public void setEndOfPlaylist() {
        this.playlistState = this.endOfPlaylist;
        this.playlistState.entry();
        this.playlistState.process(Event.none);
    }

    public void setCollapsed() {
        this.expandedState = this.collapsed;
        this.expandedState.entry();
        this.expandedState.process(Event.none);
    }

    public void setExpanded() {
        this.expandedState = this.expanded;
        this.expandedState.entry();
        this.expandedState.process(Event.none);
    }

    public boolean isMuted() {
        return this.enumMutedState == MutedStateEnum.Muted;
    }
}
