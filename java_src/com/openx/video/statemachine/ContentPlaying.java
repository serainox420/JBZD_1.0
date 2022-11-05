package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class ContentPlaying extends BaseState implements State {
    public ContentPlaying(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  ContentPlaying process...");
        int i = AnonymousClass1.$SwitchMap$com$openx$video$statemachine$StateMachine$Event[event.ordinal()];
    }

    /* renamed from: com.openx.video.statemachine.ContentPlaying$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$openx$video$statemachine$StateMachine$Event = new int[StateMachine.Event.values().length];

        static {
            try {
                $SwitchMap$com$openx$video$statemachine$StateMachine$Event[StateMachine.Event.none.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  ContentPlaying Entry ");
        this.sm.enumAdState = StateMachine.AdStateEnum.ContentPlaying;
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  ContentPlaying Exit ");
    }
}
