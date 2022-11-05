package com.adcolony.sdk;
/* loaded from: classes.dex */
public abstract class AdColonyInterstitialListener {
    public abstract void onRequestFilled(AdColonyInterstitial adColonyInterstitial);

    public void onRequestNotFilled(AdColonyZone adColonyZone) {
    }

    public void onOpened(AdColonyInterstitial adColonyInterstitial) {
    }

    public void onClosed(AdColonyInterstitial adColonyInterstitial) {
    }

    public void onIAPEvent(AdColonyInterstitial adColonyInterstitial, String str, int i) {
    }

    public void onExpiring(AdColonyInterstitial adColonyInterstitial) {
    }

    public void onLeftApplication(AdColonyInterstitial adColonyInterstitial) {
    }

    public void onClicked(AdColonyInterstitial adColonyInterstitial) {
    }
}
