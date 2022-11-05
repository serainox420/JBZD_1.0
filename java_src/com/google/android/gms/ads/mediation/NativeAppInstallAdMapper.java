package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class NativeAppInstallAdMapper extends NativeAdMapper {
    private VideoController zzAl;
    private String zzGp;
    private List<NativeAd.Image> zzGq;
    private String zzGr;
    private String zzGt;
    private double zzGu;
    private String zzGv;
    private String zzGw;
    private NativeAd.Image zzaaP;

    public final String getBody() {
        return this.zzGr;
    }

    public final String getCallToAction() {
        return this.zzGt;
    }

    public final String getHeadline() {
        return this.zzGp;
    }

    public final NativeAd.Image getIcon() {
        return this.zzaaP;
    }

    public final List<NativeAd.Image> getImages() {
        return this.zzGq;
    }

    public final String getPrice() {
        return this.zzGw;
    }

    public final double getStarRating() {
        return this.zzGu;
    }

    public final String getStore() {
        return this.zzGv;
    }

    public final VideoController getVideoController() {
        return this.zzAl;
    }

    public final void setBody(String str) {
        this.zzGr = str;
    }

    public final void setCallToAction(String str) {
        this.zzGt = str;
    }

    public final void setHeadline(String str) {
        this.zzGp = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.zzaaP = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.zzGq = list;
    }

    public final void setPrice(String str) {
        this.zzGw = str;
    }

    public final void setStarRating(double d) {
        this.zzGu = d;
    }

    public final void setStore(String str) {
        this.zzGv = str;
    }

    public final void zza(VideoController videoController) {
        this.zzAl = videoController;
    }
}
