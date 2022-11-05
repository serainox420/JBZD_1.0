package com.loopme.video360.strategy.display;

import android.content.Context;
import android.opengl.GLSurfaceView;
import com.loopme.video360.strategy.ModeManager;
import java.util.List;
/* loaded from: classes2.dex */
public class DisplayModeManager extends ModeManager<AbsDisplayStrategy> implements IDisplayMode {
    private List<GLSurfaceView> mGLSurfaceViews;

    public DisplayModeManager(List<GLSurfaceView> list) {
        this.mGLSurfaceViews = list;
    }

    @Override // com.loopme.video360.strategy.ModeManager
    public void switchMode(Context context) {
        switchMode(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.loopme.video360.strategy.ModeManager
    public AbsDisplayStrategy createStrategy() {
        return new NormalStrategy(this.mGLSurfaceViews);
    }

    @Override // com.loopme.video360.strategy.display.IDisplayMode
    public int getVisibleSize() {
        return getStrategy().getVisibleSize();
    }
}
