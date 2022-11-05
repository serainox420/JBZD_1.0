package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
@zzme
/* loaded from: classes.dex */
public final class zzmk extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzmk> CREATOR = new zzml();
    public final ApplicationInfo applicationInfo;
    public final int versionCode;
    public final boolean zzKJ;
    public final String zzRA;
    public final String zzRB;
    public final String zzRC;
    public final Bundle zzRD;
    public final int zzRE;
    public final Bundle zzRF;
    public final boolean zzRG;
    public final int zzRH;
    public final int zzRI;
    public final String zzRJ;
    public final long zzRK;
    public final String zzRL;
    public final List<String> zzRM;
    public final List<String> zzRN;
    public final long zzRO;
    public final zzmr zzRP;
    public final String zzRQ;
    public final float zzRR;
    public final int zzRS;
    public final int zzRT;
    public final boolean zzRU;
    public final boolean zzRV;
    public final String zzRW;
    public final boolean zzRX;
    public final String zzRY;
    public final int zzRZ;
    public final Bundle zzRx;
    public final zzec zzRy;
    public final PackageInfo zzRz;
    public final Bundle zzSa;
    public final String zzSb;
    public final boolean zzSc;
    public final Bundle zzSd;
    public final String zzSe;
    public final String zzSf;
    public final String zzSg;
    public final boolean zzSh;
    public final zzhc zzvF;
    public final zzfc zzvH;
    public final List<String> zzvK;
    public final String zzvk;
    public final String zzvl;
    public final zzqh zzvn;
    public final zzeg zzvr;
    public final float zzxk;

    @zzme
    /* loaded from: classes.dex */
    public static final class zza {
        public final ApplicationInfo applicationInfo;
        public final boolean zzKJ;
        public final String zzRB;
        public final String zzRC;
        public final Bundle zzRD;
        public final int zzRE;
        public final Bundle zzRF;
        public final boolean zzRG;
        public final int zzRH;
        public final int zzRI;
        public final String zzRJ;
        public final long zzRK;
        public final String zzRL;
        public final List<String> zzRM;
        public final List<String> zzRN;
        public final String zzRQ;
        public final float zzRR;
        public final int zzRS;
        public final int zzRT;
        public final boolean zzRU;
        public final boolean zzRV;
        public final boolean zzRX;
        public final String zzRY;
        public final int zzRZ;
        public final Bundle zzRx;
        public final zzec zzRy;
        public final PackageInfo zzRz;
        public final Bundle zzSa;
        public final String zzSb;
        public final boolean zzSc;
        public final Bundle zzSd;
        public final boolean zzSh;
        public final Future<zzmr> zzSi;
        public final Future<String> zzSj;
        public final Future<String> zzSk;
        public final zzhc zzvF;
        public final zzfc zzvH;
        public final List<String> zzvK;
        public final String zzvk;
        public final String zzvl;
        public final zzqh zzvn;
        public final zzeg zzvr;
        public final float zzxk;

        public zza(Bundle bundle, zzec zzecVar, zzeg zzegVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, zzqh zzqhVar, Bundle bundle2, List<String> list, List<String> list2, Bundle bundle3, boolean z, int i, int i2, float f, String str4, long j, String str5, List<String> list3, String str6, zzhc zzhcVar, Future<zzmr> future, String str7, float f2, boolean z2, int i3, int i4, boolean z3, boolean z4, Future<String> future2, String str8, boolean z5, int i5, Bundle bundle4, String str9, zzfc zzfcVar, boolean z6, Bundle bundle5, boolean z7, Future<String> future3) {
            this.zzRx = bundle;
            this.zzRy = zzecVar;
            this.zzvr = zzegVar;
            this.zzvl = str;
            this.applicationInfo = applicationInfo;
            this.zzRz = packageInfo;
            this.zzRB = str2;
            this.zzRC = str3;
            this.zzvn = zzqhVar;
            this.zzRD = bundle2;
            this.zzRG = z;
            this.zzRH = i;
            this.zzRI = i2;
            this.zzxk = f;
            if (list == null || list.size() <= 0) {
                this.zzRE = 0;
                this.zzvK = null;
                this.zzRN = null;
            } else {
                this.zzRE = 3;
                this.zzvK = list;
                this.zzRN = list2;
            }
            this.zzRF = bundle3;
            this.zzRJ = str4;
            this.zzRK = j;
            this.zzRL = str5;
            this.zzRM = list3;
            this.zzvk = str6;
            this.zzvF = zzhcVar;
            this.zzSi = future;
            this.zzRQ = str7;
            this.zzRR = f2;
            this.zzRX = z2;
            this.zzRS = i3;
            this.zzRT = i4;
            this.zzRU = z3;
            this.zzRV = z4;
            this.zzSj = future2;
            this.zzRY = str8;
            this.zzKJ = z5;
            this.zzRZ = i5;
            this.zzSa = bundle4;
            this.zzSb = str9;
            this.zzvH = zzfcVar;
            this.zzSc = z6;
            this.zzSd = bundle5;
            this.zzSh = z7;
            this.zzSk = future3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmk(int i, Bundle bundle, zzec zzecVar, zzeg zzegVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, zzqh zzqhVar, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, zzhc zzhcVar, List<String> list3, long j2, zzmr zzmrVar, String str8, float f2, boolean z2, int i5, int i6, boolean z3, boolean z4, String str9, String str10, boolean z5, int i7, Bundle bundle4, String str11, zzfc zzfcVar, boolean z6, Bundle bundle5, String str12, String str13, String str14, boolean z7) {
        this.versionCode = i;
        this.zzRx = bundle;
        this.zzRy = zzecVar;
        this.zzvr = zzegVar;
        this.zzvl = str;
        this.applicationInfo = applicationInfo;
        this.zzRz = packageInfo;
        this.zzRA = str2;
        this.zzRB = str3;
        this.zzRC = str4;
        this.zzvn = zzqhVar;
        this.zzRD = bundle2;
        this.zzRE = i2;
        this.zzvK = list;
        this.zzRN = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzRF = bundle3;
        this.zzRG = z;
        this.zzRH = i3;
        this.zzRI = i4;
        this.zzxk = f;
        this.zzRJ = str5;
        this.zzRK = j;
        this.zzRL = str6;
        this.zzRM = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzvk = str7;
        this.zzvF = zzhcVar;
        this.zzRO = j2;
        this.zzRP = zzmrVar;
        this.zzRQ = str8;
        this.zzRR = f2;
        this.zzRX = z2;
        this.zzRS = i5;
        this.zzRT = i6;
        this.zzRU = z3;
        this.zzRV = z4;
        this.zzRW = str9;
        this.zzRY = str10;
        this.zzKJ = z5;
        this.zzRZ = i7;
        this.zzSa = bundle4;
        this.zzSb = str11;
        this.zzvH = zzfcVar;
        this.zzSc = z6;
        this.zzSd = bundle5;
        this.zzSe = str12;
        this.zzSf = str13;
        this.zzSg = str14;
        this.zzSh = z7;
    }

    public zzmk(Bundle bundle, zzec zzecVar, zzeg zzegVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, zzqh zzqhVar, Bundle bundle2, int i, List<String> list, List<String> list2, Bundle bundle3, boolean z, int i2, int i3, float f, String str5, long j, String str6, List<String> list3, String str7, zzhc zzhcVar, long j2, zzmr zzmrVar, String str8, float f2, boolean z2, int i4, int i5, boolean z3, boolean z4, String str9, String str10, boolean z5, int i6, Bundle bundle4, String str11, zzfc zzfcVar, boolean z6, Bundle bundle5, String str12, String str13, String str14, boolean z7) {
        this(22, bundle, zzecVar, zzegVar, str, applicationInfo, packageInfo, str2, str3, str4, zzqhVar, bundle2, i, list, bundle3, z, i2, i3, f, str5, j, str6, list3, str7, zzhcVar, list2, j2, zzmrVar, str8, f2, z2, i4, i5, z3, z4, str9, str10, z5, i6, bundle4, str11, zzfcVar, z6, bundle5, str12, str13, str14, z7);
    }

    public zzmk(zza zzaVar, long j, String str, String str2, String str3) {
        this(zzaVar.zzRx, zzaVar.zzRy, zzaVar.zzvr, zzaVar.zzvl, zzaVar.applicationInfo, zzaVar.zzRz, (String) zzql.zza(zzaVar.zzSk, "", 2, TimeUnit.SECONDS), zzaVar.zzRB, zzaVar.zzRC, zzaVar.zzvn, zzaVar.zzRD, zzaVar.zzRE, zzaVar.zzvK, zzaVar.zzRN, zzaVar.zzRF, zzaVar.zzRG, zzaVar.zzRH, zzaVar.zzRI, zzaVar.zzxk, zzaVar.zzRJ, zzaVar.zzRK, zzaVar.zzRL, zzaVar.zzRM, zzaVar.zzvk, zzaVar.zzvF, j, zzaVar.zzSi != null ? (zzmr) zzql.zza(zzaVar.zzSi, null, 6, TimeUnit.SECONDS) : null, zzaVar.zzRQ, zzaVar.zzRR, zzaVar.zzRX, zzaVar.zzRS, zzaVar.zzRT, zzaVar.zzRU, zzaVar.zzRV, (String) zzql.zza(zzaVar.zzSj, "", 1, TimeUnit.SECONDS), zzaVar.zzRY, zzaVar.zzKJ, zzaVar.zzRZ, zzaVar.zzSa, zzaVar.zzSb, zzaVar.zzvH, zzaVar.zzSc, zzaVar.zzSd, str, str2, str3, zzaVar.zzSh);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzml.zza(this, parcel, i);
    }
}
