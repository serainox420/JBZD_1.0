package com.google.android.gms.internal;

import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzatc {
    private final String mAppId;
    private String zzVX;
    private String zzaIU;
    private String zzacM;
    private long zzbqA;
    private long zzbqB;
    private long zzbqC;
    private long zzbqD;
    private long zzbqE;
    private long zzbqF;
    private long zzbqG;
    private String zzbqH;
    private boolean zzbqI;
    private long zzbqJ;
    private long zzbqK;
    private final zzaue zzbqc;
    private String zzbqq;
    private String zzbqr;
    private long zzbqs;
    private long zzbqt;
    private long zzbqu;
    private long zzbqv;
    private String zzbqw;
    private long zzbqx;
    private long zzbqy;
    private boolean zzbqz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatc(zzaue zzaueVar, String str) {
        com.google.android.gms.common.internal.zzac.zzw(zzaueVar);
        com.google.android.gms.common.internal.zzac.zzdr(str);
        this.zzbqc = zzaueVar;
        this.mAppId = str;
        this.zzbqc.zzmR();
    }

    public String getAppInstanceId() {
        this.zzbqc.zzmR();
        return this.zzaIU;
    }

    public String getGmpAppId() {
        this.zzbqc.zzmR();
        return this.zzVX;
    }

    public void setAppVersion(String str) {
        this.zzbqc.zzmR();
        this.zzbqI = (!zzaut.zzae(this.zzacM, str)) | this.zzbqI;
        this.zzacM = str;
    }

    public void setMeasurementEnabled(boolean z) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqz != z) | this.zzbqI;
        this.zzbqz = z;
    }

    public long zzKA() {
        this.zzbqc.zzmR();
        return this.zzbqK;
    }

    public void zzKB() {
        this.zzbqc.zzmR();
        long j = this.zzbqs + 1;
        if (j > 2147483647L) {
            this.zzbqc.zzKl().zzMa().zzj("Bundle index overflow. appId", zzatx.zzfE(this.mAppId));
            j = 0;
        }
        this.zzbqI = true;
        this.zzbqs = j;
    }

    public long zzKC() {
        this.zzbqc.zzmR();
        return this.zzbqB;
    }

    public long zzKD() {
        this.zzbqc.zzmR();
        return this.zzbqC;
    }

    public long zzKE() {
        this.zzbqc.zzmR();
        return this.zzbqD;
    }

    public long zzKF() {
        this.zzbqc.zzmR();
        return this.zzbqE;
    }

    public long zzKG() {
        this.zzbqc.zzmR();
        return this.zzbqG;
    }

    public long zzKH() {
        this.zzbqc.zzmR();
        return this.zzbqF;
    }

    public String zzKI() {
        this.zzbqc.zzmR();
        return this.zzbqH;
    }

    public String zzKJ() {
        this.zzbqc.zzmR();
        String str = this.zzbqH;
        zzfi(null);
        return str;
    }

    public void zzKo() {
        this.zzbqc.zzmR();
        this.zzbqI = false;
    }

    public String zzKp() {
        this.zzbqc.zzmR();
        return this.zzbqq;
    }

    public String zzKq() {
        this.zzbqc.zzmR();
        return this.zzbqr;
    }

    public long zzKr() {
        this.zzbqc.zzmR();
        return this.zzbqt;
    }

    public long zzKs() {
        this.zzbqc.zzmR();
        return this.zzbqu;
    }

    public long zzKt() {
        this.zzbqc.zzmR();
        return this.zzbqv;
    }

    public String zzKu() {
        this.zzbqc.zzmR();
        return this.zzbqw;
    }

    public long zzKv() {
        this.zzbqc.zzmR();
        return this.zzbqx;
    }

    public long zzKw() {
        this.zzbqc.zzmR();
        return this.zzbqy;
    }

    public boolean zzKx() {
        this.zzbqc.zzmR();
        return this.zzbqz;
    }

    public long zzKy() {
        this.zzbqc.zzmR();
        return this.zzbqs;
    }

    public long zzKz() {
        this.zzbqc.zzmR();
        return this.zzbqJ;
    }

    public void zzY(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqt != j) | this.zzbqI;
        this.zzbqt = j;
    }

    public void zzZ(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqu != j) | this.zzbqI;
        this.zzbqu = j;
    }

    public void zzaa(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqv != j) | this.zzbqI;
        this.zzbqv = j;
    }

    public void zzab(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqx != j) | this.zzbqI;
        this.zzbqx = j;
    }

    public void zzac(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqy != j) | this.zzbqI;
        this.zzbqy = j;
    }

    public void zzad(long j) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(j >= 0);
        this.zzbqc.zzmR();
        boolean z2 = this.zzbqI;
        if (this.zzbqs == j) {
            z = false;
        }
        this.zzbqI = z2 | z;
        this.zzbqs = j;
    }

    public void zzae(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqJ != j) | this.zzbqI;
        this.zzbqJ = j;
    }

    public void zzaf(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqK != j) | this.zzbqI;
        this.zzbqK = j;
    }

    public void zzag(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqB != j) | this.zzbqI;
        this.zzbqB = j;
    }

    public void zzah(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqC != j) | this.zzbqI;
        this.zzbqC = j;
    }

    public void zzai(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqD != j) | this.zzbqI;
        this.zzbqD = j;
    }

    public void zzaj(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqE != j) | this.zzbqI;
        this.zzbqE = j;
    }

    public void zzak(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqG != j) | this.zzbqI;
        this.zzbqG = j;
    }

    public void zzal(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqF != j) | this.zzbqI;
        this.zzbqF = j;
    }

    public void zzam(long j) {
        this.zzbqc.zzmR();
        this.zzbqI = (this.zzbqA != j) | this.zzbqI;
        this.zzbqA = j;
    }

    public void zzfd(String str) {
        this.zzbqc.zzmR();
        this.zzbqI = (!zzaut.zzae(this.zzaIU, str)) | this.zzbqI;
        this.zzaIU = str;
    }

    public void zzfe(String str) {
        this.zzbqc.zzmR();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzbqI = (!zzaut.zzae(this.zzVX, str)) | this.zzbqI;
        this.zzVX = str;
    }

    public void zzff(String str) {
        this.zzbqc.zzmR();
        this.zzbqI = (!zzaut.zzae(this.zzbqq, str)) | this.zzbqI;
        this.zzbqq = str;
    }

    public void zzfg(String str) {
        this.zzbqc.zzmR();
        this.zzbqI = (!zzaut.zzae(this.zzbqr, str)) | this.zzbqI;
        this.zzbqr = str;
    }

    public void zzfh(String str) {
        this.zzbqc.zzmR();
        this.zzbqI = (!zzaut.zzae(this.zzbqw, str)) | this.zzbqI;
        this.zzbqw = str;
    }

    public void zzfi(String str) {
        this.zzbqc.zzmR();
        this.zzbqI = (!zzaut.zzae(this.zzbqH, str)) | this.zzbqI;
        this.zzbqH = str;
    }

    public String zzke() {
        this.zzbqc.zzmR();
        return this.mAppId;
    }

    public String zzmZ() {
        this.zzbqc.zzmR();
        return this.zzacM;
    }

    public long zzuW() {
        this.zzbqc.zzmR();
        return this.zzbqA;
    }
}
