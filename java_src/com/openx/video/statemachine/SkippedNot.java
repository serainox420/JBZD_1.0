package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class SkippedNot extends BaseState implements State {
    public SkippedNot(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Process...");
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry ");
        this.sm.enumAdSkippedState = StateMachine.AdSkippedStateEnum.SkippedNot;
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Exit ");
    }
}
