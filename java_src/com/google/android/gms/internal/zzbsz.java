package com.google.android.gms.internal;

import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzbsz {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !zzbsz.class.desiredAssertionStatus();
    }

    private static long zzd(zzbrz<?> zzbrzVar) {
        long j = 8;
        if (!(zzbrzVar instanceof zzbru) && !(zzbrzVar instanceof zzbsa)) {
            if (zzbrzVar instanceof zzbrp) {
                j = 4;
            } else if (!(zzbrzVar instanceof zzbsi)) {
                String valueOf = String.valueOf(zzbrzVar.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 24).append("Unknown leaf node type: ").append(valueOf).toString());
            } else {
                j = ((String) zzbrzVar.getValue()).length() + 2;
            }
        }
        if (zzbrzVar.zzaaO().isEmpty()) {
            return j;
        }
        return zzd((zzbrz) zzbrzVar.zzaaO()) + 24 + j;
    }

    public static long zzt(zzbsc zzbscVar) {
        long j;
        if (zzbscVar.isEmpty()) {
            return 4L;
        }
        if (zzbscVar.zzaaN()) {
            return zzd((zzbrz) zzbscVar);
        }
        if (!$assertionsDisabled && !(zzbscVar instanceof zzbrr)) {
            String valueOf = String.valueOf(zzbscVar.getClass());
            throw new AssertionError(new StringBuilder(String.valueOf(valueOf).length() + 22).append("Unexpected node type: ").append(valueOf).toString());
        }
        long j2 = 1;
        Iterator<zzbsb> it = zzbscVar.iterator();
        while (true) {
            j = j2;
            if (!it.hasNext()) {
                break;
            }
            zzbsb next = it.next();
            j2 = zzt(next.zzWI()) + j + next.zzabj().asString().length() + 4;
        }
        return !zzbscVar.zzaaO().isEmpty() ? j + 12 + zzd((zzbrz) zzbscVar.zzaaO()) : j;
    }

    public static int zzu(zzbsc zzbscVar) {
        int i = 0;
        if (zzbscVar.isEmpty()) {
            return 0;
        }
        if (zzbscVar.zzaaN()) {
            return 1;
        }
        if (!$assertionsDisabled && !(zzbscVar instanceof zzbrr)) {
            String valueOf = String.valueOf(zzbscVar.getClass());
            throw new AssertionError(new StringBuilder(String.valueOf(valueOf).length() + 22).append("Unexpected node type: ").append(valueOf).toString());
        }
        Iterator<zzbsb> it = zzbscVar.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = zzu(it.next().zzWI()) + i2;
        }
    }
}
