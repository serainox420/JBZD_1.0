package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class WindowHasNoFocus extends BaseState implements State {
    public WindowHasNoFocus(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry ");
        this.sm.enumWindowState = StateMachine.WindowStateEnum.HasNoFocus;
        this.sm.enumVideoState = StateMachine.VideoStateEnum.Paused;
        if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_WINDOW_HAS_NO_FOCUS);
        } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_WINDOW_HAS_NO_FOCUS);
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
