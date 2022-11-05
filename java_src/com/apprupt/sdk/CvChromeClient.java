package com.apprupt.sdk;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* loaded from: classes.dex */
class CvChromeClient extends WebChromeClient {
    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        StringBuilder sb = new StringBuilder();
        sb.append("JS CONSOLE MESSAGE [");
        sb.append(consoleMessage.messageLevel().toString());
        sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
        sb.append(consoleMessage.sourceId());
        sb.append(":");
        sb.append(consoleMessage.lineNumber());
        sb.append("]: ");
        sb.append(consoleMessage.message());
        if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.DEBUG) {
            Logger.a("JS").a(sb.toString());
        } else if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.LOG || consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.TIP) {
            Logger.a("JS").b(sb.toString());
        } else if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.ERROR) {
            Logger.a("JS").d(sb.toString());
        } else {
            Logger.a("JS").d(sb.toString());
        }
        return true;
    }
}
