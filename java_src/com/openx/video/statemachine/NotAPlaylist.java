package com.openx.video.statemachine;

import com.openx.common.utils.logger.OXLog;
import com.openx.video.statemachine.StateMachine;
/* loaded from: classes3.dex */
public class NotAPlaylist extends BaseState implements State {
    public NotAPlaylist(StateMachine stateMachine) {
        super(stateMachine);
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void process(StateMachine.Event event) {
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void entry() {
        OXLog.debug("STATE_MACHINE", "[[[ STATE MACHINE ]]] " + getClass().getSimpleName() + " Entry ");
        this.sm.enumPlaylistState = StateMachine.PlaylistStateEnum.NotAPlaylist;
    }

    @Override // com.openx.video.statemachine.BaseState, com.openx.video.statemachine.State
    public void exit() {
    }
}
