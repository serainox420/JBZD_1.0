package com.google.android.gms.analytics;

import android.content.Context;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class StandardExceptionParser implements ExceptionParser {
    private final TreeSet<String> zzacr = new TreeSet<>();

    public StandardExceptionParser(Context context, Collection<String> collection) {
        setIncludedPackages(context, collection);
    }

    protected StackTraceElement getBestStackTraceElement(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace == null || stackTrace.length == 0) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Iterator<String> it = this.zzacr.iterator();
            while (it.hasNext()) {
                if (className.startsWith(it.next())) {
                    return stackTraceElement;
                }
            }
        }
        return stackTrace[0];
    }

    protected Throwable getCause(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    @Override // com.google.android.gms.analytics.ExceptionParser
    public String getDescription(String str, Throwable th) {
        return getDescription(getCause(th), getBestStackTraceElement(getCause(th)), str);
    }

    protected String getDescription(Throwable th, StackTraceElement stackTraceElement, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String[] split = stackTraceElement.getClassName().split("\\.");
            String str2 = "unknown";
            if (split != null && split.length > 0) {
                str2 = split[split.length - 1];
            }
            sb.append(String.format(" (@%s:%s:%s)", str2, stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber())));
        }
        if (str != null) {
            sb.append(String.format(" {%s}", str));
        }
        return sb.toString();
    }

    public void setIncludedPackages(Context context, Collection<String> collection) {
        boolean z;
        this.zzacr.clear();
        HashSet<String> hashSet = new HashSet();
        if (collection != null) {
            hashSet.addAll(collection);
        }
        if (context != null) {
            hashSet.add(context.getApplicationContext().getPackageName());
        }
        for (String str : hashSet) {
            boolean z2 = true;
            Iterator<String> it = this.zzacr.iterator();
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (str.startsWith(next)) {
                    z2 = false;
                } else if (next.startsWith(str)) {
                    this.zzacr.remove(next);
                }
            }
            if (z) {
                this.zzacr.add(str);
            }
        }
    }
}
