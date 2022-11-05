package com.google.android.gms.internal;

import java.io.IOException;
import java.io.StringWriter;
/* loaded from: classes2.dex */
public abstract class zzbuq {
    public boolean getAsBoolean() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double getAsDouble() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int getAsInt() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long getAsLong() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            zzbwj zzbwjVar = new zzbwj(stringWriter);
            zzbwjVar.setLenient(true);
            zzbvr.zzb(this, zzbwjVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public Number zzadi() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String zzadj() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean zzadk() {
        return this instanceof zzbun;
    }

    public boolean zzadl() {
        return this instanceof zzbut;
    }

    public boolean zzadm() {
        return this instanceof zzbuw;
    }

    public boolean zzadn() {
        return this instanceof zzbus;
    }

    public zzbut zzado() {
        if (zzadl()) {
            return (zzbut) this;
        }
        String valueOf = String.valueOf(this);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Not a JSON Object: ").append(valueOf).toString());
    }

    public zzbun zzadp() {
        if (zzadk()) {
            return (zzbun) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public zzbuw zzadq() {
        if (zzadm()) {
            return (zzbuw) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    Boolean zzadr() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }
}
