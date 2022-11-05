package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.a;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzbtq {
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final Pattern zzaII = Pattern.compile("^(1|true|t|yes|y|on)$", 2);
    public static final Pattern zzaIJ = Pattern.compile("^(0|false|f|no|n|off|)$", 2);
    private final int zzAW;
    private final byte[] zzcmn;

    public zzbtq(byte[] bArr, int i) {
        this.zzcmn = bArr;
        this.zzAW = i;
    }

    private void zzach() {
        if (this.zzcmn == null) {
            throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
        }
    }

    public boolean asBoolean() throws IllegalArgumentException {
        if (this.zzAW == 0) {
            return false;
        }
        String asString = asString();
        if (zzaII.matcher(asString).matches()) {
            return true;
        }
        if (zzaIJ.matcher(asString).matches()) {
            return false;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(asString).length() + 45).append("[Value: ").append(asString).append("] cannot be interpreted as a boolean.").toString());
    }

    public byte[] asByteArray() {
        return this.zzAW == 0 ? a.f3603a : this.zzcmn;
    }

    public double asDouble() {
        if (this.zzAW == 0) {
            return 0.0d;
        }
        String asString = asString();
        try {
            return Double.valueOf(asString).doubleValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(asString).length() + 42).append("[Value: ").append(asString).append("] cannot be converted to a double.").toString(), e);
        }
    }

    public long asLong() {
        if (this.zzAW == 0) {
            return 0L;
        }
        String asString = asString();
        try {
            return Long.valueOf(asString).longValue();
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(asString).length() + 40).append("[Value: ").append(asString).append("] cannot be converted to a long.").toString(), e);
        }
    }

    public String asString() {
        if (this.zzAW == 0) {
            return "";
        }
        zzach();
        return new String(this.zzcmn, UTF_8);
    }

    public int getSource() {
        return this.zzAW;
    }
}
