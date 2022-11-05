package com.revmob.internal;

import com.facebook.common.util.UriUtil;
import com.facebook.internal.AnalyticsEvents;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.firebase.a.a;
import com.openx.view.mraid.JSInterface;
import com.revmob.client.RevMobClient;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static JSONObject f4813a = new JSONObject();

    public static void a(Throwable th, String str, Enum r8, String str2, String str3) {
        new v(th, str, r8, str2, str3).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(Throwable th, String str, Enum r15, String str2, String str3) {
        Throwable th2;
        String str4;
        boolean z = true;
        String str5 = null;
        if (r15.equals(w.f4815a) && c.e()) {
            str5 = "downloadCreativesErrors";
        } else if (r15.equals(w.b) && c.f()) {
            str5 = "clickRedirectionErrors";
        } else if (!r15.equals(w.c) || !c.g()) {
            z = false;
        } else {
            str5 = "exceptions";
        }
        f4813a.put(a.b.LOCATION, str3);
        f4813a.put("campaignId", str);
        if (z) {
            try {
                f4813a.put("url", str2);
                while (th != null) {
                    try {
                        StackTraceElement[] stackTrace = th.getStackTrace();
                        String str6 = "";
                        boolean z2 = true;
                        int length = stackTrace.length;
                        int i = 0;
                        Throwable th3 = th;
                        while (i < length) {
                            StackTraceElement stackTraceElement = stackTrace[i];
                            if (z2) {
                                f4813a.put(UriUtil.LOCAL_FILE_SCHEME, stackTraceElement.getFileName() == null ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN : stackTraceElement.getFileName());
                                f4813a.put("lineNumber", String.valueOf(stackTraceElement.getLineNumber()));
                                f4813a.put(JSInterface.JSON_METHOD, stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName());
                                f4813a.put("error", th3);
                                z2 = false;
                            }
                            try {
                                str6 = str6 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + stackTraceElement.toString();
                                if (th3 != null) {
                                    th3 = th3.getCause();
                                }
                                th2 = th3;
                                str4 = str6;
                            } catch (Throwable th4) {
                                String str7 = str6;
                                th2 = th3;
                                str4 = str7;
                            }
                            i++;
                            String str8 = str4;
                            th3 = th2;
                            str6 = str8;
                        }
                        f4813a.put("stackTrace", str6);
                        th = th3;
                    } catch (Throwable th5) {
                    }
                }
                f4813a.put("type", str5);
                JSONObject b = com.revmob.a.e.b();
                b.put("error", f4813a);
                if (b == null) {
                    return;
                }
                RevMobClient.a();
                RevMobClient.a(b.toString());
            } catch (Exception e) {
            }
        }
    }
}
