package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzke;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzkj extends zzke.zza {
    private final NativeAppInstallAdMapper zzLG;

    public zzkj(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzLG = nativeAppInstallAdMapper;
    }

    @Override // com.google.android.gms.internal.zzke
    public String getBody() {
        return this.zzLG.getBody();
    }

    @Override // com.google.android.gms.internal.zzke
    public String getCallToAction() {
        return this.zzLG.getCallToAction();
    }

    @Override // com.google.android.gms.internal.zzke
    public Bundle getExtras() {
        return this.zzLG.getExtras();
    }

    @Override // com.google.android.gms.internal.zzke
    public String getHeadline() {
        return this.zzLG.getHeadline();
    }

    @Override // com.google.android.gms.internal.zzke
    public List getImages() {
        List<NativeAd.Image> images = this.zzLG.getImages();
        if (images != null) {
            ArrayList arrayList = new ArrayList();
            for (NativeAd.Image image : images) {
                arrayList.add(new zzgu(image.getDrawable(), image.getUri(), image.getScale()));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzke
    public boolean getOverrideClickHandling() {
        return this.zzLG.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.zzke
    public boolean getOverrideImpressionRecording() {
        return this.zzLG.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.zzke
    public String getPrice() {
        return this.zzLG.getPrice();
    }

    @Override // com.google.android.gms.internal.zzke
    public double getStarRating() {
        return this.zzLG.getStarRating();
    }

    @Override // com.google.android.gms.internal.zzke
    public String getStore() {
        return this.zzLG.getStore();
    }

    @Override // com.google.android.gms.internal.zzke
    public void recordImpression() {
        this.zzLG.recordImpression();
    }

    @Override // com.google.android.gms.internal.zzke
    public zzfa zzbF() {
        if (this.zzLG.getVideoController() != null) {
            return this.zzLG.getVideoController().zzbs();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzke
    public zzhf zzfQ() {
        NativeAd.Image icon = this.zzLG.getIcon();
        if (icon != null) {
            return new zzgu(icon.getDrawable(), icon.getUri(), icon.getScale());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzke
    public IObjectWrapper zzhh() {
        View adChoicesContent = this.zzLG.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return com.google.android.gms.dynamic.zzd.zzA(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.zzke
    public void zzl(IObjectWrapper iObjectWrapper) {
        this.zzLG.handleClick((View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzke
    public void zzm(IObjectWrapper iObjectWrapper) {
        this.zzLG.trackView((View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzke
    public void zzn(IObjectWrapper iObjectWrapper) {
        this.zzLG.untrackView((View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }
}
