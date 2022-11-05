package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzfa;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqf;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@zzme
/* loaded from: classes.dex */
public final class VideoController {
    private final Object zzrJ = new Object();
    private zzfa zzrK;
    private VideoLifecycleCallbacks zzrL;

    /* loaded from: classes2.dex */
    public static abstract class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }
    }

    public float getAspectRatio() {
        float f = BitmapDescriptorFactory.HUE_RED;
        synchronized (this.zzrJ) {
            if (this.zzrK != null) {
                try {
                    f = this.zzrK.getAspectRatio();
                } catch (RemoteException e) {
                    zzqf.zzb("Unable to call getAspectRatio on video controller.", e);
                }
            }
        }
        return f;
    }

    public VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.zzrJ) {
            videoLifecycleCallbacks = this.zzrL;
        }
        return videoLifecycleCallbacks;
    }

    public boolean hasVideoContent() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzrK != null;
        }
        return z;
    }

    public void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        zzac.zzb(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.zzrJ) {
            this.zzrL = videoLifecycleCallbacks;
            if (this.zzrK == null) {
                return;
            }
            try {
                this.zzrK.zza(new zzfs(videoLifecycleCallbacks));
            } catch (RemoteException e) {
                zzqf.zzb("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    public void zza(zzfa zzfaVar) {
        synchronized (this.zzrJ) {
            this.zzrK = zzfaVar;
            if (this.zzrL != null) {
                setVideoLifecycleCallbacks(this.zzrL);
            }
        }
    }

    public zzfa zzbs() {
        zzfa zzfaVar;
        synchronized (this.zzrJ) {
            zzfaVar = this.zzrK;
        }
        return zzfaVar;
    }
}
