package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzha;
import com.google.android.gms.internal.zzhj;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzgv extends zzhj.zza implements zzha.zzb {
    private Bundle mExtras;
    private zzha zzGA;
    private String zzGp;
    private List<zzgu> zzGq;
    private String zzGr;
    private zzhf zzGs;
    private String zzGt;
    private double zzGu;
    private String zzGv;
    private String zzGw;
    private zzgs zzGx;
    private zzfa zzGy;
    private View zzGz;
    private Object zzrJ = new Object();

    public zzgv(String str, List list, String str2, zzhf zzhfVar, String str3, double d, String str4, String str5, zzgs zzgsVar, Bundle bundle, zzfa zzfaVar, View view) {
        this.zzGp = str;
        this.zzGq = list;
        this.zzGr = str2;
        this.zzGs = zzhfVar;
        this.zzGt = str3;
        this.zzGu = d;
        this.zzGv = str4;
        this.zzGw = str5;
        this.zzGx = zzgsVar;
        this.mExtras = bundle;
        this.zzGy = zzfaVar;
        this.zzGz = view;
    }

    @Override // com.google.android.gms.internal.zzhj
    public void destroy() {
        this.zzGp = null;
        this.zzGq = null;
        this.zzGr = null;
        this.zzGs = null;
        this.zzGt = null;
        this.zzGu = 0.0d;
        this.zzGv = null;
        this.zzGw = null;
        this.zzGx = null;
        this.mExtras = null;
        this.zzrJ = null;
        this.zzGA = null;
        this.zzGy = null;
        this.zzGz = null;
    }

    @Override // com.google.android.gms.internal.zzhj
    public String getBody() {
        return this.zzGr;
    }

    @Override // com.google.android.gms.internal.zzhj
    public String getCallToAction() {
        return this.zzGt;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public String getCustomTemplateId() {
        return "";
    }

    @Override // com.google.android.gms.internal.zzhj
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.internal.zzhj
    public String getHeadline() {
        return this.zzGp;
    }

    @Override // com.google.android.gms.internal.zzhj, com.google.android.gms.internal.zzha.zzb
    public List getImages() {
        return this.zzGq;
    }

    @Override // com.google.android.gms.internal.zzhj
    public String getPrice() {
        return this.zzGw;
    }

    @Override // com.google.android.gms.internal.zzhj
    public double getStarRating() {
        return this.zzGu;
    }

    @Override // com.google.android.gms.internal.zzhj
    public String getStore() {
        return this.zzGv;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public void zzb(zzha zzhaVar) {
        synchronized (this.zzrJ) {
            this.zzGA = zzhaVar;
        }
    }

    @Override // com.google.android.gms.internal.zzhj
    public zzfa zzbF() {
        return this.zzGy;
    }

    @Override // com.google.android.gms.internal.zzhj
    public zzhf zzfQ() {
        return this.zzGs;
    }

    @Override // com.google.android.gms.internal.zzhj
    public IObjectWrapper zzfR() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzGA);
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public String zzfS() {
        return "2";
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public zzgs zzfT() {
        return this.zzGx;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public View zzfU() {
        return this.zzGz;
    }
}
