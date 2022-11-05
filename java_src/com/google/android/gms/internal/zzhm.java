package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzhf;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzhm extends NativeContentAd {
    private final zzhl zzHu;
    private final zzhg zzHv;
    private final List<NativeAd.Image> zzHs = new ArrayList();
    private final VideoController zzAl = new VideoController();

    public zzhm(zzhl zzhlVar) {
        zzhg zzhgVar;
        zzhf zzfV;
        this.zzHu = zzhlVar;
        try {
            List<Object> images = this.zzHu.getImages();
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
            zzfV = this.zzHu.zzfV();
        } catch (RemoteException e2) {
            zzqf.zzb("Failed to get icon.", e2);
        }
        if (zzfV != null) {
            zzhgVar = new zzhg(zzfV);
            this.zzHv = zzhgVar;
        }
        zzhgVar = null;
        this.zzHv = zzhgVar;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public void destroy() {
        try {
            this.zzHu.destroy();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to destroy", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getAdvertiser() {
        try {
            return this.zzHu.getAdvertiser();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get attribution.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getBody() {
        try {
            return this.zzHu.getBody();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get body.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getCallToAction() {
        try {
            return this.zzHu.getCallToAction();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public Bundle getExtras() {
        try {
            return this.zzHu.getExtras();
        } catch (RemoteException e) {
            zzqf.zzc("Failed to get extras", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getHeadline() {
        try {
            return this.zzHu.getHeadline();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get headline.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public List<NativeAd.Image> getImages() {
        return this.zzHs;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public NativeAd.Image getLogo() {
        return this.zzHv;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public VideoController getVideoController() {
        try {
            if (this.zzHu.zzbF() != null) {
                this.zzAl.zza(this.zzHu.zzbF());
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
            return this.zzHu.zzfR();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
