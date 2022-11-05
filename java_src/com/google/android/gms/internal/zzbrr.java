package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzbny;
import com.google.android.gms.internal.zzbod;
import com.google.android.gms.internal.zzbsc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbrr implements zzbsc {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static Comparator<zzbrq> zzciW;
    private final zzbny<zzbrq, zzbsc> zzchx;
    private final zzbsc zzciX;
    private String zzciY;

    /* loaded from: classes2.dex */
    public static abstract class zza extends zzbod.zzb<zzbrq, zzbsc> {
        public abstract void zzb(zzbrq zzbrqVar, zzbsc zzbscVar);

        @Override // com.google.android.gms.internal.zzbod.zzb
        /* renamed from: zzf */
        public void zzj(zzbrq zzbrqVar, zzbsc zzbscVar) {
            zzb(zzbrqVar, zzbscVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb implements Iterator<zzbsb> {
        private final Iterator<Map.Entry<zzbrq, zzbsc>> zzcaX;

        public zzb(Iterator<Map.Entry<zzbrq, zzbsc>> it) {
            this.zzcaX = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.zzcaX.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.zzcaX.remove();
        }

        @Override // java.util.Iterator
        /* renamed from: zzaaR */
        public zzbsb next() {
            Map.Entry<zzbrq, zzbsc> next = this.zzcaX.next();
            return new zzbsb(next.getKey(), next.getValue());
        }
    }

    static {
        $assertionsDisabled = !zzbrr.class.desiredAssertionStatus();
        zzciW = new Comparator<zzbrq>() { // from class: com.google.android.gms.internal.zzbrr.1
            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(zzbrq zzbrqVar, zzbrq zzbrqVar2) {
                return zzbrqVar.compareTo(zzbrqVar2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbrr() {
        this.zzciY = null;
        this.zzchx = zzbny.zza.zza(zzciW);
        this.zzciX = zzbsg.zzabl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbrr(zzbny<zzbrq, zzbsc> zzbnyVar, zzbsc zzbscVar) {
        this.zzciY = null;
        if (!zzbnyVar.isEmpty() || zzbscVar.isEmpty()) {
            this.zzciX = zzbscVar;
            this.zzchx = zzbnyVar;
            return;
        }
        throw new IllegalArgumentException("Can't create empty ChildrenNode with priority!");
    }

    private static void zzb(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
        }
    }

    private void zzc(StringBuilder sb, int i) {
        if (this.zzchx.isEmpty() && this.zzciX.isEmpty()) {
            sb.append("{ }");
            return;
        }
        sb.append("{\n");
        Iterator<Map.Entry<zzbrq, zzbsc>> it = this.zzchx.iterator();
        while (it.hasNext()) {
            Map.Entry<zzbrq, zzbsc> next = it.next();
            zzb(sb, i + 2);
            sb.append(next.getKey().asString());
            sb.append("=");
            if (next.getValue() instanceof zzbrr) {
                ((zzbrr) next.getValue()).zzc(sb, i + 2);
            } else {
                sb.append(next.getValue().toString());
            }
            sb.append("\n");
        }
        if (!this.zzciX.isEmpty()) {
            zzb(sb, i + 2);
            sb.append(".priority=");
            sb.append(this.zzciX.toString());
            sb.append("\n");
        }
        zzb(sb, i);
        sb.append("}");
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbrr)) {
            return false;
        }
        zzbrr zzbrrVar = (zzbrr) obj;
        if (zzaaO().equals(zzbrrVar.zzaaO()) && this.zzchx.size() == zzbrrVar.zzchx.size()) {
            Iterator<Map.Entry<zzbrq, zzbsc>> it = this.zzchx.iterator();
            Iterator<Map.Entry<zzbrq, zzbsc>> it2 = zzbrrVar.zzchx.iterator();
            while (it.hasNext() && it2.hasNext()) {
                Map.Entry<zzbrq, zzbsc> next = it.next();
                Map.Entry<zzbrq, zzbsc> next2 = it2.next();
                if (next.getKey().equals(next2.getKey()) || !next.getValue().equals(next2.getValue())) {
                    return false;
                }
                while (it.hasNext()) {
                    Map.Entry<zzbrq, zzbsc> next3 = it.next();
                    Map.Entry<zzbrq, zzbsc> next22 = it2.next();
                    if (next3.getKey().equals(next22.getKey())) {
                    }
                    return false;
                }
            }
            if (!it.hasNext() && !it2.hasNext()) {
                return true;
            }
            throw new IllegalStateException("Something went wrong internally.");
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public int getChildCount() {
        return this.zzchx.size();
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue() {
        return getValue(false);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue(boolean z) {
        boolean z2;
        if (isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<Map.Entry<zzbrq, zzbsc>> it = this.zzchx.iterator();
        boolean z3 = true;
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Map.Entry<zzbrq, zzbsc> next = it.next();
            String asString = next.getKey().asString();
            hashMap.put(asString, next.getValue().getValue(z));
            i2++;
            if (z3) {
                if (asString.length() <= 1 || asString.charAt(0) != '0') {
                    Integer zzjj = zzbte.zzjj(asString);
                    if (zzjj == null || zzjj.intValue() < 0) {
                        z2 = false;
                    } else if (zzjj.intValue() > i) {
                        i = zzjj.intValue();
                        z2 = z3;
                    }
                } else {
                    z2 = false;
                }
                z3 = z2;
                i = i;
            }
            z2 = z3;
            z3 = z2;
            i = i;
        }
        if (z || !z3 || i >= i2 * 2) {
            if (z && !this.zzciX.isEmpty()) {
                hashMap.put(".priority", this.zzciX.getValue());
            }
            return hashMap;
        }
        ArrayList arrayList = new ArrayList(i + 1);
        for (int i3 = 0; i3 <= i; i3++) {
            arrayList.add(hashMap.get(new StringBuilder(11).append(i3).toString()));
        }
        return arrayList;
    }

    public int hashCode() {
        int i = 0;
        Iterator<zzbsb> it = iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                zzbsb next = it.next();
                i = next.zzWI().hashCode() + (((i2 * 31) + next.zzabj().hashCode()) * 17);
            } else {
                return i2;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbsc
    public boolean isEmpty() {
        return this.zzchx.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<zzbsb> iterator() {
        return new zzb(this.zzchx.iterator());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        zzc(sb, 0);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzO(zzbph zzbphVar) {
        zzbrq zzYS = zzbphVar.zzYS();
        return zzYS == null ? this : zzm(zzYS).zzO(zzbphVar.zzYT());
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Iterator<zzbsb> zzWV() {
        return new zzb(this.zzchx.zzWV());
    }

    @Override // com.google.android.gms.internal.zzbsc
    public String zza(zzbsc.zza zzaVar) {
        if (zzaVar != zzbsc.zza.V1) {
            throw new IllegalArgumentException("Hashes on children nodes only supported for V1");
        }
        StringBuilder sb = new StringBuilder();
        if (!this.zzciX.isEmpty()) {
            sb.append("priority:");
            sb.append(this.zzciX.zza(zzbsc.zza.V1));
            sb.append(":");
        }
        ArrayList<zzbsb> arrayList = new ArrayList();
        Iterator<zzbsb> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            zzbsb next = it.next();
            arrayList.add(next);
            z = z || !next.zzWI().zzaaO().isEmpty();
        }
        if (z) {
            Collections.sort(arrayList, zzbsf.zzabk());
        }
        for (zzbsb zzbsbVar : arrayList) {
            String zzaaM = zzbsbVar.zzWI().zzaaM();
            if (!zzaaM.equals("")) {
                sb.append(":");
                sb.append(zzbsbVar.zzabj().asString());
                sb.append(":");
                sb.append(zzaaM);
            }
        }
        return sb.toString();
    }

    public void zza(zza zzaVar) {
        zza(zzaVar, false);
    }

    public void zza(final zza zzaVar, boolean z) {
        if (!z || zzaaO().isEmpty()) {
            this.zzchx.zza(zzaVar);
        } else {
            this.zzchx.zza(new zzbod.zzb<zzbrq, zzbsc>() { // from class: com.google.android.gms.internal.zzbrr.2
                boolean zzciZ = false;

                @Override // com.google.android.gms.internal.zzbod.zzb
                /* renamed from: zzf */
                public void zzj(zzbrq zzbrqVar, zzbsc zzbscVar) {
                    if (!this.zzciZ && zzbrqVar.compareTo(zzbrq.zzaaI()) > 0) {
                        this.zzciZ = true;
                        zzaVar.zzb(zzbrq.zzaaI(), zzbrr.this.zzaaO());
                    }
                    zzaVar.zzb(zzbrqVar, zzbscVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzbsc
    public String zzaaM() {
        if (this.zzciY == null) {
            String zza2 = zza(zzbsc.zza.V1);
            this.zzciY = zza2.isEmpty() ? "" : zzbte.zzjh(zza2);
        }
        return this.zzciY;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public boolean zzaaN() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzaaO() {
        return this.zzciX;
    }

    public zzbrq zzaaP() {
        return this.zzchx.zzWT();
    }

    public zzbrq zzaaQ() {
        return this.zzchx.zzWU();
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zze(zzbrq zzbrqVar, zzbsc zzbscVar) {
        if (zzbrqVar.zzaaK()) {
            return zzg(zzbscVar);
        }
        zzbny<zzbrq, zzbsc> zzbnyVar = this.zzchx;
        if (zzbnyVar.containsKey(zzbrqVar)) {
            zzbnyVar = zzbnyVar.zzag(zzbrqVar);
        }
        if (!zzbscVar.isEmpty()) {
            zzbnyVar = zzbnyVar.zzi(zzbrqVar, zzbscVar);
        }
        return zzbnyVar.isEmpty() ? zzbrv.zzaaZ() : new zzbrr(zzbnyVar, this.zzciX);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzg(zzbsc zzbscVar) {
        return this.zzchx.isEmpty() ? zzbrv.zzaaZ() : new zzbrr(this.zzchx, zzbscVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: zzh */
    public int compareTo(zzbsc zzbscVar) {
        if (isEmpty()) {
            return zzbscVar.isEmpty() ? 0 : -1;
        }
        if (!zzbscVar.zzaaN() && !zzbscVar.isEmpty()) {
            return zzbscVar == zzbsc.zzcjB ? -1 : 0;
        }
        return 1;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public boolean zzk(zzbrq zzbrqVar) {
        return !zzm(zzbrqVar).isEmpty();
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbrq zzl(zzbrq zzbrqVar) {
        return this.zzchx.zzah(zzbrqVar);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzl(zzbph zzbphVar, zzbsc zzbscVar) {
        zzbrq zzYS = zzbphVar.zzYS();
        if (zzYS == null) {
            return zzbscVar;
        }
        if (!zzYS.zzaaK()) {
            return zze(zzYS, zzm(zzYS).zzl(zzbphVar.zzYT(), zzbscVar));
        }
        if (!$assertionsDisabled && !zzbsg.zzq(zzbscVar)) {
            throw new AssertionError();
        }
        return zzg(zzbscVar);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzm(zzbrq zzbrqVar) {
        return (!zzbrqVar.zzaaK() || this.zzciX.isEmpty()) ? this.zzchx.containsKey(zzbrqVar) ? this.zzchx.get(zzbrqVar) : zzbrv.zzaaZ() : this.zzciX;
    }
}
