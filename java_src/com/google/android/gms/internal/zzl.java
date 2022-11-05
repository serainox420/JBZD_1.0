package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzn;
import com.google.android.gms.internal.zzt;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class zzl<T> implements Comparable<zzl<T>> {
    private final zzt.zza zzC;
    private final int zzD;
    private final String zzE;
    private final int zzF;
    private final zzn.zza zzG;
    private Integer zzH;
    private zzm zzI;
    private boolean zzJ;
    private boolean zzK;
    private boolean zzL;
    private boolean zzM;
    private zzp zzN;
    private zzb.zza zzO;

    /* loaded from: classes2.dex */
    public enum zza {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public zzl(int i, String str, zzn.zza zzaVar) {
        this.zzC = zzt.zza.zzaj ? new zzt.zza() : null;
        this.zzJ = true;
        this.zzK = false;
        this.zzL = false;
        this.zzM = false;
        this.zzO = null;
        this.zzD = i;
        this.zzE = str;
        this.zzG = zzaVar;
        zza((zzp) new zze());
        this.zzF = zzb(str);
    }

    private static int zzb(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public Map<String, String> getHeaders() throws com.google.android.gms.internal.zza {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.zzD;
    }

    public String getUrl() {
        return this.zzE;
    }

    public String toString() {
        return "[ ] " + getUrl() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + ("0x" + Integer.toHexString(zzf())) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + zzo() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.zzH;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzl<?> zza(int i) {
        this.zzH = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzl<?> zza(zzb.zza zzaVar) {
        this.zzO = zzaVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzl<?> zza(zzm zzmVar) {
        this.zzI = zzmVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzl<?> zza(zzp zzpVar) {
        this.zzN = zzpVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract zzn<T> zza(zzj zzjVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zza(T t);

    /* JADX INFO: Access modifiers changed from: protected */
    public zzs zzb(zzs zzsVar) {
        return zzsVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzc */
    public int compareTo(zzl<T> zzlVar) {
        zza zzo = zzo();
        zza zzo2 = zzlVar.zzo();
        return zzo == zzo2 ? this.zzH.intValue() - zzlVar.zzH.intValue() : zzo2.ordinal() - zzo.ordinal();
    }

    public void zzc(zzs zzsVar) {
        if (this.zzG != null) {
            this.zzG.zze(zzsVar);
        }
    }

    public void zzc(String str) {
        if (zzt.zza.zzaj) {
            this.zzC.zza(str, Thread.currentThread().getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzd(final String str) {
        if (this.zzI != null) {
            this.zzI.zzf(this);
        }
        if (zzt.zza.zzaj) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.zzl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzl.this.zzC.zza(str, id);
                        zzl.this.zzC.zzd(toString());
                    }
                });
                return;
            }
            this.zzC.zza(str, id);
            this.zzC.zzd(toString());
        }
    }

    public int zzf() {
        return this.zzF;
    }

    public String zzg() {
        return getUrl();
    }

    public zzb.zza zzh() {
        return this.zzO;
    }

    @Deprecated
    public String zzi() {
        return zzl();
    }

    @Deprecated
    public byte[] zzj() throws com.google.android.gms.internal.zza {
        return null;
    }

    protected String zzk() {
        return "UTF-8";
    }

    public String zzl() {
        return "application/x-www-form-urlencoded; charset=" + zzk();
    }

    public byte[] zzm() throws com.google.android.gms.internal.zza {
        return null;
    }

    public final boolean zzn() {
        return this.zzJ;
    }

    public zza zzo() {
        return zza.NORMAL;
    }

    public final int zzp() {
        return this.zzN.zzc();
    }

    public zzp zzq() {
        return this.zzN;
    }

    public void zzr() {
        this.zzL = true;
    }

    public boolean zzs() {
        return this.zzL;
    }
}
