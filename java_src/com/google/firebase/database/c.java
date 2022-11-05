package com.google.firebase.database;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, String> f3550a = new HashMap();
    private static final Map<String, Integer> b;
    private final int c;
    private final String d;
    private final String e;

    static {
        f3550a.put(-1, "The transaction needs to be run again with current data");
        f3550a.put(-2, "The server indicated that this operation failed");
        f3550a.put(-3, "This client does not have permission to perform this operation");
        f3550a.put(-4, "The operation had to be aborted due to a network disconnect");
        f3550a.put(-6, "The supplied auth token has expired");
        f3550a.put(-7, "The supplied auth token was invalid");
        f3550a.put(-8, "The transaction had too many retries");
        f3550a.put(-9, "The transaction was overridden by a subsequent set");
        f3550a.put(-10, "The service is unavailable");
        f3550a.put(-11, "User code called from the Firebase Database runloop threw an exception:\n");
        f3550a.put(-24, "The operation could not be performed due to a network error");
        f3550a.put(-25, "The write was canceled by the user.");
        f3550a.put(-999, "An unknown error occurred");
        b = new HashMap();
        b.put("datastale", -1);
        b.put("failure", -2);
        b.put("permission_denied", -3);
        b.put("disconnected", -4);
        b.put("expired_token", -6);
        b.put("invalid_token", -7);
        b.put("maxretries", -8);
        b.put("overriddenbyset", -9);
        b.put("unavailable", -10);
        b.put("network_error", -24);
        b.put("write_canceled", -25);
    }

    private c(int i, String str) {
        this(i, str, null);
    }

    private c(int i, String str, String str2) {
        this.c = i;
        this.d = str;
        this.e = str2 == null ? "" : str2;
    }

    public static c a(int i) {
        if (!f3550a.containsKey(Integer.valueOf(i))) {
            throw new IllegalArgumentException(new StringBuilder(49).append("Invalid Firebase Database error code: ").append(i).toString());
        }
        return new c(i, f3550a.get(Integer.valueOf(i)), null);
    }

    public static c a(String str) {
        return a(str, null);
    }

    public static c a(String str, String str2) {
        return a(str, str2, null);
    }

    public static c a(String str, String str2, String str3) {
        Integer num = b.get(str.toLowerCase());
        Integer num2 = num == null ? -999 : num;
        return new c(num2.intValue(), str2 == null ? f3550a.get(num2) : str2, str3);
    }

    public static c a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String valueOf = String.valueOf(f3550a.get(-11));
        String valueOf2 = String.valueOf(stringWriter.toString());
        return new c(-11, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    public int a() {
        return this.c;
    }

    public DatabaseException b() {
        String valueOf = String.valueOf(this.d);
        return new DatabaseException(valueOf.length() != 0 ? "Firebase Database error: ".concat(valueOf) : new String("Firebase Database error: "));
    }

    public String toString() {
        String valueOf = String.valueOf(this.d);
        return valueOf.length() != 0 ? "DatabaseError: ".concat(valueOf) : new String("DatabaseError: ");
    }
}
