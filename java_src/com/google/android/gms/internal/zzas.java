package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.zzae;
import com.google.android.gms.internal.zzag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes2.dex */
public abstract class zzas implements zzar {
    protected MotionEvent zzpF;
    protected LinkedList<MotionEvent> zzpG = new LinkedList<>();
    protected long zzpH = 0;
    protected long zzpI = 0;
    protected long zzpJ = 0;
    protected long zzpK = 0;
    protected long zzpL = 0;
    protected long zzpM = 0;
    protected long zzpN = 0;
    private boolean zzpO = false;
    protected boolean zzpP = false;
    protected DisplayMetrics zzpQ;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzas(Context context) {
        try {
            zzao.zzO();
            this.zzpQ = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    private String zza(Context context, String str, boolean z, View view, byte[] bArr) {
        zzag.zza zza;
        boolean z2 = true;
        zzae.zza zzaVar = null;
        if (bArr != null && bArr.length > 0) {
            try {
                zzaVar = zzae.zza.zzc(bArr);
            } catch (zzbxs e) {
            }
        }
        try {
            if (z) {
                zza = zza(context, view);
                this.zzpO = true;
            } else {
                zza = zza(context, zzaVar);
            }
            if (zza == null || zza.zzaeT() == 0) {
                return Integer.toString(5);
            }
            if (zzb(z)) {
                z2 = false;
            }
            return zzao.zza(zza, str, z2);
        } catch (UnsupportedEncodingException e2) {
            return Integer.toString(7);
        } catch (NoSuchAlgorithmException e3) {
            return Integer.toString(7);
        } catch (Throwable th) {
            return Integer.toString(3);
        }
    }

    private static boolean zza(zzbe zzbeVar) {
        return (zzbeVar == null || zzbeVar.zzcf == null || zzbeVar.zzqM == null) ? false : true;
    }

    private boolean zzb(zzbe zzbeVar) {
        return (this.zzpQ == null || zzbeVar == null || zzbeVar.zzcd == null || zzbeVar.zzqN == null) ? false : true;
    }

    private static boolean zzb(boolean z) {
        if (!zzgd.zzDP.get().booleanValue()) {
            return true;
        }
        return zzgd.zzDV.get().booleanValue() && z;
    }

    protected abstract long zza(StackTraceElement[] stackTraceElementArr) throws zzba;

    protected abstract zzag.zza zza(Context context, View view);

    protected abstract zzag.zza zza(Context context, zzae.zza zzaVar);

    @Override // com.google.android.gms.internal.zzar
    public String zza(Context context, String str, View view) {
        return zza(context, str, true, view, null);
    }

    public String zza(Context context, byte[] bArr) {
        if (!zzbf.zzbc() || !zzgd.zzDU.get().booleanValue()) {
            return zza(context, null, false, null, bArr);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.zzar
    public void zza(int i, int i2, int i3) {
        if (this.zzpF != null) {
            this.zzpF.recycle();
        }
        if (this.zzpQ != null) {
            this.zzpF = MotionEvent.obtain(0L, i3, 1, i * this.zzpQ.density, i2 * this.zzpQ.density, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, 0);
        } else {
            this.zzpF = null;
        }
        this.zzpP = false;
    }

    @Override // com.google.android.gms.internal.zzar
    public void zza(MotionEvent motionEvent) {
        if (this.zzpO) {
            this.zzpK = 0L;
            this.zzpJ = 0L;
            this.zzpI = 0L;
            this.zzpH = 0L;
            this.zzpL = 0L;
            this.zzpN = 0L;
            this.zzpM = 0L;
            Iterator<MotionEvent> it = this.zzpG.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.zzpG.clear();
            this.zzpF = null;
            this.zzpO = false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.zzpH++;
                break;
            case 1:
                this.zzpF = MotionEvent.obtain(motionEvent);
                this.zzpG.add(this.zzpF);
                if (this.zzpG.size() > 6) {
                    this.zzpG.remove().recycle();
                }
                this.zzpJ++;
                try {
                    this.zzpL = zza(new Throwable().getStackTrace());
                    break;
                } catch (zzba e) {
                    break;
                }
            case 2:
                this.zzpI += motionEvent.getHistorySize() + 1;
                try {
                    zzbe zzb = zzb(motionEvent);
                    if (zza(zzb)) {
                        this.zzpM += zzb.zzcf.longValue() + zzb.zzqM.longValue();
                    }
                    if (zzb(zzb)) {
                        this.zzpN = zzb.zzqN.longValue() + zzb.zzcd.longValue() + this.zzpN;
                        break;
                    }
                } catch (zzba e2) {
                    break;
                }
                break;
            case 3:
                this.zzpK++;
                break;
        }
        this.zzpP = true;
    }

    protected abstract zzbe zzb(MotionEvent motionEvent) throws zzba;

    @Override // com.google.android.gms.internal.zzar
    public String zzb(Context context) {
        if (!zzbf.zzbc() || !zzgd.zzDU.get().booleanValue()) {
            return zza(context, null, false, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    public String zzb(Context context, String str) {
        return zza(context, str, (View) null);
    }
}
