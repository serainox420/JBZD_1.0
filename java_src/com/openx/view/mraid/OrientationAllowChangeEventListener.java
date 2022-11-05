package com.openx.view.mraid;

import android.content.Context;
import android.view.OrientationEventListener;
import com.openx.common.utils.logger.OXLog;
/* loaded from: classes3.dex */
public class OrientationAllowChangeEventListener extends OrientationEventListener {
    private final int THRESHOLD;
    private int lastOrientation;
    OrientationChangedListener listenerOrientationChanged;
    private OrientationInitialShowedListener listenerOrientationInitialShowed;
    private int screenOrientation;
    private boolean showedInitialForcedOrientation;

    /* loaded from: classes3.dex */
    public interface OrientationChangedListener {
        void onOrientationChanged(int i);
    }

    /* loaded from: classes3.dex */
    public interface OrientationInitialShowedListener {
        void onShowedInitital();
    }

    public void setOrientationChangedListener(OrientationChangedListener orientationChangedListener) {
        this.listenerOrientationChanged = orientationChangedListener;
    }

    public void setOrientationInitialShowedListener(OrientationInitialShowedListener orientationInitialShowedListener) {
        this.listenerOrientationInitialShowed = orientationInitialShowedListener;
    }

    public OrientationAllowChangeEventListener(Context context, int i) {
        super(context, i);
        this.lastOrientation = -1;
        this.THRESHOLD = 5;
        enable();
    }

    private boolean isLandscape(int i) {
        return (i <= 275 && i >= 265) || (i >= 85 && i <= 95);
    }

    private boolean isPortrait(int i) {
        return i >= 355 || i < 5 || (i <= 185 && i >= 175);
    }

    private int getCurrentOrientation(int i) {
        if (isLandscape(i)) {
            return 2;
        }
        if (isPortrait(i)) {
            return 1;
        }
        return this.lastOrientation;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i) {
        if (canDetectOrientation() && i != -1) {
            this.screenOrientation = getCurrentOrientation(i);
            if (this.screenOrientation != this.lastOrientation) {
                synchronized (this) {
                    if (this.listenerOrientationChanged != null) {
                        OXLog.debug("orientation:", "url: rotation: " + i + " new " + this.screenOrientation + " old: " + this.lastOrientation);
                        this.listenerOrientationChanged.onOrientationChanged(this.screenOrientation);
                    }
                    enable();
                    this.lastOrientation = this.screenOrientation;
                    if (this.showedInitialForcedOrientation && this.listenerOrientationChanged == null) {
                        this.listenerOrientationInitialShowed.onShowedInitital();
                    }
                    this.showedInitialForcedOrientation = true;
                }
            }
        }
    }
}
