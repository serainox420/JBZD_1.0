package com.millennialmedia.internal.adadapters;

import android.content.Context;
import android.widget.RelativeLayout;
import com.millennialmedia.XIncentivizedEventListener;
/* loaded from: classes3.dex */
public abstract class InlineAdapter extends AdAdapter {

    /* loaded from: classes3.dex */
    public interface InlineAdapterListener {
        void displayFailed();

        void displaySucceeded();

        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);

        void onResize(int i, int i2);

        void onResized(int i, int i2, boolean z);
    }

    public abstract void display(RelativeLayout relativeLayout, int i, int i2);

    public abstract void init(Context context, InlineAdapterListener inlineAdapterListener);
}
