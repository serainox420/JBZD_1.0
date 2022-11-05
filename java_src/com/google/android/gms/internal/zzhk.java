package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzhf;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzhk extends NativeAppInstallAd {
    private final zzhj zzHr;
    private final zzhg zzHt;
    private final List<NativeAd.Image> zzHs = new ArrayList();
    private final VideoController zzAl = new VideoController();

    public zzhk(zzhj zzhjVar) {
        zzhg zzhgVar;
        zzhf zzfQ;
        this.zzHr = zzhjVar;
        try {
            List<Object> images = this.zzHr.getImages();
            if (images != null) {
                for (Object obj : images) {
                    zzhf zze = zze(obj);
                    if (zze != null) {
                        this.zzHs.add(new zzhg(zze));
                    }
                }
            }
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get image.", e);
        }
        try {
            zzfQ = this.zzHr.zzfQ();
        } catch (RemoteException e2) {
            zzqf.zzb("Failed to get icon.", e2);
        }
        if (zzfQ != null) {
            zzhgVar = new zzhg(zzfQ);
            this.zzHt = zzhgVar;
        }
        zzhgVar = null;
        this.zzHt = zzhgVar;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public void destroy() {
        try {
            this.zzHr.destroy();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to destroy", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getBody() {
        try {
            return this.zzHr.getBody();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get body.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getCallToAction() {
        try {
            return this.zzHr.getCallToAction();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public Bundle getExtras() {
        try {
            return this.zzHr.getExtras();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get extras", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getHeadline() {
        try {
            return this.zzHr.getHeadline();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get headline.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public NativeAd.Image getIcon() {
        return this.zzHt;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public List<NativeAd.Image> getImages() {
        return this.zzHs;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getPrice() {
        try {
            return this.zzHr.getPrice();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get price.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public Double getStarRating() {
        try {
            double starRating = this.zzHr.getStarRating();
            if (starRating != -1.0d) {
                return Double.valueOf(starRating);
            }
            return null;
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get star rating.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getStore() {
        try {
            return this.zzHr.getStore();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get store", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public VideoController getVideoController() {
        try {
            if (this.zzHr.zzbF() != null) {
                this.zzAl.zza(this.zzHr.zzbF());
            }
        } catch (RemoteException e) {
            zzqf.zzb("Exception occurred while getting video controller", e);
        }
        return this.zzAl;
    }

    zzhf zze(Object obj) {
        if (obj instanceof IBinder) {
            return zzhf.zza.zzB((IBinder) obj);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.formats.NativeAd
    /* renamed from: zzfR */
    public IObjectWrapper zzbu() {
        try {
            return this.zzHr.zzfR();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
