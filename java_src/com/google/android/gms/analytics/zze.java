package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zze {
    private final zzg zzabU;
    private boolean zzabV;
    private long zzabW;
    private long zzabX;
    private long zzabY;
    private long zzabZ;
    private long zzaca;
    private boolean zzacb;
    private final Map<Class<? extends zzf>, zzf> zzacc;
    private final List<zzi> zzacd;
    private final com.google.android.gms.common.util.zze zzuP;

    zze(zze zzeVar) {
        this.zzabU = zzeVar.zzabU;
        this.zzuP = zzeVar.zzuP;
        this.zzabW = zzeVar.zzabW;
        this.zzabX = zzeVar.zzabX;
        this.zzabY = zzeVar.zzabY;
        this.zzabZ = zzeVar.zzabZ;
        this.zzaca = zzeVar.zzaca;
        this.zzacd = new ArrayList(zzeVar.zzacd);
        this.zzacc = new HashMap(zzeVar.zzacc.size());
        for (Map.Entry<Class<? extends zzf>, zzf> entry : zzeVar.zzacc.entrySet()) {
            zzf zzc = zzc(entry.getKey());
            entry.getValue().zzb(zzc);
            this.zzacc.put(entry.getKey(), zzc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(zzg zzgVar, com.google.android.gms.common.util.zze zzeVar) {
        zzac.zzw(zzgVar);
        zzac.zzw(zzeVar);
        this.zzabU = zzgVar;
        this.zzuP = zzeVar;
        this.zzabZ = 1800000L;
        this.zzaca = 3024000000L;
        this.zzacc = new HashMap();
        this.zzacd = new ArrayList();
    }

    private static <T extends zzf> T zzc(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("dataType default constructor is not accessible", e);
        } catch (InstantiationException e2) {
            throw new IllegalArgumentException("dataType doesn't have default constructor", e2);
        }
    }

    public <T extends zzf> T zza(Class<T> cls) {
        return (T) this.zzacc.get(cls);
    }

    public void zza(zzf zzfVar) {
        zzac.zzw(zzfVar);
        Class<?> cls = zzfVar.getClass();
        if (cls.getSuperclass() != zzf.class) {
            throw new IllegalArgumentException();
        }
        zzfVar.zzb(zzb(cls));
    }

    public <T extends zzf> T zzb(Class<T> cls) {
        T t = (T) this.zzacc.get(cls);
        if (t == null) {
            T t2 = (T) zzc(cls);
            this.zzacc.put(cls, t2);
            return t2;
        }
        return t;
    }

    public zze zzmC() {
        return new zze(this);
    }

    public Collection<zzf> zzmD() {
        return this.zzacc.values();
    }

    public List<zzi> zzmE() {
        return this.zzacd;
    }

    public long zzmF() {
        return this.zzabW;
    }

    public void zzmG() {
        zzmK().zze(this);
    }

    public boolean zzmH() {
        return this.zzabV;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzmI() {
        this.zzabY = this.zzuP.elapsedRealtime();
        if (this.zzabX != 0) {
            this.zzabW = this.zzabX;
        } else {
            this.zzabW = this.zzuP.currentTimeMillis();
        }
        this.zzabV = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg zzmJ() {
        return this.zzabU;
    }

    zzh zzmK() {
        return this.zzabU.zzmK();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzmL() {
        return this.zzacb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzmM() {
        this.zzacb = true;
    }

    public void zzq(long j) {
        this.zzabX = j;
    }
}
