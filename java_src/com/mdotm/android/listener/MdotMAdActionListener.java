package com.mdotm.android.listener;
/* loaded from: classes3.dex */
public interface MdotMAdActionListener {
    void adClicked();

    boolean getViewable();

    void leaveApplication();

    void onDismissScreen();

    void onLoadError();

    void onMraidRewardClick(boolean z);

    void onOpenUrl(String str);

    void onPlayError();

    void onPlayStop();

    void onUseCustomClose(boolean z);
}
