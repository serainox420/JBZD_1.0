package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
/* loaded from: classes2.dex */
public final class zzbuv {
    public zzbuq zza(Reader reader) throws zzbur, zzbuz {
        try {
            zzbwh zzbwhVar = new zzbwh(reader);
            zzbuq zzh = zzh(zzbwhVar);
            if (zzh.zzadn() || zzbwhVar.zzadF() == zzbwi.END_DOCUMENT) {
                return zzh;
            }
            throw new zzbuz("Did not consume the entire document.");
        } catch (zzbwk e) {
            throw new zzbuz(e);
        } catch (IOException e2) {
            throw new zzbur(e2);
        } catch (NumberFormatException e3) {
            throw new zzbuz(e3);
        }
    }

    public zzbuq zzh(zzbwh zzbwhVar) throws zzbur, zzbuz {
        boolean isLenient = zzbwhVar.isLenient();
        zzbwhVar.setLenient(true);
        try {
            try {
                return zzbvr.zzh(zzbwhVar);
            } catch (OutOfMemoryError e) {
                String valueOf = String.valueOf(zzbwhVar);
                throw new zzbuu(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed parsing JSON source: ").append(valueOf).append(" to Json").toString(), e);
            } catch (StackOverflowError e2) {
                String valueOf2 = String.valueOf(zzbwhVar);
                throw new zzbuu(new StringBuilder(String.valueOf(valueOf2).length() + 36).append("Failed parsing JSON source: ").append(valueOf2).append(" to Json").toString(), e2);
            }
        } finally {
            zzbwhVar.setLenient(isLenient);
        }
    }

    public zzbuq zzjT(String str) throws zzbuz {
        return zza(new StringReader(str));
    }
}
