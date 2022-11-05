package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.internal.zzme;
@zzme
@TargetApi(14)
/* loaded from: classes.dex */
public abstract class zzj extends TextureView implements zzab.zza {
    protected final zzw zzNR;
    protected final zzab zzNS;

    public zzj(Context context) {
        super(context);
        this.zzNR = new zzw();
        this.zzNS = new zzab(context, this);
    }

    public abstract int getCurrentPosition();

    public abstract int getDuration();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract void pause();

    public abstract void play();

    public abstract void seekTo(int i);

    public abstract void setVideoPath(String str);

    public abstract void stop();

    public abstract void zza(float f, float f2);

    public abstract void zza(zzi zziVar);

    public void zzb(float f) {
        this.zzNS.zzb(f);
        zzhC();
    }

    public abstract void zzhC();

    public void zzhZ() {
        this.zzNS.setMuted(true);
        zzhC();
    }

    public abstract String zzhy();

    public void zzia() {
        this.zzNS.setMuted(false);
        zzhC();
    }
}
