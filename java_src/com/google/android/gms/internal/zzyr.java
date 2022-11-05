package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class zzyr {
    private static final Pattern zzaww = Pattern.compile("urn:x-cast:[-A-Za-z0-9_]+(\\.[-A-Za-z0-9_]+)*");

    public static double zzG(long j) {
        return j / 1000.0d;
    }

    public static <T> boolean zza(T t, T t2) {
        return (t == null && t2 == null) || !(t == null || t2 == null || !t.equals(t2));
    }

    public static String zzb(Locale locale) {
        StringBuilder sb = new StringBuilder(20);
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (!TextUtils.isEmpty(country)) {
            sb.append('-').append(country);
        }
        String variant = locale.getVariant();
        if (!TextUtils.isEmpty(variant)) {
            sb.append('-').append(variant);
        }
        return sb.toString();
    }

    private static boolean zzb(char c) {
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || ((c >= '0' && c <= '9') || c == '_' || c == '-');
    }

    public static void zzcQ(String str) throws IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Namespace cannot be null or empty");
        }
        if (str.length() > 128) {
            throw new IllegalArgumentException("Invalid namespace length");
        }
        if (!str.startsWith("urn:x-cast:")) {
            throw new IllegalArgumentException("Namespace must begin with the prefix \"urn:x-cast:\"");
        }
        if (str.length() != "urn:x-cast:".length()) {
            return;
        }
        throw new IllegalArgumentException("Namespace must begin with the prefix \"urn:x-cast:\" and have non-empty suffix");
    }

    public static String zzcR(String str) {
        String valueOf = String.valueOf("urn:x-cast:");
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    public static String zzcS(String str) {
        if (zzaww.matcher(str).matches()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (zzb(charAt) || charAt == '.' || charAt == ':') {
                sb.append(charAt);
            } else {
                sb.append(String.format("%%%04x", Integer.valueOf(charAt & 65535)));
            }
        }
        return sb.toString();
    }

    public static long zzf(double d) {
        return (long) (1000.0d * d);
    }
}
