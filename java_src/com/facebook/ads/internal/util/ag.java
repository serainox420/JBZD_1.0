package com.facebook.ads.internal.util;

import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes.dex */
public class ag {
    public static final String a(Throwable th) {
        if (th == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        return stringWriter.toString();
    }
}
