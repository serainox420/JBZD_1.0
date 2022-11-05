package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class Preparing extends BaseState implements State {
    public Preparing(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
        if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_PREPARING);
        } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_PREPARING);
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry ");
        this.sm.enumPreparedState = StateMachine.PreparedStateEnum.Preparing;
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
