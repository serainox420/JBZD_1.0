package com.loopme.adview;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.loopme.common.Logging;
import com.loopme.debugging.ErrorLog;
/* loaded from: classes2.dex */
public class AdViewChromeClient extends WebChromeClient {
    private static final String LOG_TAG = AdViewChromeClient.class.getSimpleName();

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.ERROR || consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.WARNING) {
            Logging.out(LOG_TAG, "Console Message: " + consoleMessage.message());
        }
        if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.ERROR) {
            ErrorLog.post("Error from js console: " + consoleMessage.message(), "js");
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
    }
}
