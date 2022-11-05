package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.model.video.VideoAdEvent;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class Started extends BaseState implements State {
    public Started(StateMachine stateMachine) {
        super(stateMachine);
    }

    /* renamed from: com.openx.video.statemachine.Started$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$openx$video$statemachine$StateMachine$Event = new int[StateMachine.Event.values().length];

        static {
            try {
                $SwitchMap$com$openx$video$statemachine$StateMachine$Event[StateMachine.Event.pause.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
        int i = AnonymousClass1.$SwitchMap$com$openx$video$statemachine$StateMachine$Event[event.ordinal()];
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]]  Started Entry ");
        if (this.sm.enumAdState == StateMachine.AdStateEnum.AdPlaying) {
            if (this.sm.enumVideoState == StateMachine.VideoStateEnum.Paused) {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_RESUME);
            } else {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.AD_START);
            }
        } else if (this.sm.enumAdState == StateMachine.AdStateEnum.ContentPlaying) {
            if (this.sm.enumVideoState == StateMachine.VideoStateEnum.Paused) {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_RESUME);
            } else {
                this.sm.getVideoAdManager().callbackEvent(VideoAdEvent.Event.CONTENT_START);
            }
        }
        this.sm.enumVideoState = StateMachine.VideoStateEnum.Started;
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
