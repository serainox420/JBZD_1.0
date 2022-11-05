package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public abstract class zzca implements Callable {
    protected final String TAG = getClass().getSimpleName();
    protected final String className;
    protected final zzbd zzpz;
    protected final zzag.zza zzqV;
    protected final String zzrc;
    protected Method zzre;
    protected final int zzri;
    protected final int zzrj;

    public zzca(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        this.zzpz = zzbdVar;
        this.className = str;
        this.zzrc = str2;
        this.zzqV = zzaVar;
        this.zzri = i;
        this.zzrj = i2;
    }

    protected abstract void zzbd() throws IllegalAccessException, InvocationTargetException;

    @Override // java.util.concurrent.Callable
    /* renamed from: zzbk */
    public Void call() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            this.zzre = this.zzpz.zzc(this.className, this.zzrc);
            if (this.zzre != null) {
                zzbd();
                zzaq zzaP = this.zzpz.zzaP();
                if (zzaP != null && this.zzri != Integer.MIN_VALUE) {
                    zzaP.zza(this.zzrj, this.zzri, (System.nanoTime() - nanoTime) / 1000);
                }
            }
        } catch (IllegalAccessException e) {
        } catch (InvocationTargetException e2) {
        }
        return null;
    }
}
