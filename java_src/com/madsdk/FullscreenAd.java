package com.madsdk;

import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.madsdk.javascript.MraidEventsListener;
/* loaded from: classes2.dex */
public class FullscreenAd extends DialogFragment {
    private FullScreenDialog fullScreenDialog;
    private boolean isUseCustomClose;
    private FrameLayout.LayoutParams layoutParams;
    private InterstitialAdListener listener;
    private AdWebView mWebView;
    private MraidEventsListener mraidEventsListener;

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        this.fullScreenDialog = new FullScreenDialog(getActivity(), this.mraidEventsListener);
        if (this.mWebView == null) {
            dismiss();
            return null;
        }
        this.fullScreenDialog.addWebView(this.mWebView, this.layoutParams, this.isUseCustomClose);
        return this.fullScreenDialog;
    }

    public void setMraidEventsListener(MraidEventsListener mraidEventsListener) {
        this.mraidEventsListener = mraidEventsListener;
    }

    public void addWebView(AdWebView adWebView, FrameLayout.LayoutParams layoutParams, boolean z) {
        this.mWebView = adWebView;
        this.layoutParams = layoutParams;
        this.isUseCustomClose = z;
    }

    public void showButton() {
        this.fullScreenDialog.showButton();
    }

    public void hideButton() {
        this.fullScreenDialog.hideButton();
    }

    public void removeWebView() {
        this.fullScreenDialog.removeWebView();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.listener != null) {
            this.listener.onResumeForAd();
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.listener != null) {
            this.listener.onPauseForAd();
        }
    }

    public void setListener(InterstitialAdListener interstitialAdListener) {
        this.listener = interstitialAdListener;
    }
}
