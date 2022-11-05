package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrr;
import com.google.android.gms.internal.zzbsc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
/* loaded from: classes2.dex */
public class zzbrs {
    private final List<zzbph> zzcbp;
    private final List<String> zzcbq;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza {
        private int zzcjg;
        private final zzc zzcjk;
        private StringBuilder zzcjd = null;
        private Stack<zzbrq> zzcje = new Stack<>();
        private int zzcjf = -1;
        private boolean zzcjh = true;
        private final List<zzbph> zzcji = new ArrayList();
        private final List<String> zzcjj = new ArrayList();

        public zza(zzc zzcVar) {
            this.zzcjk = zzcVar;
        }

        private void zza(StringBuilder sb, zzbrq zzbrqVar) {
            sb.append(zzbte.zzji(zzbrqVar.asString()));
        }

        private void zzaaV() {
            if (!zzaaS()) {
                this.zzcjd = new StringBuilder();
                this.zzcjd.append("(");
                Iterator<zzbrq> it = zzqD(this.zzcjg).iterator();
                while (it.hasNext()) {
                    zza(this.zzcjd, it.next());
                    this.zzcjd.append(":(");
                }
                this.zzcjh = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaaW() {
            this.zzcjg--;
            if (zzaaS()) {
                this.zzcjd.append(")");
            }
            this.zzcjh = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzaaX() {
            zzbte.zzb(this.zzcjg == 0, "Can't finish hashing in the middle processing a child");
            if (zzaaS()) {
                zzaaY();
            }
            this.zzcjj.add("");
        }

        private void zzaaY() {
            zzbte.zzb(zzaaS(), "Can't end range without starting a range!");
            for (int i = 0; i < this.zzcjg; i++) {
                this.zzcjd.append(")");
            }
            this.zzcjd.append(")");
            zzbph zzqD = zzqD(this.zzcjf);
            this.zzcjj.add(zzbte.zzjh(this.zzcjd.toString()));
            this.zzcji.add(zzqD);
            this.zzcjd = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzb(zzbrz<?> zzbrzVar) {
            zzaaV();
            this.zzcjf = this.zzcjg;
            this.zzcjd.append(zzbrzVar.zza(zzbsc.zza.V2));
            this.zzcjh = true;
            if (this.zzcjk.zze(this)) {
                zzaaY();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzn(zzbrq zzbrqVar) {
            zzaaV();
            if (this.zzcjh) {
                this.zzcjd.append(",");
            }
            zza(this.zzcjd, zzbrqVar);
            this.zzcjd.append(":(");
            if (this.zzcjg == this.zzcje.size()) {
                this.zzcje.add(zzbrqVar);
            } else {
                this.zzcje.set(this.zzcjg, zzbrqVar);
            }
            this.zzcjg++;
            this.zzcjh = false;
        }

        private zzbph zzqD(int i) {
            zzbrq[] zzbrqVarArr = new zzbrq[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzbrqVarArr[i2] = this.zzcje.get(i2);
            }
            return new zzbph(zzbrqVarArr);
        }

        public boolean zzaaS() {
            return this.zzcjd != null;
        }

        public int zzaaT() {
            return this.zzcjd.length();
        }

        public zzbph zzaaU() {
            return zzqD(this.zzcjg);
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb implements zzc {
        private final long zzcjl;

        public zzb(zzbsc zzbscVar) {
            this.zzcjl = Math.max(512L, (long) Math.sqrt(zzbsz.zzt(zzbscVar) * 100));
        }

        @Override // com.google.android.gms.internal.zzbrs.zzc
        public boolean zze(zza zzaVar) {
            return ((long) zzaVar.zzaaT()) > this.zzcjl && (zzaVar.zzaaU().isEmpty() || !zzaVar.zzaaU().zzYV().equals(zzbrq.zzaaI()));
        }
    }

    /* loaded from: classes2.dex */
    public interface zzc {
        boolean zze(zza zzaVar);
    }

    private zzbrs(List<zzbph> list, List<String> list2) {
        if (list.size() != list2.size() - 1) {
            throw new IllegalArgumentException("Number of posts need to be n-1 for n hashes in CompoundHash");
        }
        this.zzcbp = list;
        this.zzcbq = list2;
    }

    public static zzbrs zza(zzbsc zzbscVar, zzc zzcVar) {
        if (zzbscVar.isEmpty()) {
            return new zzbrs(Collections.emptyList(), Collections.singletonList(""));
        }
        zza zzaVar = new zza(zzcVar);
        zza(zzbscVar, zzaVar);
        zzaVar.zzaaX();
        return new zzbrs(zzaVar.zzcji, zzaVar.zzcjj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(zzbsc zzbscVar, final zza zzaVar) {
        if (zzbscVar.zzaaN()) {
            zzaVar.zzb((zzbrz) zzbscVar);
        } else if (zzbscVar.isEmpty()) {
            throw new IllegalArgumentException("Can't calculate hash on empty node!");
        } else {
            if (!(zzbscVar instanceof zzbrr)) {
                String valueOf = String.valueOf(zzbscVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("Expected children node, but got: ").append(valueOf).toString());
            } else {
                ((zzbrr) zzbscVar).zza(new zzbrr.zza() { // from class: com.google.android.gms.internal.zzbrs.1
                    @Override // com.google.android.gms.internal.zzbrr.zza
                    public void zzb(zzbrq zzbrqVar, zzbsc zzbscVar2) {
                        zza.this.zzn(zzbrqVar);
                        zzbrs.zza(zzbscVar2, zza.this);
                        zza.this.zzaaW();
                    }
                }, true);
            }
        }
    }

    public static zzbrs zzi(zzbsc zzbscVar) {
        return zza(zzbscVar, new zzb(zzbscVar));
    }

    public List<zzbph> zzXp() {
        return Collections.unmodifiableList(this.zzcbp);
    }

    public List<String> zzXq() {
        return Collections.unmodifiableList(this.zzcbq);
    }
}
