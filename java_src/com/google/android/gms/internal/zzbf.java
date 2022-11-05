package com.google.android.gms.internal;

import android.os.Looper;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class zzbf {
    private static final char[] zzqP = "0123456789abcdef".toCharArray();

    public static String zza(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static Long zzbb() {
        return Long.valueOf(Calendar.getInstance(TimeZone.getTimeZone("America/Los_Angeles")).getTime().getTime());
    }

    public static boolean zzbc() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static String zzr(String str) {
        if (str == null || !str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            return str;
        }
        UUID fromString = UUID.fromString(str);
        byte[] bArr = new byte[16];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(fromString.getMostSignificantBits());
        wrap.putLong(fromString.getLeastSignificantBits());
        return zzam.zza(bArr, true);
    }

    public static boolean zzs(String str) {
        return str == null || str.isEmpty();
    }
}
