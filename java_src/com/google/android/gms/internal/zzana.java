package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzana extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzana> CREATOR = new zzanb();
    final String zzWD;
    final String zzaQO;
    final List<String> zzaQU;
    final boolean zzaQV;
    final boolean zzaQW;
    final boolean zzaQX;
    final String zzaQY;
    final zzani zzaQZ;
    final zzang zzaRa;
    final zzanm zzaRb;
    final zzano zzaRc;
    final zzanq zzaRd;
    final zzank zzaRe;
    final zzane zzaRf;
    final zzamy zzaRg;
    final zzamw zzaRh;
    final String zzadi;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzana(int i, String str, String str2, List<String> list, boolean z, boolean z2, boolean z3, String str3, String str4, zzani zzaniVar, zzang zzangVar, zzanm zzanmVar, zzano zzanoVar, zzanq zzanqVar, zzank zzankVar, zzane zzaneVar, zzamy zzamyVar, zzamw zzamwVar) {
        this.zzaiI = i;
        this.zzWD = str;
        this.zzadi = str2;
        this.zzaQU = list;
        this.zzaQV = z;
        this.zzaQW = z2;
        this.zzaQX = z3;
        this.zzaQO = str3;
        this.zzaQY = str4;
        this.zzaQZ = zzaniVar;
        this.zzaRa = zzangVar;
        this.zzaRb = zzanmVar;
        this.zzaRc = zzanoVar;
        this.zzaRd = zzanqVar;
        this.zzaRe = zzankVar;
        this.zzaRf = zzaneVar;
        this.zzaRg = zzamyVar;
        this.zzaRh = zzamwVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzanb.zza(this, parcel, i);
    }
}
