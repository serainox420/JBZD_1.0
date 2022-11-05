package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.facebook.internal.NativeProtocol;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.openx.view.mraid.JSInterface;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.Map;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zzio implements zzid {
    private boolean zzIv;

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                return zzel.zzeT().zzb(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                zzpk.zzbh(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length()).append("Could not parse ").append(str).append(" in a video GMSG: ").append(str2).toString());
                return i;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        int i;
        int i2;
        String str = map.get(NativeProtocol.WEB_DIALOG_ACTION);
        if (str == null) {
            zzpk.zzbh("Action missing from video GMSG.");
            return;
        }
        if (zzpk.zzak(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject.toString());
            zzpk.zzbf(new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(valueOf).length()).append("Video GMSG: ").append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf).toString());
        }
        if ("background".equals(str)) {
            String str2 = map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzpk.zzbh("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzqwVar.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException e) {
                zzpk.zzbh("Invalid color parameter in video GMSG.");
                return;
            }
        }
        zzqv zzlD = zzqwVar.zzlD();
        if (zzlD == null) {
            zzpk.zzbh("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = "new".equals(str);
        boolean equals2 = "position".equals(str);
        if (equals || equals2) {
            Context context = zzqwVar.getContext();
            int zza = zza(context, map, JSInterface.JSON_X, 0);
            int zza2 = zza(context, map, JSInterface.JSON_Y, 0);
            int zza3 = zza(context, map, "w", -1);
            int zza4 = zza(context, map, "h", -1);
            if (zzgd.zzEv.get().booleanValue()) {
                i = Math.min(zza3, zzqwVar.getMeasuredWidth() - zza);
                zza4 = Math.min(zza4, zzqwVar.getMeasuredHeight() - zza2);
            } else {
                i = zza3;
            }
            try {
                i2 = Integer.parseInt(map.get("player"));
            } catch (NumberFormatException e2) {
                i2 = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean(map.get("spherical"));
            if (!equals || zzlD.zzlo() != null) {
                zzlD.zze(zza, zza2, i, zza4);
                return;
            } else {
                zzlD.zza(zza, zza2, i, zza4, i2, parseBoolean);
                return;
            }
        }
        com.google.android.gms.ads.internal.overlay.zzl zzlo = zzlD.zzlo();
        if (zzlo == null) {
            com.google.android.gms.ads.internal.overlay.zzl.zzi(zzqwVar);
        } else if ("click".equals(str)) {
            Context context2 = zzqwVar.getContext();
            int zza5 = zza(context2, map, JSInterface.JSON_X, 0);
            int zza6 = zza(context2, map, JSInterface.JSON_Y, 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, zza5, zza6, 0);
            zzlo.zzf(obtain);
            obtain.recycle();
        } else if ("currentTime".equals(str)) {
            String str3 = map.get("time");
            if (str3 == null) {
                zzpk.zzbh("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzlo.seekTo((int) (Float.parseFloat(str3) * 1000.0f));
            } catch (NumberFormatException e3) {
                String valueOf2 = String.valueOf(str3);
                zzpk.zzbh(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
            }
        } else if ("hide".equals(str)) {
            zzlo.setVisibility(4);
        } else if ("load".equals(str)) {
            zzlo.zzib();
        } else if ("muted".equals(str)) {
            if (Boolean.parseBoolean(map.get("muted"))) {
                zzlo.zzhZ();
            } else {
                zzlo.zzia();
            }
        } else if (SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE.equals(str)) {
            zzlo.pause();
        } else if ("play".equals(str)) {
            zzlo.play();
        } else if ("show".equals(str)) {
            zzlo.setVisibility(0);
        } else if ("src".equals(str)) {
            zzlo.zzaC(map.get("src"));
        } else if ("touchMove".equals(str)) {
            Context context3 = zzqwVar.getContext();
            zzlo.zza(zza(context3, map, "dx", 0), zza(context3, map, "dy", 0));
            if (this.zzIv) {
                return;
            }
            zzqwVar.zzlt().zzhL();
            this.zzIv = true;
        } else if (!"volume".equals(str)) {
            if ("watermark".equals(str)) {
                zzlo.zzic();
                return;
            }
            String valueOf3 = String.valueOf(str);
            zzpk.zzbh(valueOf3.length() != 0 ? "Unknown video action: ".concat(valueOf3) : new String("Unknown video action: "));
        } else {
            String str4 = map.get("volume");
            if (str4 == null) {
                zzpk.zzbh("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                zzlo.zzb(Float.parseFloat(str4));
            } catch (NumberFormatException e4) {
                String valueOf4 = String.valueOf(str4);
                zzpk.zzbh(valueOf4.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf4) : new String("Could not parse volume parameter from volume video GMSG: "));
            }
        }
    }
}
