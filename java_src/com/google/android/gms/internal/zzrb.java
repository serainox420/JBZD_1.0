package com.google.android.gms.internal;

import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.internal.zzfa;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.HashMap;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzrb extends zzfa.zza {
    private final zzqw zzIs;
    private int zzaaA;
    private zzfb zzaaB;
    private boolean zzaaC;
    private boolean zzaaD;
    private float zzaaE;
    private float zzaaF;
    private final float zzaaz;
    private final Object zzrJ = new Object();
    private boolean zzrM = true;

    public zzrb(zzqw zzqwVar, float f) {
        this.zzIs = zzqwVar;
        this.zzaaz = f;
    }

    private void zzbn(String str) {
        zzd(str, null);
    }

    private void zzd(String str, Map<String, String> map) {
        final HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, str);
        com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzrb.1
            @Override // java.lang.Runnable
            public void run() {
                zzrb.this.zzIs.zza("pubVideoCmd", hashMap);
            }
        });
    }

    private void zzl(final int i, final int i2) {
        com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzrb.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                synchronized (zzrb.this.zzrJ) {
                    boolean z2 = i != i2;
                    boolean z3 = !zzrb.this.zzaaC && i2 == 1;
                    boolean z4 = z2 && i2 == 1;
                    boolean z5 = z2 && i2 == 2;
                    boolean z6 = z2 && i2 == 3;
                    zzrb zzrbVar = zzrb.this;
                    if (zzrb.this.zzaaC || z3) {
                        z = true;
                    }
                    zzrbVar.zzaaC = z;
                    if (zzrb.this.zzaaB == null) {
                        return;
                    }
                    if (z3) {
                        try {
                            zzrb.this.zzaaB.zzeY();
                        } catch (RemoteException e) {
                            zzpk.zzc("Unable to call onVideoStart()", e);
                        }
                    }
                    if (z4) {
                        try {
                            zzrb.this.zzaaB.zzeZ();
                        } catch (RemoteException e2) {
                            zzpk.zzc("Unable to call onVideoPlay()", e2);
                        }
                    }
                    if (z5) {
                        try {
                            zzrb.this.zzaaB.zzfa();
                        } catch (RemoteException e3) {
                            zzpk.zzc("Unable to call onVideoPause()", e3);
                        }
                    }
                    if (z6) {
                        try {
                            zzrb.this.zzaaB.onVideoEnd();
                        } catch (RemoteException e4) {
                            zzpk.zzc("Unable to call onVideoEnd()", e4);
                        }
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzfa
    public float getAspectRatio() {
        float f;
        synchronized (this.zzrJ) {
            f = this.zzaaF;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.zzfa
    public int getPlaybackState() {
        int i;
        synchronized (this.zzrJ) {
            i = this.zzaaA;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.zzfa
    public boolean isMuted() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaaD;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzfa
    public void pause() {
        zzbn(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE);
    }

    @Override // com.google.android.gms.internal.zzfa
    public void play() {
        zzbn("play");
    }

    public void zzQ(boolean z) {
        synchronized (this.zzrJ) {
            this.zzrM = z;
        }
        zzd("initialState", com.google.android.gms.common.util.zzf.zzd("muteStart", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO));
    }

    public void zza(float f, int i, boolean z, float f2) {
        int i2;
        synchronized (this.zzrJ) {
            this.zzaaE = f;
            this.zzaaD = z;
            i2 = this.zzaaA;
            this.zzaaA = i;
            this.zzaaF = f2;
        }
        zzl(i2, i);
    }

    @Override // com.google.android.gms.internal.zzfa
    public void zza(zzfb zzfbVar) {
        synchronized (this.zzrJ) {
            this.zzaaB = zzfbVar;
        }
    }

    @Override // com.google.android.gms.internal.zzfa
    public float zzeW() {
        return this.zzaaz;
    }

    @Override // com.google.android.gms.internal.zzfa
    public float zzeX() {
        float f;
        synchronized (this.zzrJ) {
            f = this.zzaaE;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.zzfa
    public void zzn(boolean z) {
        zzbn(z ? SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE : SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE);
    }
}
