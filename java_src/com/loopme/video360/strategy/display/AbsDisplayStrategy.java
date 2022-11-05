package com.loopme.video360.strategy.display;

import android.opengl.GLSurfaceView;
import com.loopme.video360.strategy.IModeStrategy;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class AbsDisplayStrategy implements IModeStrategy, IDisplayMode {
    private List<GLSurfaceView> mGLSurfaceViewList;

    public AbsDisplayStrategy(List<GLSurfaceView> list) {
        this.mGLSurfaceViewList = list;
    }

    protected List<GLSurfaceView> getGLSurfaceViewList() {
        return this.mGLSurfaceViewList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setVisibleSize(int i) {
        int i2 = 0;
        for (GLSurfaceView gLSurfaceView : getGLSurfaceViewList()) {
            if (i2 < i) {
                gLSurfaceView.setVisibility(0);
            } else {
                gLSurfaceView.setVisibility(8);
            }
            i2++;
        }
    }
}
