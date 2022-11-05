package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzha;
import com.google.android.gms.internal.zzhl;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzgw extends zzhl.zza implements zzha.zzb {
    private Bundle mExtras;
    private zzha zzGA;
    private zzhf zzGB;
    private String zzGC;
    private String zzGp;
    private List<zzgu> zzGq;
    private String zzGr;
    private String zzGt;
    private zzgs zzGx;
    private zzfa zzGy;
    private View zzGz;
    private Object zzrJ = new Object();

    public zzgw(String str, List list, String str2, zzhf zzhfVar, String str3, String str4, zzgs zzgsVar, Bundle bundle, zzfa zzfaVar, View view) {
        this.zzGp = str;
        this.zzGq = list;
        this.zzGr = str2;
        this.zzGB = zzhfVar;
        this.zzGt = str3;
        this.zzGC = str4;
        this.zzGx = zzgsVar;
        this.mExtras = bundle;
        this.zzGy = zzfaVar;
        this.zzGz = view;
    }

    @Override // com.google.android.gms.internal.zzhl
    public void destroy() {
        this.zzGp = null;
        this.zzGq = null;
        this.zzGr = null;
        this.zzGB = null;
        this.zzGt = null;
        this.zzGC = null;
        this.zzGx = null;
        this.mExtras = null;
        this.zzrJ = null;
        this.zzGA = null;
        this.zzGy = null;
        this.zzGz = null;
    }

    @Override // com.google.android.gms.internal.zzhl
    public String getAdvertiser() {
        return this.zzGC;
    }

    @Override // com.google.android.gms.internal.zzhl
    public String getBody() {
        return this.zzGr;
    }

    @Override // com.google.android.gms.internal.zzhl
    public String getCallToAction() {
        return this.zzGt;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public String getCustomTemplateId() {
        return "";
    }

    @Override // com.google.android.gms.internal.zzhl
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Override // com.google.android.gms.internal.zzhl
    public String getHeadline() {
        return this.zzGp;
    }

    @Override // com.google.android.gms.internal.zzhl, com.google.android.gms.internal.zzha.zzb
    public List getImages() {
        return this.zzGq;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public void zzb(zzha zzhaVar) {
        synchronized (this.zzrJ) {
            this.zzGA = zzhaVar;
        }
    }

    @Override // com.google.android.gms.internal.zzhl
    public zzfa zzbF() {
        return this.zzGy;
    }

    @Override // com.google.android.gms.internal.zzhl
    public IObjectWrapper zzfR() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzGA);
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public String zzfS() {
        return "1";
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public zzgs zzfT() {
        return this.zzGx;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public View zzfU() {
        return this.zzGz;
    }

    @Override // com.google.android.gms.internal.zzhl
    public zzhf zzfV() {
        return this.zzGB;
    }
}
