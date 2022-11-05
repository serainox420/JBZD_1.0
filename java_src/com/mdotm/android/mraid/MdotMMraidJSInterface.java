package com.mdotm.android.mraid;

import android.webkit.JavascriptInterface;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.utils.MdotMLogger;
/* loaded from: classes.dex */
public class MdotMMraidJSInterface {
    boolean isRewarded = false;
    MdotMAdActionListener mActionListener;

    public MdotMMraidJSInterface(MdotMAdActionListener mdotMAdActionListener) {
        this.mActionListener = mdotMAdActionListener;
    }

    @JavascriptInterface
    public boolean getViewable() {
        MdotMLogger.d(this, "it is getViewable()");
        return false;
    }

    @JavascriptInterface
    public String getState() {
        MdotMLogger.d(this, "state is loading");
        return MdotMMraidConstants.mraidState;
    }

    @JavascriptInterface
    public void close() {
        MdotMLogger.i(this, "close with rewards" + this.isRewarded);
        if (this.isRewarded) {
            this.mActionListener.onMraidRewardClick(true);
        } else {
            this.mActionListener.onMraidRewardClick(false);
        }
    }

    @JavascriptInterface
    public void useCustomClose(String str) {
        this.mActionListener.onUseCustomClose(true);
    }

    @JavascriptInterface
    public void open(String str) {
        this.mActionListener.onOpenUrl(str);
    }

    @JavascriptInterface
    public void getVersion() {
        MdotMLogger.d(this, "getVersion is called");
    }

    @JavascriptInterface
    public boolean isViewable() {
        return MdotMMraidConstants.isViewable;
    }

    @JavascriptInterface
    public void setreward(String str) {
        if (str.equals("1")) {
            this.isRewarded = true;
        } else {
            this.isRewarded = false;
        }
    }

    @JavascriptInterface
    public void setOrientationProperties(String str) {
        MdotMLogger.d(this, "orientation" + str);
    }
}
