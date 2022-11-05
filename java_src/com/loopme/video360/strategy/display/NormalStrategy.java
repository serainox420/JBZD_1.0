package com.loopme.video360.strategy.display;

import android.content.Context;
import android.opengl.GLSurfaceView;
import java.util.List;
/* loaded from: classes2.dex */
public class NormalStrategy extends AbsDisplayStrategy {
    public NormalStrategy(List<GLSurfaceView> list) {
        super(list);
    }

    @Override // com.loopme.video360.strategy.IModeStrategy
    public void on(Context context) {
        setVisibleSize(1);
    }

    @Override // com.loopme.video360.strategy.IModeStrategy
    public void off(Context context) {
    }

    @Override // com.loopme.video360.strategy.display.IDisplayMode
    public int getVisibleSize() {
        return 1;
    }
}
