package com.apprupt.sdk;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public enum CvAnimationType {
    NONE,
    DEFAULT,
    FADE,
    LEFT_RIGHT,
    RIGHT_LEFT,
    TOP_BOTTOM,
    BOTTOM_TOP;

    private Animation a(boolean z) {
        Animation animation;
        float f;
        float f2;
        float f3 = 0.9f;
        float f4 = -1.0f;
        float f5 = 1.0f;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        if (this == DEFAULT) {
            return FADE.a(z);
        }
        switch (this) {
            case NONE:
            case FADE:
                if (z) {
                    if (this != NONE) {
                        f3 = 0.0f;
                    }
                } else if (this == NONE) {
                    f5 = 0.9f;
                    f3 = 1.0f;
                } else {
                    f3 = 1.0f;
                    f5 = 0.0f;
                }
                AlphaAnimation alphaAnimation = new AlphaAnimation(f5, f3);
                long j = 800;
                if (this == NONE) {
                    j = 10;
                } else if (z) {
                    j = 500;
                }
                alphaAnimation.setDuration(j);
                animation = alphaAnimation;
                break;
            default:
                if (!z) {
                    switch (this) {
                        case LEFT_RIGHT:
                            f = 0.0f;
                            f2 = 0.0f;
                            f6 = -1.0f;
                            f4 = 0.0f;
                            break;
                        case RIGHT_LEFT:
                            f = 0.0f;
                            f2 = 0.0f;
                            f4 = 0.0f;
                            f6 = 1.0f;
                            break;
                        case TOP_BOTTOM:
                            f = 0.0f;
                            f2 = -1.0f;
                            f4 = 0.0f;
                            break;
                        case BOTTOM_TOP:
                            f = 0.0f;
                            f2 = 1.0f;
                            f4 = 0.0f;
                            break;
                        default:
                            f = 0.0f;
                            f2 = 0.0f;
                            f4 = 0.0f;
                            break;
                    }
                } else {
                    switch (this) {
                        case LEFT_RIGHT:
                            f4 = 1.0f;
                            f5 = 0.0f;
                            break;
                        case RIGHT_LEFT:
                            f5 = 0.0f;
                            break;
                        case TOP_BOTTOM:
                            f4 = 0.0f;
                            break;
                        case BOTTOM_TOP:
                            f5 = -1.0f;
                            f4 = 0.0f;
                            break;
                        default:
                            f5 = 0.0f;
                            f4 = 0.0f;
                            break;
                    }
                    f = f5;
                    f2 = 0.0f;
                }
                animation = new TranslateAnimation(2, f6, 2, f4, 2, f2, 2, f);
                animation.setDuration(500L);
                break;
        }
        animation.setInterpolator(new AccelerateInterpolator());
        return animation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animation a() {
        return a(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Animation b() {
        return a(true);
    }
}
