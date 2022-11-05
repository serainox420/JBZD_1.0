package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class WindowHasFocus extends BaseState implements State {
    public WindowHasFocus(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry ");
        this.sm.enumWindowState = StateMachine.WindowStateEnum.HasFocus;
        this.sm.enumVideoState = StateMachine.VideoStateEnum.Started;
        if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_WINDOW_HAS_FOCUS);
        } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
            this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_WINDOW_HAS_FOCUS);
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
