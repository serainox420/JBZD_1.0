package com.amazon.device.ads;

import android.view.ViewGroup;
/* loaded from: classes.dex */
class ViewManagerFactory {
    private ViewGroup viewGroup;

    public ViewManagerFactory withViewGroup(ViewGroup viewGroup) {
        this.viewGroup = viewGroup;
        return this;
    }

    public ViewManager createViewManager() {
        return new ViewManager(this.viewGroup);
    }
}
