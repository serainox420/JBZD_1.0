package com.amazon.device.ads;

import android.content.Context;
import com.amazon.device.ads.ThreadUtils;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class UserAgentManager {
    private final ThreadUtils.ThreadRunner threadRunner;
    private String userAgentStringWithSDKVersion;
    private String userAgentStringWithoutSDKVersion;
    private final WebViewFactory webViewFactory;

    public UserAgentManager() {
        this(new ThreadUtils.ThreadRunner(), WebViewFactory.getInstance());
    }

    UserAgentManager(ThreadUtils.ThreadRunner threadRunner, WebViewFactory webViewFactory) {
        this.threadRunner = threadRunner;
        this.webViewFactory = webViewFactory;
    }

    public String getUserAgentString() {
        return this.userAgentStringWithSDKVersion;
    }

    public void setUserAgentString(String str) {
        if (str != null && !str.equals(this.userAgentStringWithoutSDKVersion) && !str.equals(this.userAgentStringWithSDKVersion)) {
            this.userAgentStringWithoutSDKVersion = str;
            this.userAgentStringWithSDKVersion = str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + Version.getUserAgentSDKVersion();
        }
    }

    public void populateUserAgentString(final Context context) {
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.UserAgentManager.1
            @Override // java.lang.Runnable
            public void run() {
                UserAgentManager.this.setUserAgentString(UserAgentManager.this.webViewFactory.createWebView(context).getSettings().getUserAgentString());
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }
}
