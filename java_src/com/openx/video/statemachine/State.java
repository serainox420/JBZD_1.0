package com.openx.video.statemachine;

import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public interface State {
    void entry();

    void exit();

    void process(StateMachine.Event event);
}
