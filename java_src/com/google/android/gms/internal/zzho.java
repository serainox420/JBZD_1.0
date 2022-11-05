package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzho implements NativeCustomTemplateAd {
    private final VideoController zzAl = new VideoController();
    private final zzhn zzHw;
    private final MediaView zzHx;

    public zzho(zzhn zzhnVar) {
        Context context;
        MediaView mediaView = null;
        this.zzHw = zzhnVar;
        try {
            context = (Context) com.google.android.gms.dynamic.zzd.zzF(zzhnVar.zzfW());
        } catch (RemoteException | NullPointerException e) {
            zzqf.zzb("Unable to inflate MediaView.", e);
            context = null;
        }
        if (context != null) {
            MediaView zzq = zzq(context);
            try {
                mediaView = !this.zzHw.zzj(com.google.android.gms.dynamic.zzd.zzA(zzq)) ? null : zzq;
            } catch (RemoteException e2) {
                zzqf.zzb("Unable to render video in MediaView.", e2);
            }
        }
        this.zzHx = mediaView;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public void destroy() {
        try {
            this.zzHw.destroy();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to destroy ad.", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public List<String> getAvailableAssetNames() {
        try {
            return this.zzHw.getAvailableAssetNames();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get available asset names.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public String getCustomTemplateId() {
        try {
            return this.zzHw.getCustomTemplateId();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get custom template id.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public NativeAd.Image getImage(String str) {
        try {
            zzhf zzZ = this.zzHw.zzZ(str);
            if (zzZ != null) {
                return new zzhg(zzZ);
            }
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get image.", e);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public CharSequence getText(String str) {
        try {
            return this.zzHw.zzY(str);
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get string.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public VideoController getVideoController() {
        try {
            zzfa zzbF = this.zzHw.zzbF();
            if (zzbF != null) {
                this.zzAl.zza(zzbF);
            }
        } catch (RemoteException e) {
            zzqf.zzb("Exception occurred while getting video controller", e);
        }
        return this.zzAl;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public MediaView getVideoMediaView() {
        return this.zzHx;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public void performClick(String str) {
        try {
            this.zzHw.performClick(str);
        } catch (RemoteException e) {
            zzqf.zzb("Failed to perform click.", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public void recordImpression() {
        try {
            this.zzHw.recordImpression();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to record impression.", e);
        }
    }

    protected MediaView zzq(Context context) {
        return new MediaView(context);
    }
}
