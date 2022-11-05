package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzkf;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzkk extends zzkf.zza {
    private final NativeContentAdMapper zzLH;

    public zzkk(NativeContentAdMapper nativeContentAdMapper) {
        this.zzLH = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.zzkf
    public String getAdvertiser() {
        return this.zzLH.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.zzkf
    public String getBody() {
        return this.zzLH.getBody();
    }

    @Override // com.google.android.gms.internal.zzkf
    public String getCallToAction() {
        return this.zzLH.getCallToAction();
    }

    @Override // com.google.android.gms.internal.zzkf
    public Bundle getExtras() {
        return this.zzLH.getExtras();
    }

    @Override // com.google.android.gms.internal.zzkf
    public String getHeadline() {
        return this.zzLH.getHeadline();
    }

    @Override // com.google.android.gms.internal.zzkf
    public List getImages() {
        List<NativeAd.Image> images = this.zzLH.getImages();
        if (images != null) {
            ArrayList arrayList = new ArrayList();
            for (NativeAd.Image image : images) {
                arrayList.add(new zzgu(image.getDrawable(), image.getUri(), image.getScale()));
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzkf
    public boolean getOverrideClickHandling() {
        return this.zzLH.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.zzkf
    public boolean getOverrideImpressionRecording() {
        return this.zzLH.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.zzkf
    public void recordImpression() {
        this.zzLH.recordImpression();
    }

    @Override // com.google.android.gms.internal.zzkf
    public zzfa zzbF() {
        if (this.zzLH.getVideoController() != null) {
            return this.zzLH.getVideoController().zzbs();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzkf
    public zzhf zzfV() {
        NativeAd.Image logo = this.zzLH.getLogo();
        if (logo != null) {
            return new zzgu(logo.getDrawable(), logo.getUri(), logo.getScale());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzkf
    public IObjectWrapper zzhh() {
        View adChoicesContent = this.zzLH.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return com.google.android.gms.dynamic.zzd.zzA(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.zzkf
    public void zzl(IObjectWrapper iObjectWrapper) {
        this.zzLH.handleClick((View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzkf
    public void zzm(IObjectWrapper iObjectWrapper) {
        this.zzLH.trackView((View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.zzkf
    public void zzn(IObjectWrapper iObjectWrapper) {
        this.zzLH.untrackView((View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }
}
