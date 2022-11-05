package com.google.android.gms.internal;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbrb {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final zzbrb zzcie;
    private Integer zzcif;
    private zza zzcig;
    private zzbsc zzcih = null;
    private zzbrq zzcii = null;
    private zzbsc zzcij = null;
    private zzbrq zzcik = null;
    private zzbrw zzcia = zzbsf.zzabk();
    private String zzcil = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum zza {
        LEFT,
        RIGHT
    }

    static {
        $assertionsDisabled = !zzbrb.class.desiredAssertionStatus();
        zzcie = new zzbrb();
    }

    public static zzbrb zzaE(Map<String, Object> map) {
        zzbrb zzbrbVar = new zzbrb();
        zzbrbVar.zzcif = (Integer) map.get("l");
        if (map.containsKey("sp")) {
            zzbrbVar.zzcih = zze(zzbsd.zzat(map.get("sp")));
            String str = (String) map.get("sn");
            if (str != null) {
                zzbrbVar.zzcii = zzbrq.zzja(str);
            }
        }
        if (map.containsKey("ep")) {
            zzbrbVar.zzcij = zze(zzbsd.zzat(map.get("ep")));
            String str2 = (String) map.get("en");
            if (str2 != null) {
                zzbrbVar.zzcik = zzbrq.zzja(str2);
            }
        }
        String str3 = (String) map.get("vf");
        if (str3 != null) {
            zzbrbVar.zzcig = str3.equals("l") ? zza.LEFT : zza.RIGHT;
        }
        String str4 = (String) map.get("i");
        if (str4 != null) {
            zzbrbVar.zzcia = zzbrw.zzjb(str4);
        }
        return zzbrbVar;
    }

    private zzbrb zzaak() {
        zzbrb zzbrbVar = new zzbrb();
        zzbrbVar.zzcif = this.zzcif;
        zzbrbVar.zzcih = this.zzcih;
        zzbrbVar.zzcii = this.zzcii;
        zzbrbVar.zzcij = this.zzcij;
        zzbrbVar.zzcik = this.zzcik;
        zzbrbVar.zzcig = this.zzcig;
        zzbrbVar.zzcia = this.zzcia;
        return zzbrbVar;
    }

    private static zzbsc zze(zzbsc zzbscVar) {
        if ((zzbscVar instanceof zzbsi) || (zzbscVar instanceof zzbrp) || (zzbscVar instanceof zzbru) || (zzbscVar instanceof zzbrv)) {
            return zzbscVar;
        }
        if (zzbscVar instanceof zzbsa) {
            return new zzbru(Double.valueOf(((Long) zzbscVar.getValue()).doubleValue()), zzbsg.zzabl());
        }
        String valueOf = String.valueOf(zzbscVar.getValue());
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 43).append("Unexpected value passed to normalizeValue: ").append(valueOf).toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbrb zzbrbVar = (zzbrb) obj;
        if (this.zzcif == null ? zzbrbVar.zzcif != null : !this.zzcif.equals(zzbrbVar.zzcif)) {
            return false;
        }
        if (this.zzcia == null ? zzbrbVar.zzcia != null : !this.zzcia.equals(zzbrbVar.zzcia)) {
            return false;
        }
        if (this.zzcik == null ? zzbrbVar.zzcik != null : !this.zzcik.equals(zzbrbVar.zzcik)) {
            return false;
        }
        if (this.zzcij == null ? zzbrbVar.zzcij != null : !this.zzcij.equals(zzbrbVar.zzcij)) {
            return false;
        }
        if (this.zzcii == null ? zzbrbVar.zzcii != null : !this.zzcii.equals(zzbrbVar.zzcii)) {
            return false;
        }
        if (this.zzcih == null ? zzbrbVar.zzcih != null : !this.zzcih.equals(zzbrbVar.zzcih)) {
            return false;
        }
        return zzaal() == zzbrbVar.zzaal();
    }

    public int getLimit() {
        if (!zzaah()) {
            throw new IllegalArgumentException("Cannot get limit if limit has not been set");
        }
        return this.zzcif.intValue();
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.zzcik != null ? this.zzcik.hashCode() : 0) + (((this.zzcij != null ? this.zzcij.hashCode() : 0) + (((this.zzcii != null ? this.zzcii.hashCode() : 0) + (((this.zzcih != null ? this.zzcih.hashCode() : 0) + (((zzaal() ? 1231 : 1237) + ((this.zzcif != null ? this.zzcif.intValue() : 0) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        if (this.zzcia != null) {
            i = this.zzcia.hashCode();
        }
        return hashCode + i;
    }

    public boolean isDefault() {
        return zzaan() && this.zzcia.equals(zzbsf.zzabk());
    }

    public boolean isValid() {
        return !zzaab() || !zzaae() || !zzaah() || zzaai();
    }

    public String toString() {
        return zzaam().toString();
    }

    public zzbrb zza(zzbrw zzbrwVar) {
        zzbrb zzaak = zzaak();
        zzaak.zzcia = zzbrwVar;
        return zzaak;
    }

    public zzbrb zza(zzbsc zzbscVar, zzbrq zzbrqVar) {
        if ($assertionsDisabled || zzbscVar.zzaaN() || zzbscVar.isEmpty()) {
            zzbte.zzbb(!(zzbscVar instanceof zzbsa));
            zzbrb zzaak = zzaak();
            zzaak.zzcih = zzbscVar;
            zzaak.zzcii = zzbrqVar;
            return zzaak;
        }
        throw new AssertionError();
    }

    public boolean zzaab() {
        return this.zzcih != null;
    }

    public zzbsc zzaac() {
        if (!zzaab()) {
            throw new IllegalArgumentException("Cannot get index start value if start has not been set");
        }
        return this.zzcih;
    }

    public zzbrq zzaad() {
        if (!zzaab()) {
            throw new IllegalArgumentException("Cannot get index start name if start has not been set");
        }
        return this.zzcii != null ? this.zzcii : zzbrq.zzaaG();
    }

    public boolean zzaae() {
        return this.zzcij != null;
    }

    public zzbsc zzaaf() {
        if (!zzaae()) {
            throw new IllegalArgumentException("Cannot get index end value if start has not been set");
        }
        return this.zzcij;
    }

    public zzbrq zzaag() {
        if (!zzaae()) {
            throw new IllegalArgumentException("Cannot get index end name if start has not been set");
        }
        return this.zzcik != null ? this.zzcik : zzbrq.zzaaH();
    }

    public boolean zzaah() {
        return this.zzcif != null;
    }

    public boolean zzaai() {
        return zzaah() && this.zzcig != null;
    }

    public zzbrw zzaaj() {
        return this.zzcia;
    }

    public boolean zzaal() {
        return this.zzcig != null ? this.zzcig == zza.LEFT : zzaab();
    }

    public Map<String, Object> zzaam() {
        HashMap hashMap = new HashMap();
        if (zzaab()) {
            hashMap.put("sp", this.zzcih.getValue());
            if (this.zzcii != null) {
                hashMap.put("sn", this.zzcii.asString());
            }
        }
        if (zzaae()) {
            hashMap.put("ep", this.zzcij.getValue());
            if (this.zzcik != null) {
                hashMap.put("en", this.zzcik.asString());
            }
        }
        if (this.zzcif != null) {
            hashMap.put("l", this.zzcif);
            zza zzaVar = this.zzcig;
            if (zzaVar == null) {
                zzaVar = zzaab() ? zza.LEFT : zza.RIGHT;
            }
            switch (zzaVar) {
                case LEFT:
                    hashMap.put("vf", "l");
                    break;
                case RIGHT:
                    hashMap.put("vf", "r");
                    break;
            }
        }
        if (!this.zzcia.equals(zzbsf.zzabk())) {
            hashMap.put("i", this.zzcia.zzabc());
        }
        return hashMap;
    }

    public boolean zzaan() {
        return !zzaab() && !zzaae() && !zzaah();
    }

    public String zzaao() {
        if (this.zzcil == null) {
            try {
                this.zzcil = zzbsv.zzaF(zzaam());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return this.zzcil;
    }

    public zzbrj zzaap() {
        return zzaan() ? new zzbrh(zzaaj()) : zzaah() ? new zzbri(this) : new zzbrk(this);
    }

    public zzbrb zzb(zzbsc zzbscVar, zzbrq zzbrqVar) {
        if ($assertionsDisabled || zzbscVar.zzaaN() || zzbscVar.isEmpty()) {
            zzbte.zzbb(!(zzbscVar instanceof zzbsa));
            zzbrb zzaak = zzaak();
            zzaak.zzcij = zzbscVar;
            zzaak.zzcik = zzbrqVar;
            return zzaak;
        }
        throw new AssertionError();
    }

    public zzbrb zzqB(int i) {
        zzbrb zzaak = zzaak();
        zzaak.zzcif = Integer.valueOf(i);
        zzaak.zzcig = zza.LEFT;
        return zzaak;
    }

    public zzbrb zzqC(int i) {
        zzbrb zzaak = zzaak();
        zzaak.zzcif = Integer.valueOf(i);
        zzaak.zzcig = zza.RIGHT;
        return zzaak;
    }
}
