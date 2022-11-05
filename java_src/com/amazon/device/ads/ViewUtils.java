package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.view.ViewTreeObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ViewUtils {
    private final AndroidBuildInfo androidBuildInfo;

    public ViewUtils() {
        this(new AndroidBuildInfo());
    }

    ViewUtils(AndroidBuildInfo androidBuildInfo) {
        this.androidBuildInfo = androidBuildInfo;
    }

    @SuppressLint({"NewApi"})
    public boolean removeOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (viewTreeObserver.isAlive()) {
            if (AndroidTargetUtils.isAtLeastAndroidAPI(this.androidBuildInfo, 16)) {
                viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
            }
            return true;
        }
        return false;
    }
}
