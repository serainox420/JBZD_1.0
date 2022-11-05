package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
@zzme
/* loaded from: classes.dex */
public class zzpc {
    private boolean zzTZ;
    private final LinkedList<zza> zzWn;
    private final String zzWo;
    private final String zzWp;
    private long zzWq;
    private long zzWr;
    private long zzWs;
    private long zzWt;
    private long zzWu;
    private long zzWv;
    private final Object zzrJ;
    private final zzpe zzuM;

    /* JADX INFO: Access modifiers changed from: private */
    @zzme
    /* loaded from: classes.dex */
    public static final class zza {
        private long zzWw = -1;
        private long zzWx = -1;

        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong("topen", this.zzWw);
            bundle.putLong("tclose", this.zzWx);
            return bundle;
        }

        public long zzjY() {
            return this.zzWx;
        }

        public void zzjZ() {
            this.zzWx = SystemClock.elapsedRealtime();
        }

        public void zzka() {
            this.zzWw = SystemClock.elapsedRealtime();
        }
    }

    public zzpc(zzpe zzpeVar, String str, String str2) {
        this.zzrJ = new Object();
        this.zzWq = -1L;
        this.zzWr = -1L;
        this.zzTZ = false;
        this.zzWs = -1L;
        this.zzWt = 0L;
        this.zzWu = -1L;
        this.zzWv = -1L;
        this.zzuM = zzpeVar;
        this.zzWo = str;
        this.zzWp = str2;
        this.zzWn = new LinkedList<>();
    }

    public zzpc(String str, String str2) {
        this(com.google.android.gms.ads.internal.zzw.zzcQ(), str, str2);
    }

    public Bundle toBundle() {
        Bundle bundle;
        synchronized (this.zzrJ) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zzWo);
            bundle.putString("slotid", this.zzWp);
            bundle.putBoolean("ismediation", this.zzTZ);
            bundle.putLong("treq", this.zzWu);
            bundle.putLong("tresponse", this.zzWv);
            bundle.putLong("timp", this.zzWr);
            bundle.putLong("tload", this.zzWs);
            bundle.putLong("pcc", this.zzWt);
            bundle.putLong("tfetch", this.zzWq);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zza> it = this.zzWn.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toBundle());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public void zzD(boolean z) {
        synchronized (this.zzrJ) {
            if (this.zzWv != -1) {
                this.zzWs = SystemClock.elapsedRealtime();
                if (!z) {
                    this.zzWr = this.zzWs;
                    this.zzuM.zza(this);
                }
            }
        }
    }

    public void zzE(boolean z) {
        synchronized (this.zzrJ) {
            if (this.zzWv != -1) {
                this.zzTZ = z;
                this.zzuM.zza(this);
            }
        }
    }

    public void zzjV() {
        synchronized (this.zzrJ) {
            if (this.zzWv != -1 && this.zzWr == -1) {
                this.zzWr = SystemClock.elapsedRealtime();
                this.zzuM.zza(this);
            }
            this.zzuM.zzkj().zzjV();
        }
    }

    public void zzjW() {
        synchronized (this.zzrJ) {
            if (this.zzWv != -1) {
                zza zzaVar = new zza();
                zzaVar.zzka();
                this.zzWn.add(zzaVar);
                this.zzWt++;
                this.zzuM.zzkj().zzjW();
                this.zzuM.zza(this);
            }
        }
    }

    public void zzjX() {
        synchronized (this.zzrJ) {
            if (this.zzWv != -1 && !this.zzWn.isEmpty()) {
                zza last = this.zzWn.getLast();
                if (last.zzjY() == -1) {
                    last.zzjZ();
                    this.zzuM.zza(this);
                }
            }
        }
    }

    public void zzm(long j) {
        synchronized (this.zzrJ) {
            this.zzWv = j;
            if (this.zzWv != -1) {
                this.zzuM.zza(this);
            }
        }
    }

    public void zzn(long j) {
        synchronized (this.zzrJ) {
            if (this.zzWv != -1) {
                this.zzWq = j;
                this.zzuM.zza(this);
            }
        }
    }

    public void zzs(zzec zzecVar) {
        synchronized (this.zzrJ) {
            this.zzWu = SystemClock.elapsedRealtime();
            this.zzuM.zzkj().zzb(zzecVar, this.zzWu);
        }
    }
}
