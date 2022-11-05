package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.TextureView;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgh;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpu;
import com.google.android.gms.internal.zzqh;
import java.util.concurrent.TimeUnit;
@zzme
/* loaded from: classes.dex */
public class zzz {
    private final Context mContext;
    private final zzgl zzNU;
    private boolean zzNY;
    private final String zzOV;
    private final zzgj zzOW;
    private final long[] zzOY;
    private final String[] zzOZ;
    private zzj zzPe;
    private boolean zzPf;
    private boolean zzPg;
    private final zzqh zzuc;
    private final zzpu zzOX = new zzpu.zzb().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzla();
    private boolean zzPa = false;
    private boolean zzPb = false;
    private boolean zzPc = false;
    private boolean zzPd = false;
    private long zzPh = -1;

    public zzz(Context context, zzqh zzqhVar, String str, zzgl zzglVar, zzgj zzgjVar) {
        this.mContext = context;
        this.zzuc = zzqhVar;
        this.zzOV = str;
        this.zzNU = zzglVar;
        this.zzOW = zzgjVar;
        String str2 = zzgd.zzBE.get();
        if (str2 == null) {
            this.zzOZ = new String[0];
            this.zzOY = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzOZ = new String[split.length];
        this.zzOY = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzOY[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzpk.zzc("Unable to parse frame hash target time number.", e);
                this.zzOY[i] = -1;
            }
        }
    }

    private void zzc(zzj zzjVar) {
        long longValue = zzgd.zzBF.get().longValue();
        long currentPosition = zzjVar.getCurrentPosition();
        for (int i = 0; i < this.zzOZ.length; i++) {
            if (this.zzOZ[i] == null && longValue > Math.abs(currentPosition - this.zzOY[i])) {
                this.zzOZ[i] = zza((TextureView) zzjVar);
                return;
            }
        }
    }

    private void zziw() {
        if (this.zzPc && !this.zzPd) {
            zzgh.zza(this.zzNU, this.zzOW, "vff2");
            this.zzPd = true;
        }
        long nanoTime = com.google.android.gms.ads.internal.zzw.zzcS().nanoTime();
        if (this.zzNY && this.zzPg && this.zzPh != -1) {
            this.zzOX.zza(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.zzPh));
        }
        this.zzPg = this.zzNY;
        this.zzPh = nanoTime;
    }

    public void onStop() {
        if (!zzgd.zzBD.get().booleanValue() || this.zzPf) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.zzOV);
        bundle.putString("player", this.zzPe.zzhy());
        for (zzpu.zza zzaVar : this.zzOX.getBuckets()) {
            String valueOf = String.valueOf("fps_c_");
            String valueOf2 = String.valueOf(zzaVar.name);
            bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Integer.toString(zzaVar.count));
            String valueOf3 = String.valueOf("fps_p_");
            String valueOf4 = String.valueOf(zzaVar.name);
            bundle.putString(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), Double.toString(zzaVar.zzYi));
        }
        for (int i = 0; i < this.zzOY.length; i++) {
            String str = this.zzOZ[i];
            if (str != null) {
                String valueOf5 = String.valueOf("fh_");
                String valueOf6 = String.valueOf(Long.valueOf(this.zzOY[i]));
                bundle.putString(new StringBuilder(String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length()).append(valueOf5).append(valueOf6).toString(), str);
            }
        }
        com.google.android.gms.ads.internal.zzw.zzcM().zza(this.mContext, this.zzuc.zzba, "gmob-apps", bundle, true);
        this.zzPf = true;
    }

    @TargetApi(14)
    String zza(TextureView textureView) {
        long j;
        Bitmap bitmap = textureView.getBitmap(8, 8);
        long j2 = 0;
        long j3 = 63;
        int i = 0;
        while (i < 8) {
            int i2 = 0;
            long j4 = j2;
            while (true) {
                j = j3;
                int i3 = i2;
                if (i3 < 8) {
                    int pixel = bitmap.getPixel(i3, i);
                    j4 |= (Color.green(pixel) + (Color.blue(pixel) + Color.red(pixel)) > 128 ? 1L : 0L) << ((int) j);
                    i2 = i3 + 1;
                    j3 = j - 1;
                }
            }
            i++;
            j3 = j;
            j2 = j4;
        }
        return String.format("%016X", Long.valueOf(j2));
    }

    public void zza(zzj zzjVar) {
        zzgh.zza(this.zzNU, this.zzOW, "vpc2");
        this.zzPa = true;
        if (this.zzNU != null) {
            this.zzNU.zzh("vpn", zzjVar.zzhy());
        }
        this.zzPe = zzjVar;
    }

    public void zzb(zzj zzjVar) {
        zziw();
        zzc(zzjVar);
    }

    public void zzhU() {
        if (!this.zzPa || this.zzPb) {
            return;
        }
        zzgh.zza(this.zzNU, this.zzOW, "vfr2");
        this.zzPb = true;
    }

    public void zzix() {
        this.zzNY = true;
        if (!this.zzPb || this.zzPc) {
            return;
        }
        zzgh.zza(this.zzNU, this.zzOW, "vfp2");
        this.zzPc = true;
    }

    public void zziy() {
        this.zzNY = false;
    }
}
