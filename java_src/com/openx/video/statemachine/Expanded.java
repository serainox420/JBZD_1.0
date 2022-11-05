package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class Expanded extends BaseState implements State {
    public Expanded(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " process adstate:" + this.sm.enumAdState);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry adstate:" + this.sm.enumAdState);
        if (this.sm.enumExpandedState != StateMachine.ExpandedStateEnum.Expanded) {
            this.sm.enumExpandedState = StateMachine.ExpandedStateEnum.Expanded;
            if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying) {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_FULLSCREEN);
            } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_FULLSCREEN);
            }
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
