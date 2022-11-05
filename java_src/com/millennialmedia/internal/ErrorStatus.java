package com.millennialmedia.internal;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class ErrorStatus {
    public static final int ADAPTER_NOT_FOUND = 1;
    public static final int DISPLAY_FAILED = 4;
    public static final int INIT_FAILED = 3;
    public static final int LOAD_FAILED = 5;
    public static final int LOAD_TIMED_OUT = 6;
    public static final int NO_NETWORK = 2;
    public static final int UNKNOWN = 7;

    /* renamed from: a  reason: collision with root package name */
    protected static final Map<Integer, String> f4055a = new HashMap();
    private int b;
    private String c;
    private Throwable d;

    static {
        f4055a.put(1, "ADAPTER_NOT_FOUND");
        f4055a.put(2, "NO_NETWORK");
        f4055a.put(3, "INIT_FAILED");
        f4055a.put(4, "DISPLAY_FAILED");
        f4055a.put(5, "LOAD_FAILED");
        f4055a.put(6, "LOAD_TIMED_OUT");
        f4055a.put(7, "UNKNOWN");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ErrorStatus(int i) {
        this(i, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ErrorStatus(int i, String str) {
        this(i, str, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ErrorStatus(int i, String str, Throwable th) {
        this.b = i;
        this.c = str;
        this.d = th;
    }

    public int getErrorCode() {
        return this.b;
    }

    public String getDescription() {
        return this.c;
    }

    public String toString() {
        return "[" + this.b + "]: [" + f4055a.get(Integer.valueOf(this.b)) + "] " + (this.c != null ? this.c : "No additional details available.") + (this.d != null ? " caused by " + this.d.getMessage() : "");
    }
}
