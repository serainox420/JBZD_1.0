package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
@zzme
/* loaded from: classes.dex */
public class zzdb {
    private int zzxA;
    private final int zzxp;
    private final int zzxq;
    private final int zzxr;
    private final zzdh zzxs;
    private final zzdm zzxt;
    private final Object zzrJ = new Object();
    private ArrayList<String> zzxu = new ArrayList<>();
    private ArrayList<String> zzxv = new ArrayList<>();
    private ArrayList<zzdf> zzxw = new ArrayList<>();
    private int zzxx = 0;
    private int zzxy = 0;
    private int zzxz = 0;
    private String zzxB = "";
    private String zzxC = "";
    private String zzxD = "";

    public zzdb(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.zzxp = i;
        this.zzxq = i2;
        this.zzxr = i3;
        this.zzxs = new zzdh(i4);
        this.zzxt = new zzdm(i5, i6, i7);
    }

    private String zza(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
            stringBuffer.append(' ');
            if (stringBuffer.length() > i) {
                break;
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.length() >= i ? stringBuffer2.substring(0, i) : stringBuffer2;
    }

    private void zzc(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.zzxr) {
            return;
        }
        synchronized (this.zzrJ) {
            this.zzxu.add(str);
            this.zzxx += str.length();
            if (z) {
                this.zzxv.add(str);
                this.zzxw.add(new zzdf(f, f2, f3, f4, this.zzxv.size() - 1));
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzdb)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzdb zzdbVar = (zzdb) obj;
        return zzdbVar.zzea() != null && zzdbVar.zzea().equals(zzea());
    }

    public int getScore() {
        return this.zzxA;
    }

    public int hashCode() {
        return zzea().hashCode();
    }

    public String toString() {
        int i = this.zzxy;
        int i2 = this.zzxA;
        int i3 = this.zzxx;
        String valueOf = String.valueOf(zza(this.zzxu, 100));
        String valueOf2 = String.valueOf(zza(this.zzxv, 100));
        String str = this.zzxB;
        String str2 = this.zzxC;
        String str3 = this.zzxD;
        return new StringBuilder(String.valueOf(valueOf).length() + 165 + String.valueOf(valueOf2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length()).append("ActivityContent fetchId: ").append(i).append(" score:").append(i2).append(" total_length:").append(i3).append("\n text: ").append(valueOf).append("\n viewableText").append(valueOf2).append("\n signture: ").append(str).append("\n viewableSignture: ").append(str2).append("\n viewableSignatureForVertical: ").append(str3).toString();
    }

    public void zza(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
        synchronized (this.zzrJ) {
            if (this.zzxz < 0) {
                zzpk.zzbf("ActivityContent: negative number of WebViews.");
            }
            zzeg();
        }
    }

    int zzb(int i, int i2) {
        return (this.zzxp * i) + (this.zzxq * i2);
    }

    public void zzb(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
    }

    public boolean zzdZ() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzxz == 0;
        }
        return z;
    }

    public String zzea() {
        return this.zzxB;
    }

    public String zzeb() {
        return this.zzxC;
    }

    public String zzec() {
        return this.zzxD;
    }

    public void zzed() {
        synchronized (this.zzrJ) {
            this.zzxA -= 100;
        }
    }

    public void zzee() {
        synchronized (this.zzrJ) {
            this.zzxz--;
        }
    }

    public void zzef() {
        synchronized (this.zzrJ) {
            this.zzxz++;
        }
    }

    public void zzeg() {
        synchronized (this.zzrJ) {
            int zzb = zzb(this.zzxx, this.zzxy);
            if (zzb > this.zzxA) {
                this.zzxA = zzb;
                if (zzgd.zzCi.get().booleanValue() && !com.google.android.gms.ads.internal.zzw.zzcQ().zzkg()) {
                    this.zzxB = this.zzxs.zza(this.zzxu);
                    this.zzxC = this.zzxs.zza(this.zzxv);
                }
                if (zzgd.zzCk.get().booleanValue() && !com.google.android.gms.ads.internal.zzw.zzcQ().zzkh()) {
                    this.zzxD = this.zzxt.zza(this.zzxv, this.zzxw);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzeh() {
        return this.zzxx;
    }

    public void zzn(int i) {
        this.zzxy = i;
    }
}
