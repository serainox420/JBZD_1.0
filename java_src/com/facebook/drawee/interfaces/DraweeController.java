package com.facebook.drawee.interfaces;

import android.graphics.drawable.Animatable;
import android.view.MotionEvent;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public interface DraweeController {
    Animatable getAnimatable();

    String getContentDescription();

    @Nullable
    DraweeHierarchy getHierarchy();

    void onAttach();

    void onDetach();

    boolean onTouchEvent(MotionEvent motionEvent);

    void onViewportVisibilityHint(boolean z);

    void setContentDescription(String str);

    void setHierarchy(@Nullable DraweeHierarchy draweeHierarchy);
}
