package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
@zzme
/* loaded from: classes.dex */
public final class zzfp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzfp> CREATOR = new zzfq();
    public final int backgroundColor;
    public final int zzAH;
    public final int zzAI;
    public final int zzAJ;
    public final int zzAK;
    public final int zzAL;
    public final int zzAM;
    public final int zzAN;
    public final String zzAO;
    public final int zzAP;
    public final String zzAQ;
    public final int zzAR;
    public final int zzAS;
    public final String zzAT;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfp(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, int i9, String str2, int i10, int i11, String str3) {
        this.zzAH = i;
        this.backgroundColor = i2;
        this.zzAI = i3;
        this.zzAJ = i4;
        this.zzAK = i5;
        this.zzAL = i6;
        this.zzAM = i7;
        this.zzAN = i8;
        this.zzAO = str;
        this.zzAP = i9;
        this.zzAQ = str2;
        this.zzAR = i10;
        this.zzAS = i11;
        this.zzAT = str3;
    }

    public zzfp(SearchAdRequest searchAdRequest) {
        this.zzAH = searchAdRequest.getAnchorTextColor();
        this.backgroundColor = searchAdRequest.getBackgroundColor();
        this.zzAI = searchAdRequest.getBackgroundGradientBottom();
        this.zzAJ = searchAdRequest.getBackgroundGradientTop();
        this.zzAK = searchAdRequest.getBorderColor();
        this.zzAL = searchAdRequest.getBorderThickness();
        this.zzAM = searchAdRequest.getBorderType();
        this.zzAN = searchAdRequest.getCallButtonColor();
        this.zzAO = searchAdRequest.getCustomChannels();
        this.zzAP = searchAdRequest.getDescriptionTextColor();
        this.zzAQ = searchAdRequest.getFontFace();
        this.zzAR = searchAdRequest.getHeaderTextColor();
        this.zzAS = searchAdRequest.getHeaderTextSize();
        this.zzAT = searchAdRequest.getQuery();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzfq.zza(this, parcel, i);
    }
}
