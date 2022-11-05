package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class Collapsed extends BaseState implements State {
    public Collapsed(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry adstate:" + this.sm.enumAdState);
        if (this.sm.enumExpandedState != StateMachine.ExpandedStateEnum.Collapsed) {
            this.sm.enumExpandedState = StateMachine.ExpandedStateEnum.Collapsed;
            if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying) {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_COLLAPSE);
            } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_EXITFULLSCREEN);
            }
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
