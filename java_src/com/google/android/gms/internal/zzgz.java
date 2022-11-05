package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzha;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzgz extends zzhb {
    private zzke zzGH;
    private zzkf zzGI;
    private final com.google.android.gms.ads.internal.zzs zzGJ;
    private zzha zzGK;
    private boolean zzGL;
    private Object zzrJ;

    private zzgz(Context context, com.google.android.gms.ads.internal.zzs zzsVar, zzaw zzawVar, zzha.zza zzaVar) {
        super(context, zzsVar, null, zzawVar, null, zzaVar, null, null);
        this.zzGL = false;
        this.zzrJ = new Object();
        this.zzGJ = zzsVar;
    }

    public zzgz(Context context, com.google.android.gms.ads.internal.zzs zzsVar, zzaw zzawVar, zzke zzkeVar, zzha.zza zzaVar) {
        this(context, zzsVar, zzawVar, zzaVar);
        this.zzGH = zzkeVar;
    }

    public zzgz(Context context, com.google.android.gms.ads.internal.zzs zzsVar, zzaw zzawVar, zzkf zzkfVar, zzha.zza zzaVar) {
        this(context, zzsVar, zzawVar, zzaVar);
        this.zzGI = zzkfVar;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0038 -> B:12:0x001a). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.zzhb, com.google.android.gms.internal.zzha
    public View zza(View.OnClickListener onClickListener, boolean z) {
        IObjectWrapper iObjectWrapper;
        synchronized (this.zzrJ) {
            if (this.zzGK != null) {
                return this.zzGK.zza(onClickListener, z);
            }
            try {
            } catch (RemoteException e) {
                zzpk.zzc("Failed to call getAdChoicesContent", e);
            }
            if (this.zzGH != null) {
                iObjectWrapper = this.zzGH.zzhh();
            } else {
                if (this.zzGI != null) {
                    iObjectWrapper = this.zzGI.zzhh();
                }
                iObjectWrapper = null;
            }
            if (iObjectWrapper == null) {
                return null;
            }
            return (View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.zzhb
    public void zza(View view, Map<String, WeakReference<View>> map, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        synchronized (this.zzrJ) {
            this.zzGL = true;
            try {
                if (this.zzGH != null) {
                    this.zzGH.zzm(com.google.android.gms.dynamic.zzd.zzA(view));
                } else if (this.zzGI != null) {
                    this.zzGI.zzm(com.google.android.gms.dynamic.zzd.zzA(view));
                }
            } catch (RemoteException e) {
                zzpk.zzc("Failed to call prepareAd", e);
            }
            this.zzGL = false;
        }
    }

    @Override // com.google.android.gms.internal.zzhb, com.google.android.gms.internal.zzha
    public void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, View view2) {
        com.google.android.gms.common.internal.zzac.zzdj("performClick must be called on the main UI thread.");
        synchronized (this.zzrJ) {
            if (this.zzGK != null) {
                this.zzGK.zza(view, map, jSONObject, view2);
                this.zzGJ.onAdClicked();
            } else {
                try {
                    if (this.zzGH != null && !this.zzGH.getOverrideClickHandling()) {
                        this.zzGH.zzl(com.google.android.gms.dynamic.zzd.zzA(view));
                        this.zzGJ.onAdClicked();
                    }
                    if (this.zzGI != null && !this.zzGI.getOverrideClickHandling()) {
                        this.zzGI.zzl(com.google.android.gms.dynamic.zzd.zzA(view));
                        this.zzGJ.onAdClicked();
                    }
                } catch (RemoteException e) {
                    zzpk.zzc("Failed to call performClick", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzhb, com.google.android.gms.internal.zzha
    public void zzb(View view, Map<String, WeakReference<View>> map) {
        com.google.android.gms.common.internal.zzac.zzdj("recordImpression must be called on the main UI thread.");
        synchronized (this.zzrJ) {
            zzq(true);
            if (this.zzGK != null) {
                this.zzGK.zzb(view, map);
                this.zzGJ.recordImpression();
            } else {
                try {
                    if (this.zzGH != null && !this.zzGH.getOverrideImpressionRecording()) {
                        this.zzGH.recordImpression();
                        this.zzGJ.recordImpression();
                    } else if (this.zzGI != null && !this.zzGI.getOverrideImpressionRecording()) {
                        this.zzGI.recordImpression();
                        this.zzGJ.recordImpression();
                    }
                } catch (RemoteException e) {
                    zzpk.zzc("Failed to call recordImpression", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzhb, com.google.android.gms.internal.zzha
    public void zzc(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.zzrJ) {
            try {
                if (this.zzGH != null) {
                    this.zzGH.zzn(com.google.android.gms.dynamic.zzd.zzA(view));
                } else if (this.zzGI != null) {
                    this.zzGI.zzn(com.google.android.gms.dynamic.zzd.zzA(view));
                }
            } catch (RemoteException e) {
                zzpk.zzc("Failed to call untrackView", e);
            }
        }
    }

    public void zzc(zzha zzhaVar) {
        synchronized (this.zzrJ) {
            this.zzGK = zzhaVar;
        }
    }

    @Override // com.google.android.gms.internal.zzhb, com.google.android.gms.internal.zzha
    public boolean zzfY() {
        boolean zzfY;
        synchronized (this.zzrJ) {
            zzfY = this.zzGK != null ? this.zzGK.zzfY() : this.zzGJ.zzcx();
        }
        return zzfY;
    }

    public boolean zzfZ() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzGL;
        }
        return z;
    }

    public zzha zzga() {
        zzha zzhaVar;
        synchronized (this.zzrJ) {
            zzhaVar = this.zzGK;
        }
        return zzhaVar;
    }

    @Override // com.google.android.gms.internal.zzhb
    public zzqw zzgb() {
        return null;
    }
}
