package com.openx.video.statemachine;

import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class BaseState implements State {
    public StateMachine sm;

    public BaseState(StateMachine stateMachine) {
        this.sm = stateMachine;
    }

    @Override // com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
    }

    @Override // com.openx.video.statemachine.State
    public void entry() {
    }

    @Override // com.openx.video.statemachine.State
    public void exit() {
    }
}
