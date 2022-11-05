package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class Prepared extends BaseState implements State {
    public Prepared(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
        if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_PREPARED);
        } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_PREPARED);
            if (this.sm.enumPlaylistState == StateMachine.PlaylistStateEnum.EndOfPlaylist) {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_PLAYLIST_COMPLETE);
                this.sm.enumPlaylistState = StateMachine.PlaylistStateEnum.InPlaylist;
            }
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  Prepared Entry ");
        this.sm.enumPreparedState = StateMachine.PreparedStateEnum.Prepared;
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
