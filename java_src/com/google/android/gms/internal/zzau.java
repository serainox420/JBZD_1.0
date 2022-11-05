package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.zzae;
import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class zzau extends zzas {
    protected boolean zzpU;
    protected String zzpV;
    protected boolean zzpW;
    protected boolean zzpX;
    protected static final Object zzpS = new Object();
    private static final String TAG = zzau.class.getSimpleName();
    protected static volatile zzbd zzpz = null;
    static boolean zzpT = false;
    private static long startTime = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzau(Context context, String str) {
        super(context);
        this.zzpU = false;
        this.zzpW = false;
        this.zzpX = false;
        this.zzpV = str;
        this.zzpU = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzau(Context context, String str, boolean z) {
        super(context);
        this.zzpU = false;
        this.zzpW = false;
        this.zzpX = false;
        this.zzpV = str;
        this.zzpU = z;
    }

    static zzbe zza(zzbd zzbdVar, MotionEvent motionEvent, DisplayMetrics displayMetrics) throws zzba {
        Method zzc = zzbdVar.zzc(zzaz.zzaC(), zzaz.zzaD());
        if (zzc == null || motionEvent == null) {
            throw new zzba();
        }
        try {
            return new zzbe((String) zzc.invoke(null, motionEvent, displayMetrics));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzba(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static synchronized void zza(Context context, boolean z) {
        synchronized (zzau.class) {
            if (!zzpT) {
                startTime = zzbf.zzbb().longValue() / 1000;
                zzpz = zzb(context, z);
                zzpT = true;
            }
        }
    }

    private static void zza(zzbd zzbdVar) {
        List<Class> singletonList = Collections.singletonList(Context.class);
        zzbdVar.zza(zzaz.zzai(), zzaz.zzaj(), singletonList);
        zzbdVar.zza(zzaz.zzas(), zzaz.zzat(), singletonList);
        zzbdVar.zza(zzaz.zzaq(), zzaz.zzar(), singletonList);
        zzbdVar.zza(zzaz.zzac(), zzaz.zzad(), singletonList);
        zzbdVar.zza(zzaz.zzam(), zzaz.zzan(), singletonList);
        zzbdVar.zza(zzaz.zzW(), zzaz.zzX(), singletonList);
        zzbdVar.zza(zzaz.zzaE(), zzaz.zzaF(), singletonList);
        zzbdVar.zza(zzaz.zzY(), zzaz.zzZ(), singletonList);
        List<Class> asList = Arrays.asList(MotionEvent.class, DisplayMetrics.class);
        zzbdVar.zza(zzaz.zzaC(), zzaz.zzaD(), asList);
        zzbdVar.zza(zzaz.zzaA(), zzaz.zzaB(), asList);
        zzbdVar.zza(zzaz.zzag(), zzaz.zzah(), Collections.emptyList());
        zzbdVar.zza(zzaz.zzay(), zzaz.zzaz(), Collections.emptyList());
        zzbdVar.zza(zzaz.zzao(), zzaz.zzap(), Collections.emptyList());
        zzbdVar.zza(zzaz.zzae(), zzaz.zzaf(), Collections.emptyList());
        zzbdVar.zza(zzaz.zzak(), zzaz.zzal(), Collections.emptyList());
        zzbdVar.zza(zzaz.zzaw(), zzaz.zzax(), Collections.emptyList());
        zzbdVar.zza(zzaz.zzaa(), zzaz.zzab(), Arrays.asList(Context.class, Boolean.TYPE));
        zzbdVar.zza(zzaz.zzau(), zzaz.zzav(), Arrays.asList(StackTraceElement[].class));
        zzbdVar.zza(zzaz.zzaG(), zzaz.zzaH(), Arrays.asList(View.class));
    }

    private void zza(zzbd zzbdVar, zzag.zza zzaVar) {
        int i = 1;
        try {
            zzbe zza = zza(zzbdVar, this.zzpF, this.zzpQ);
            zzaVar.zzbn = zza.zzqI;
            zzaVar.zzbo = zza.zzqJ;
            zzaVar.zzbp = zza.zzqK;
            if (this.zzpP) {
                zzaVar.zzbB = zza.zzcf;
                zzaVar.zzbC = zza.zzcd;
            }
            zzag.zza.C0209zza c0209zza = new zzag.zza.C0209zza();
            zzbe zzb = zzb(this.zzpF);
            c0209zza.zzbn = zzb.zzqI;
            c0209zza.zzbo = zzb.zzqJ;
            c0209zza.zzci = zzb.zzqK;
            if (this.zzpP) {
                c0209zza.zzcd = zzb.zzcd;
                c0209zza.zzcf = zzb.zzcf;
                c0209zza.zzch = Integer.valueOf(zzb.zzqL.longValue() != 0 ? 1 : 0);
                if (this.zzpI > 0) {
                    c0209zza.zzce = this.zzpQ != null ? Long.valueOf(Math.round(this.zzpN / this.zzpI)) : null;
                    c0209zza.zzcg = Long.valueOf(Math.round(this.zzpM / this.zzpI));
                }
                c0209zza.zzck = zzb.zzck;
                c0209zza.zzcj = zzb.zzcj;
                if (zzb.zzqO.longValue() == 0) {
                    i = 0;
                }
                c0209zza.zzcl = Integer.valueOf(i);
                if (this.zzpL > 0) {
                    c0209zza.zzcm = Long.valueOf(this.zzpL);
                }
            }
            zzaVar.zzbS = c0209zza;
        } catch (zzba e) {
        }
        if (this.zzpH > 0) {
            zzaVar.zzbG = Long.valueOf(this.zzpH);
        }
        if (this.zzpI > 0) {
            zzaVar.zzbF = Long.valueOf(this.zzpI);
        }
        if (this.zzpJ > 0) {
            zzaVar.zzbE = Long.valueOf(this.zzpJ);
        }
        if (this.zzpK > 0) {
            zzaVar.zzbH = Long.valueOf(this.zzpK);
        }
        try {
            int size = this.zzpG.size() - 1;
            if (size <= 0) {
                return;
            }
            zzaVar.zzbT = new zzag.zza.C0209zza[size];
            for (int i2 = 0; i2 < size; i2++) {
                zzbe zza2 = zza(zzbdVar, this.zzpG.get(i2), this.zzpQ);
                zzag.zza.C0209zza c0209zza2 = new zzag.zza.C0209zza();
                c0209zza2.zzbn = zza2.zzqI;
                c0209zza2.zzbo = zza2.zzqJ;
                zzaVar.zzbT[i2] = c0209zza2;
            }
        } catch (zzba e2) {
            zzaVar.zzbT = null;
        }
    }

    protected static zzbd zzb(Context context, boolean z) {
        if (zzpz == null) {
            synchronized (zzpS) {
                if (zzpz == null) {
                    zzbd zza = zzbd.zza(context, zzaz.getKey(), zzaz.zzV(), z);
                    zza(zza);
                    zzpz = zza;
                }
            }
        }
        return zzpz;
    }

    @Override // com.google.android.gms.internal.zzas
    protected long zza(StackTraceElement[] stackTraceElementArr) throws zzba {
        Method zzc = zzpz.zzc(zzaz.zzau(), zzaz.zzav());
        if (zzc == null || stackTraceElementArr == null) {
            throw new zzba();
        }
        try {
            return new zzbb((String) zzc.invoke(null, stackTraceElementArr)).zzqi.longValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzba(e);
        }
    }

    @Override // com.google.android.gms.internal.zzas
    protected zzag.zza zza(Context context, View view) {
        zzag.zza zzaVar = new zzag.zza();
        if (!TextUtils.isEmpty(this.zzpV)) {
            zzaVar.zzba = this.zzpV;
        }
        zzbd zzb = zzb(context, this.zzpU);
        zzb.zzaZ();
        zzb(zzb, zzaVar, view);
        zzb.zzba();
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.zzas
    protected zzag.zza zza(Context context, zzae.zza zzaVar) {
        zzag.zza zzaVar2 = new zzag.zza();
        if (!TextUtils.isEmpty(this.zzpV)) {
            zzaVar2.zzba = this.zzpV;
        }
        zzbd zzb = zzb(context, this.zzpU);
        zzb.zzaZ();
        zza(zzb, zzaVar2, zzaVar);
        zzb.zzba();
        return zzaVar2;
    }

    protected List<Callable<Void>> zza(zzbd zzbdVar, zzag.zza zzaVar, View view) {
        ArrayList arrayList = new ArrayList();
        if (zzbdVar.zzaI() == null) {
            return arrayList;
        }
        int zzQ = zzbdVar.zzQ();
        arrayList.add(new zzbp(zzbdVar, zzaVar));
        arrayList.add(new zzbs(zzbdVar, zzaz.zzao(), zzaz.zzap(), zzaVar, zzQ, 1));
        arrayList.add(new zzbn(zzbdVar, zzaz.zzag(), zzaz.zzah(), zzaVar, startTime, zzQ, 25));
        arrayList.add(new zzbm(zzbdVar, zzaz.zzae(), zzaz.zzaf(), zzaVar, zzQ, 44));
        arrayList.add(new zzbh(zzbdVar, zzaz.zzW(), zzaz.zzX(), zzaVar, zzQ, 3));
        arrayList.add(new zzbq(zzbdVar, zzaz.zzak(), zzaz.zzal(), zzaVar, zzQ, 22));
        arrayList.add(new zzbl(zzbdVar, zzaz.zzac(), zzaz.zzad(), zzaVar, zzQ, 5));
        arrayList.add(new zzbx(zzbdVar, zzaz.zzaE(), zzaz.zzaF(), zzaVar, zzQ, 48));
        if (zzgd.zzDR.get().booleanValue()) {
            arrayList.add(new zzbi(zzbdVar, zzaz.zzY(), zzaz.zzZ(), zzaVar, zzQ, 49));
        }
        arrayList.add(new zzbv(zzbdVar, zzaz.zzaw(), zzaz.zzax(), zzaVar, zzQ, 51));
        arrayList.add(new zzbu(zzbdVar, zzaz.zzau(), zzaz.zzav(), zzaVar, zzQ, 45, new Throwable().getStackTrace()));
        if (zzgd.zzDS.get().booleanValue()) {
            arrayList.add(new zzby(zzbdVar, zzaz.zzaG(), zzaz.zzaH(), zzaVar, zzQ, 57, view));
        }
        return arrayList;
    }

    protected void zza(zzbd zzbdVar, zzag.zza zzaVar, zzae.zza zzaVar2) {
        if (zzbdVar.zzaI() == null) {
            return;
        }
        zza(zzb(zzbdVar, zzaVar, zzaVar2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(List<Callable<Void>> list) {
        ExecutorService zzaI;
        if (zzpz == null || (zzaI = zzpz.zzaI()) == null || list.isEmpty()) {
            return;
        }
        try {
            zzaI.invokeAll(list, zzgd.zzDO.get().longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Log.d(TAG, String.format("class methods got exception: %s", zzbf.zza(e)));
        }
    }

    @Override // com.google.android.gms.internal.zzas
    protected zzbe zzb(MotionEvent motionEvent) throws zzba {
        Method zzc = zzpz.zzc(zzaz.zzaA(), zzaz.zzaB());
        if (zzc == null || motionEvent == null) {
            throw new zzba();
        }
        try {
            return new zzbe((String) zzc.invoke(null, motionEvent, this.zzpQ));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new zzba(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Callable<Void>> zzb(zzbd zzbdVar, zzag.zza zzaVar, zzae.zza zzaVar2) {
        int zzQ = zzbdVar.zzQ();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzbk(zzbdVar, zzaz.zzaa(), zzaz.zzab(), zzaVar, zzQ, 27, zzaVar2));
        arrayList.add(new zzbn(zzbdVar, zzaz.zzag(), zzaz.zzah(), zzaVar, startTime, zzQ, 25));
        arrayList.add(new zzbs(zzbdVar, zzaz.zzao(), zzaz.zzap(), zzaVar, zzQ, 1));
        arrayList.add(new zzbt(zzbdVar, zzaz.zzaq(), zzaz.zzar(), zzaVar, zzQ, 31));
        arrayList.add(new zzbw(zzbdVar, zzaz.zzay(), zzaz.zzaz(), zzaVar, zzQ, 33));
        arrayList.add(new zzbj(zzbdVar, zzaz.zzas(), zzaz.zzat(), zzaVar, zzQ, 29));
        arrayList.add(new zzbl(zzbdVar, zzaz.zzac(), zzaz.zzad(), zzaVar, zzQ, 5));
        arrayList.add(new zzbr(zzbdVar, zzaz.zzam(), zzaz.zzan(), zzaVar, zzQ, 12));
        arrayList.add(new zzbh(zzbdVar, zzaz.zzW(), zzaz.zzX(), zzaVar, zzQ, 3));
        arrayList.add(new zzbm(zzbdVar, zzaz.zzae(), zzaz.zzaf(), zzaVar, zzQ, 44));
        arrayList.add(new zzbq(zzbdVar, zzaz.zzak(), zzaz.zzal(), zzaVar, zzQ, 22));
        arrayList.add(new zzbx(zzbdVar, zzaz.zzaE(), zzaz.zzaF(), zzaVar, zzQ, 48));
        if (zzgd.zzDQ.get().booleanValue()) {
            arrayList.add(new zzbi(zzbdVar, zzaz.zzY(), zzaz.zzZ(), zzaVar, zzQ, 49));
        }
        arrayList.add(new zzbv(zzbdVar, zzaz.zzaw(), zzaz.zzax(), zzaVar, zzQ, 51));
        return arrayList;
    }

    protected void zzb(zzbd zzbdVar, zzag.zza zzaVar, View view) {
        zza(zzbdVar, zzaVar);
        zza(zza(zzbdVar, zzaVar, view));
    }
}
