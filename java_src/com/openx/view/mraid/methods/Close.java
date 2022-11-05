package com.openx.view.mraid.methods;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.openx.common.utils.helpers.Utils;
import com.openx.sdk.browser.AdBrowserActivity;
import com.openx.view.WebViewBanner;
import com.openx.view.WebViewBase;
import com.openx.view.mraid.BaseJSInterface;
/* loaded from: classes3.dex */
public class Close {
    private Context context;
    BaseJSInterface jsi;
    WebViewBase webViewBase;

    public Close(Context context, BaseJSInterface baseJSInterface, WebViewBase webViewBase) {
        this.context = context;
        this.webViewBase = webViewBase;
        this.jsi = baseJSInterface;
    }

    public void closeThroughJS(boolean z) {
        Utils.log(this, Utils.getLogMessage("perm_granted"));
        this.jsi.getState(new Handler() { // from class: com.openx.view.mraid.methods.Close.1
            @Override // android.os.Handler
            public void handleMessage(final Message message) {
                super.handleMessage(message);
                ((Activity) Close.this.context).runOnUiThread(new Runnable() { // from class: com.openx.view.mraid.methods.Close.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String string = message.getData().getString("value");
                        if (!string.equals("loading") && !string.equals("hidden")) {
                            if (string.equals("expanded")) {
                                Close.this.jsi.onStateChange("default");
                                Activity activity = (Activity) Close.this.context;
                                if (activity instanceof AdBrowserActivity) {
                                    activity.finish();
                                } else if (Close.this.webViewBase.getDialog() != null) {
                                    Close.this.webViewBase.getDialog().cancel();
                                }
                            } else if (string.equals("default")) {
                                Close.this.jsi.onStateChange("hidden");
                                Close.this.makeViewInvisible();
                            }
                            if ((Close.this.webViewBase instanceof WebViewBanner) && Close.this.webViewBase.getMRAID().getDefaultLayoutParams() != null) {
                                Close.this.webViewBase.setLayoutParams(Close.this.webViewBase.getMRAID().getDefaultLayoutParams());
                            }
                        }
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void makeViewInvisible() {
        ((Activity) this.context).runOnUiThread(new Runnable() { // from class: com.openx.view.mraid.methods.Close.2
            @Override // java.lang.Runnable
            public void run() {
                Close.this.webViewBase.setVisibility(4);
            }
        });
    }
}
