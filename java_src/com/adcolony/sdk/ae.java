package com.adcolony.sdk;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae {

    /* renamed from: a  reason: collision with root package name */
    final int f1036a = 30;
    String b = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx";
    String c = "0123456789ABCDEF";
    String d = "0123456789abcdef";

    boolean a() {
        NetworkInfo activeNetworkInfo;
        if (a.l == null || (activeNetworkInfo = ((ConnectivityManager) a.l.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return false;
        }
        return activeNetworkInfo.getType() == 1;
    }

    boolean b() {
        NetworkInfo activeNetworkInfo;
        if (a.l == null || (activeNetworkInfo = ((ConnectivityManager) a.l.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return false;
        }
        int type = activeNetworkInfo.getType();
        return type == 0 || type >= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        if (a()) {
            return "wifi";
        }
        if (b()) {
            return "cell";
        }
        return "none";
    }

    String a(String str) {
        if (str == null) {
            str = "null";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < 128 && this.b.charAt(charAt) == ' ') {
                sb.append(charAt);
            } else {
                sb.append('%');
                int i2 = (charAt >> 4) & 15;
                int i3 = charAt & 15;
                if (i2 < 10) {
                    sb.append((char) (i2 + 48));
                } else {
                    sb.append((char) ((i2 + 65) - 10));
                }
                if (i3 < 10) {
                    sb.append((char) (i3 + 48));
                } else {
                    sb.append((char) ((i3 + 65) - 10));
                }
            }
        }
        return sb.toString();
    }

    int a(char c) {
        int indexOf = this.c.indexOf(c);
        if (indexOf < 0) {
            int indexOf2 = this.d.indexOf(c);
            if (indexOf2 < 0) {
                return 0;
            }
            return indexOf2;
        }
        return indexOf;
    }

    String b(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '%') {
                char charAt2 = i + 1 < length ? str.charAt(i + 1) : '0';
                char charAt3 = i + 2 < length ? str.charAt(i + 2) : '0';
                i += 2;
                sb.append((char) (a(charAt3) | (a(charAt2) << 8)));
            } else {
                sb.append(charAt);
            }
            i++;
        }
        return sb.toString();
    }
}
