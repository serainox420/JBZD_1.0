package com.loopme.common;

import android.util.DisplayMetrics;
import android.view.ViewGroup;
/* loaded from: classes2.dex */
public class MinimizedMode {
    private static final String LOG_TAG = MinimizedMode.class.getSimpleName();
    private int mHeight;
    private ViewGroup mRoot;
    private int mWidth;
    private int mMarginRight = 10;
    private int mMarginBottom = 10;

    public MinimizedMode(ViewGroup viewGroup) {
        this.mWidth = 100;
        this.mHeight = 100;
        if (viewGroup == null) {
            Logging.out(LOG_TAG, "Error: Root view should be not null. Minimized mode will not work");
            return;
        }
        this.mRoot = viewGroup;
        DisplayMetrics displayMetrics = Utils.getDisplayMetrics();
        if (displayMetrics.heightPixels > displayMetrics.widthPixels) {
            this.mWidth = displayMetrics.widthPixels / 2;
        } else {
            this.mWidth = displayMetrics.widthPixels / 3;
        }
        this.mHeight = (this.mWidth * 2) / 3;
        this.mWidth -= 6;
    }

    public void setViewSize(int i, int i2) {
        this.mWidth = Utils.convertDpToPixel(i);
        this.mHeight = Utils.convertDpToPixel(i2);
    }

    public void setMarginRight(int i) {
        this.mMarginRight = Utils.convertDpToPixel(i);
    }

    public void setMarginBottom(int i) {
        this.mMarginBottom = Utils.convertDpToPixel(i);
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public ViewGroup getRootView() {
        return this.mRoot;
    }

    public int getMarginRight() {
        return this.mMarginRight;
    }

    public int getMarginBottom() {
        return this.mMarginBottom;
    }
}
