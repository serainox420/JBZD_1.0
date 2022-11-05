package com.facebook.drawee.view;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.drawee.interfaces.DraweeHierarchy;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class MultiDraweeHolder<DH extends DraweeHierarchy> {
    @VisibleForTesting
    boolean mIsAttached = false;
    @VisibleForTesting
    ArrayList<DraweeHolder<DH>> mHolders = new ArrayList<>();

    public void onAttach() {
        if (!this.mIsAttached) {
            this.mIsAttached = true;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mHolders.size()) {
                    this.mHolders.get(i2).onAttach();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void onDetach() {
        int i = 0;
        if (this.mIsAttached) {
            this.mIsAttached = false;
            while (true) {
                int i2 = i;
                if (i2 < this.mHolders.size()) {
                    this.mHolders.get(i2).onDetach();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        for (int i = 0; i < this.mHolders.size(); i++) {
            if (this.mHolders.get(i).onTouchEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    public void clear() {
        if (this.mIsAttached) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mHolders.size()) {
                    break;
                }
                this.mHolders.get(i2).onDetach();
                i = i2 + 1;
            }
        }
        this.mHolders.clear();
    }

    public void add(DraweeHolder<DH> draweeHolder) {
        add(this.mHolders.size(), draweeHolder);
    }

    public void add(int i, DraweeHolder<DH> draweeHolder) {
        Preconditions.checkNotNull(draweeHolder);
        Preconditions.checkElementIndex(i, this.mHolders.size() + 1);
        this.mHolders.add(i, draweeHolder);
        if (this.mIsAttached) {
            draweeHolder.onAttach();
        }
    }

    public void remove(int i) {
        DraweeHolder<DH> draweeHolder = this.mHolders.get(i);
        if (this.mIsAttached) {
            draweeHolder.onDetach();
        }
        this.mHolders.remove(i);
    }

    public DraweeHolder<DH> get(int i) {
        return this.mHolders.get(i);
    }

    public int size() {
        return this.mHolders.size();
    }

    public void draw(Canvas canvas) {
        for (int i = 0; i < this.mHolders.size(); i++) {
            Drawable topLevelDrawable = get(i).getTopLevelDrawable();
            if (topLevelDrawable != null) {
                topLevelDrawable.draw(canvas);
            }
        }
    }

    public boolean verifyDrawable(Drawable drawable) {
        for (int i = 0; i < this.mHolders.size(); i++) {
            if (drawable == get(i).getTopLevelDrawable()) {
                return true;
            }
        }
        return false;
    }
}
