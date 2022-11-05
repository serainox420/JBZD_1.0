package com.adcolony.sdk;

import android.webkit.JavascriptInterface;
/* loaded from: classes.dex */
class ba {

    /* renamed from: a  reason: collision with root package name */
    cr f1105a;

    public ba(cr crVar) {
        this.f1105a = null;
        this.f1105a = crVar;
    }

    @JavascriptInterface
    public void openCatalog(int i) {
        cq.a(this.f1105a, i);
    }

    @JavascriptInterface
    public void openCatalogItem(String str, int i) {
        cq.a(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void openUrl(String str, int i) {
        cq.a(str, i);
    }

    @JavascriptInterface
    public void openIAP(int i) {
        cq.b(this.f1105a, i);
    }

    @JavascriptInterface
    public void resetDeviceId(int i) {
        cq.c(this.f1105a, i);
    }

    @JavascriptInterface
    public void logEvent(String str, int i) {
        cq.b(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void purgeFacebookCookiesCmd(int i) {
        cq.d(this.f1105a, i);
    }

    @JavascriptInterface
    public void restoreNonConsumables(String str, int i) {
        cq.c(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void close(int i) {
        cq.g(this.f1105a, i);
    }

    @JavascriptInterface
    public void consoleLog(String str, int i) {
        cq.d(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void setCloseButtonParams(String str, int i) {
        cq.e(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void suEraseBacklog(int i) {
        cq.h(this.f1105a, i);
    }

    @JavascriptInterface
    public void suEraseAssets(int i) {
        cq.i(this.f1105a, i);
    }

    @JavascriptInterface
    public void suEraseAll(int i) {
        cq.j(this.f1105a, i);
    }

    @JavascriptInterface
    public void suInitialize(int i) {
        cq.k(this.f1105a, i);
    }

    @JavascriptInterface
    public void suFlushLogs(int i) {
        cq.l(this.f1105a, i);
    }

    @JavascriptInterface
    public void suRefreshDevice(int i) {
        cq.m(this.f1105a, i);
    }

    @JavascriptInterface
    public void suGrantCustomReward(String str, int i) {
        cq.f(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void suSendCommand(String str, int i) {
        cq.f(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void suReInit(String str, int i) {
        cq.g(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void getServerRewardQueue(int i) {
        cq.n(this.f1105a, i);
    }

    @JavascriptInterface
    public void claimServerReward(String str, int i) {
        cq.h(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void startPurchaseDigitalItem(String str, int i) {
        cq.i(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void purchaseDigitalItem(String str, String str2, int i) {
        cq.a(this.f1105a, str, str2, i);
    }

    @JavascriptInterface
    public void getValueFromClientStorage(String str, int i) {
        cq.j(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void setValueFromClientStorage(String str, int i) {
        cq.k(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void removeValueFromClientStorage(String str, int i) {
        cq.l(this.f1105a, str, i);
    }

    @JavascriptInterface
    public void clearClientStorage(int i) {
        cq.p(this.f1105a, i);
    }
}
