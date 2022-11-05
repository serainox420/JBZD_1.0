package com.loopme.video360.strategy.interactive;

import android.content.Context;
import android.view.MotionEvent;
import com.loopme.video360.MD360Director;
import com.loopme.video360.strategy.ModeManager;
import java.util.List;
/* loaded from: classes2.dex */
public class InteractiveModeManager extends ModeManager<AbsInteractiveStrategy> implements IInteractiveMode {
    private List<MD360Director> mDirectorList;
    private boolean mIsResumed;

    public InteractiveModeManager(List<MD360Director> list) {
        this.mDirectorList = list;
    }

    @Override // com.loopme.video360.strategy.ModeManager
    public void switchMode(Context context) {
        switchMode(context);
        if (this.mIsResumed) {
            onResume(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.loopme.video360.strategy.ModeManager
    public AbsInteractiveStrategy createStrategy() {
        return new MotionStrategy(this.mDirectorList);
    }

    @Override // com.loopme.video360.strategy.interactive.IInteractiveMode
    public void onResume(Context context) {
        this.mIsResumed = true;
        getStrategy().onResume(context);
    }

    @Override // com.loopme.video360.strategy.interactive.IInteractiveMode
    public void onPause(Context context) {
        this.mIsResumed = false;
        getStrategy().onPause(context);
    }

    @Override // com.loopme.video360.strategy.interactive.IInteractiveMode
    public boolean handleTouchEvent(MotionEvent motionEvent) {
        return getStrategy().handleTouchEvent(motionEvent);
    }
}
