package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@zzme
@TargetApi(14)
/* loaded from: classes.dex */
public class zzab implements AudioManager.OnAudioFocusChangeListener {
    private final AudioManager mAudioManager;
    private boolean zzNY;
    private final zza zzPj;
    private boolean zzPk;
    private boolean zzPl;
    private float zzPm = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        void zzhC();
    }

    public zzab(Context context, zza zzaVar) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        this.zzPj = zzaVar;
    }

    private void zziB() {
        boolean z = this.zzNY && !this.zzPl && this.zzPm > BitmapDescriptorFactory.HUE_RED;
        if (z && !this.zzPk) {
            zziC();
            this.zzPj.zzhC();
        } else if (z || !this.zzPk) {
        } else {
            zziD();
            this.zzPj.zzhC();
        }
    }

    private void zziC() {
        boolean z = true;
        if (this.mAudioManager == null || this.zzPk) {
            return;
        }
        if (this.mAudioManager.requestAudioFocus(this, 3, 2) != 1) {
            z = false;
        }
        this.zzPk = z;
    }

    private void zziD() {
        if (this.mAudioManager == null || !this.zzPk) {
            return;
        }
        this.zzPk = this.mAudioManager.abandonAudioFocus(this) == 0;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        this.zzPk = i > 0;
        this.zzPj.zzhC();
    }

    public void setMuted(boolean z) {
        this.zzPl = z;
        zziB();
    }

    public void zzb(float f) {
        this.zzPm = f;
        zziB();
    }

    public float zziA() {
        return this.zzPk ? this.zzPl ? 0.0f : this.zzPm : BitmapDescriptorFactory.HUE_RED;
    }

    public void zzix() {
        this.zzNY = true;
        zziB();
    }

    public void zziy() {
        this.zzNY = false;
        zziB();
    }
}
