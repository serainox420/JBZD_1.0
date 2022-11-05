package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class Completed extends BaseState implements State {
    public Completed(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Process...");
        if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying && this.sm.enumAdSkippedState == StateMachine.AdSkippedStateEnum.SkippedNot) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_COMPLETE);
        } else if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying && this.sm.enumAdSkippedState == StateMachine.AdSkippedStateEnum.Skipped) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_SKIP);
            this.sm.enumAdSkippedState = StateMachine.AdSkippedStateEnum.SkippedNot;
        } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_COMPLETE);
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry ");
        this.sm.enumVideoState = StateMachine.VideoStateEnum.Completed;
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Exit ");
    }
}
