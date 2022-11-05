package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzbvl implements zzbvd, Cloneable {
    public static final zzbvl zzcpV = new zzbvl();
    private double zzcpW = -1.0d;
    private int zzcpX = 136;
    private boolean zzcpY = true;
    private List<zzbug> zzcpZ = Collections.emptyList();
    private List<zzbug> zzcqa = Collections.emptyList();

    private boolean zza(zzbvg zzbvgVar) {
        return zzbvgVar == null || zzbvgVar.zzadx() <= this.zzcpW;
    }

    private boolean zza(zzbvg zzbvgVar, zzbvh zzbvhVar) {
        return zza(zzbvgVar) && zza(zzbvhVar);
    }

    private boolean zza(zzbvh zzbvhVar) {
        return zzbvhVar == null || zzbvhVar.zzadx() > this.zzcpW;
    }

    private boolean zzl(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean zzm(Class<?> cls) {
        return cls.isMemberClass() && !zzn(cls);
    }

    private boolean zzn(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    @Override // com.google.android.gms.internal.zzbvd
    public <T> zzbvc<T> zza(final zzbuk zzbukVar, final zzbwg<T> zzbwgVar) {
        Class<? super T> zzadQ = zzbwgVar.zzadQ();
        final boolean zza = zza((Class<?>) zzadQ, true);
        final boolean zza2 = zza((Class<?>) zzadQ, false);
        if (zza || zza2) {
            return new zzbvc<T>() { // from class: com.google.android.gms.internal.zzbvl.1
                private zzbvc<T> zzcpk;

                private zzbvc<T> zzadv() {
                    zzbvc<T> zzbvcVar = this.zzcpk;
                    if (zzbvcVar != 0) {
                        return zzbvcVar;
                    }
                    zzbvc<T> zza3 = zzbukVar.zza(zzbvl.this, zzbwgVar);
                    this.zzcpk = zza3;
                    return zza3;
                }

                @Override // com.google.android.gms.internal.zzbvc
                public void zza(zzbwj zzbwjVar, T t) throws IOException {
                    if (zza) {
                        zzbwjVar.zzadP();
                    } else {
                        zzadv().zza(zzbwjVar, t);
                    }
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
                @Override // com.google.android.gms.internal.zzbvc
                public T zzb(zzbwh zzbwhVar) throws IOException {
                    if (zza2) {
                        zzbwhVar.skipValue();
                        return null;
                    }
                    return zzadv().zzb(zzbwhVar);
                }
            };
        }
        return null;
    }

    public zzbvl zza(zzbug zzbugVar, boolean z, boolean z2) {
        zzbvl clone = clone();
        if (z) {
            clone.zzcpZ = new ArrayList(this.zzcpZ);
            clone.zzcpZ.add(zzbugVar);
        }
        if (z2) {
            clone.zzcqa = new ArrayList(this.zzcqa);
            clone.zzcqa.add(zzbugVar);
        }
        return clone;
    }

    public boolean zza(Class<?> cls, boolean z) {
        if (this.zzcpW == -1.0d || zza((zzbvg) cls.getAnnotation(zzbvg.class), (zzbvh) cls.getAnnotation(zzbvh.class))) {
            if ((this.zzcpY || !zzm(cls)) && !zzl(cls)) {
                for (zzbug zzbugVar : z ? this.zzcpZ : this.zzcqa) {
                    if (zzbugVar.zzg(cls)) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    public boolean zza(Field field, boolean z) {
        if ((this.zzcpX & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.zzcpW == -1.0d || zza((zzbvg) field.getAnnotation(zzbvg.class), (zzbvh) field.getAnnotation(zzbvh.class))) && !field.isSynthetic()) {
            if ((this.zzcpY || !zzm(field.getType())) && !zzl(field.getType())) {
                List<zzbug> list = z ? this.zzcpZ : this.zzcqa;
                if (!list.isEmpty()) {
                    zzbuh zzbuhVar = new zzbuh(field);
                    for (zzbug zzbugVar : list) {
                        if (zzbugVar.zza(zzbuhVar)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: zzadz */
    public zzbvl clone() {
        try {
            return (zzbvl) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public zzbvl zzg(int... iArr) {
        zzbvl clone = clone();
        clone.zzcpX = 0;
        for (int i : iArr) {
            clone.zzcpX = i | clone.zzcpX;
        }
        return clone;
    }
}
