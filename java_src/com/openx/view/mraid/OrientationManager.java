package com.openx.view.mraid;

import android.app.Activity;
import android.content.Context;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.view.mraid.OrientationAllowChangeEventListener;
/* loaded from: classes3.dex */
public class OrientationManager {
    private Context context;
    private int initialOrientation;
    private OrientationAllowChangeEventListener mOrientationListener;

    /* loaded from: classes3.dex */
    public enum ForcedOrientation {
        none,
        portrait,
        landscape
    }

    public OrientationManager(Context context) {
        this.context = context;
        this.initialOrientation = ((Activity) context).getRequestedOrientation();
    }

    public void onOrientationPropertiesChanged(boolean z, ForcedOrientation forcedOrientation) {
        if (z) {
            enableOrientationListener();
        } else {
            disableOrientationListener();
        }
        displayForcedOrientation(z, forcedOrientation);
    }

    public OrientationAllowChangeEventListener getOrientationEventListener() {
        return this.mOrientationListener;
    }

    private void setOrientationEventListener() {
        this.mOrientationListener = new OrientationAllowChangeEventListener(this.context, 3);
        this.mOrientationListener.setOrientationInitialShowedListener(new OrientationAllowChangeEventListener.OrientationInitialShowedListener() { // from class: com.openx.view.mraid.OrientationManager.1
            @Override // com.openx.view.mraid.OrientationAllowChangeEventListener.OrientationInitialShowedListener
            public void onShowedInitital() {
                OrientationManager.this.displayForcedOrientation(true, ForcedOrientation.none);
                OrientationManager.this.disableOrientationListener();
            }
        });
    }

    private int currentOrientation() {
        return OXMManagersResolver.getInstance().getDeviceManager().getDeviceOrientation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayForcedOrientation(boolean z, ForcedOrientation forcedOrientation) {
        switch (forcedOrientation) {
            case none:
                if (!z) {
                    keepInititalOrientation();
                    return;
                } else {
                    setOrientationSensor();
                    return;
                }
            case portrait:
                setOrientationPortrait();
                return;
            case landscape:
                setOrientationLandscape();
                return;
            default:
                return;
        }
    }

    private void setOrientationSensor() {
        ((Activity) this.context).setRequestedOrientation(Utils.atLeastGingerbread() ? 10 : 4);
    }

    private void setOrientationPortrait() {
        ((Activity) this.context).setRequestedOrientation(Utils.atLeastGingerbread() ? 7 : 1);
    }

    private void setOrientationLandscape() {
        ((Activity) this.context).setRequestedOrientation(Utils.atLeastGingerbread() ? 6 : 0);
    }

    public void enableOrientationListener() {
        if (this.mOrientationListener != null) {
            this.mOrientationListener.enable();
        } else {
            setOrientationEventListener();
        }
    }

    public void disableOrientationListener() {
        if (this.mOrientationListener != null) {
            this.mOrientationListener.disable();
        }
    }

    public void restoreInitialOrientation() {
        ((Activity) this.context).setRequestedOrientation(this.initialOrientation);
    }

    private void keepInititalOrientation() {
        if (currentOrientation() == 1) {
            setOrientationPortrait();
        } else if (currentOrientation() == 2) {
            setOrientationLandscape();
        }
    }
}
