package com.google.android.gms.internal;

import android.support.v4.f.k;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzha;
import com.google.android.gms.internal.zzhn;
import java.util.Arrays;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzgx extends zzhn.zza implements zzha.zza {
    private zzha zzGA;
    private final String zzGD;
    private final k<String, zzgu> zzGE;
    private final k<String, String> zzGF;
    private final zzgs zzGx;
    private zzfa zzGy;
    private View zzGz;
    private final Object zzrJ = new Object();

    public zzgx(String str, k<String, zzgu> kVar, k<String, String> kVar2, zzgs zzgsVar, zzfa zzfaVar, View view) {
        this.zzGD = str;
        this.zzGE = kVar;
        this.zzGF = kVar2;
        this.zzGx = zzgsVar;
        this.zzGy = zzfaVar;
        this.zzGz = view;
    }

    @Override // com.google.android.gms.internal.zzhn
    public void destroy() {
        this.zzGA = null;
        this.zzGy = null;
        this.zzGz = null;
    }

    @Override // com.google.android.gms.internal.zzhn
    public List<String> getAvailableAssetNames() {
        int i = 0;
        String[] strArr = new String[this.zzGE.size() + this.zzGF.size()];
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzGE.size(); i3++) {
            strArr[i2] = this.zzGE.b(i3);
            i2++;
        }
        while (i < this.zzGF.size()) {
            strArr[i2] = this.zzGF.b(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.zzhn, com.google.android.gms.internal.zzha.zza
    public String getCustomTemplateId() {
        return this.zzGD;
    }

    @Override // com.google.android.gms.internal.zzhn
    public void performClick(String str) {
        synchronized (this.zzrJ) {
            if (this.zzGA == null) {
                zzqf.e("Attempt to call performClick before ad initialized.");
            } else {
                this.zzGA.zza(null, str, null, null, null);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzhn
    public void recordImpression() {
        synchronized (this.zzrJ) {
            if (this.zzGA == null) {
                zzqf.e("Attempt to perform recordImpression before ad initialized.");
            } else {
                this.zzGA.zzb(null, null);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzhn
    public String zzY(String str) {
        return this.zzGF.get(str);
    }

    @Override // com.google.android.gms.internal.zzhn
    public zzhf zzZ(String str) {
        return this.zzGE.get(str);
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public void zzb(zzha zzhaVar) {
        synchronized (this.zzrJ) {
            this.zzGA = zzhaVar;
        }
    }

    @Override // com.google.android.gms.internal.zzhn
    public zzfa zzbF() {
        return this.zzGy;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public String zzfS() {
        return "3";
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public zzgs zzfT() {
        return this.zzGx;
    }

    @Override // com.google.android.gms.internal.zzha.zza
    public View zzfU() {
        return this.zzGz;
    }

    @Override // com.google.android.gms.internal.zzhn
    public IObjectWrapper zzfW() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzGA.getContext().getApplicationContext());
    }

    @Override // com.google.android.gms.internal.zzhn
    public boolean zzj(IObjectWrapper iObjectWrapper) {
        if (this.zzGA == null) {
            zzqf.e("Attempt to call renderVideoInMediaView before ad initialized.");
            return false;
        } else if (this.zzGz == null) {
            return false;
        } else {
            zzgy zzgyVar = new zzgy() { // from class: com.google.android.gms.internal.zzgx.1
                @Override // com.google.android.gms.internal.zzgy
                public void zzc(MotionEvent motionEvent) {
                }

                @Override // com.google.android.gms.internal.zzgy
                public void zzfX() {
                    zzgx.this.performClick(NativeCustomTemplateAd.ASSET_NAME_VIDEO);
                }
            };
            this.zzGA.zza((FrameLayout) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), zzgyVar);
            return true;
        }
    }
}
