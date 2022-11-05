package com.moat.analytics.mobile.aol;

import android.app.Activity;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface ActivityState {

    /* loaded from: classes3.dex */
    public interface ActivityDestructionListener {
        void onDestroyed(Activity activity) throws MoatException;
    }

    Activity getActivity();

    boolean isOutOfFocus();

    void listen() throws MoatException;
}
