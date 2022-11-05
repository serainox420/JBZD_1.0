package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzqw;
import com.mopub.mobileads.VastIconXmlManager;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.HashMap;
@zzme
/* loaded from: classes.dex */
public class zzl extends FrameLayout implements zzi {
    private final zzqw zzIs;
    private String zzIx;
    private final FrameLayout zzNT;
    private final zzgl zzNU;
    private final zzaa zzNV;
    private final long zzNW;
    private zzj zzNX;
    private boolean zzNY;
    private boolean zzNZ;
    private boolean zzOa;
    private boolean zzOb;
    private long zzOc;
    private long zzOd;
    private Bitmap zzOe;
    private ImageView zzOf;
    private boolean zzOg;

    public zzl(Context context, zzqw zzqwVar, int i, boolean z, zzgl zzglVar) {
        super(context);
        this.zzIs = zzqwVar;
        this.zzNU = zzglVar;
        this.zzNT = new FrameLayout(context);
        addView(this.zzNT, new FrameLayout.LayoutParams(-1, -1));
        com.google.android.gms.common.internal.zzc.zzt(zzqwVar.zzby());
        this.zzNX = zzqwVar.zzby().zzsN.zza(context, zzqwVar, i, z, zzglVar);
        if (this.zzNX != null) {
            this.zzNT.addView(this.zzNX, new FrameLayout.LayoutParams(-1, -1, 17));
            if (zzgd.zzBG.get().booleanValue()) {
                zzic();
            }
        }
        this.zzOf = new ImageView(context);
        this.zzNW = zzgd.zzBK.get().longValue();
        this.zzOb = zzgd.zzBI.get().booleanValue();
        if (this.zzNU != null) {
            this.zzNU.zzh("spinner_used", this.zzOb ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        this.zzNV = new zzaa(this);
        if (this.zzNX != null) {
            this.zzNX.zza(this);
        }
        if (this.zzNX == null) {
            zzl("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        int length = strArr.length;
        int i = 0;
        String str2 = null;
        while (i < length) {
            String str3 = strArr[i];
            if (str2 != null) {
                hashMap.put(str2, str3);
                str3 = null;
            }
            i++;
            str2 = str3;
        }
        this.zzIs.zza("onVideoEvent", hashMap);
    }

    private void zzh(int i, int i2) {
        if (!this.zzOb) {
            return;
        }
        int max = Math.max(i / zzgd.zzBJ.get().intValue(), 1);
        int max2 = Math.max(i2 / zzgd.zzBJ.get().intValue(), 1);
        if (this.zzOe != null && this.zzOe.getWidth() == max && this.zzOe.getHeight() == max2) {
            return;
        }
        this.zzOe = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
        this.zzOg = false;
    }

    public static void zzi(zzqw zzqwVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        zzqwVar.zza("onVideoEvent", hashMap);
    }

    @TargetApi(14)
    private void zzie() {
        if (this.zzOe == null) {
            return;
        }
        long elapsedRealtime = com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime();
        if (this.zzNX.getBitmap(this.zzOe) != null) {
            this.zzOg = true;
        }
        long elapsedRealtime2 = com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime() - elapsedRealtime;
        if (zzpk.zzkI()) {
            zzpk.v(new StringBuilder(46).append("Spinner frame grab took ").append(elapsedRealtime2).append("ms").toString());
        }
        if (elapsedRealtime2 <= this.zzNW) {
            return;
        }
        zzpk.zzbh("Spinner frame grab crossed jank threshold! Suspending spinner.");
        this.zzOb = false;
        this.zzOe = null;
        if (this.zzNU == null) {
            return;
        }
        this.zzNU.zzh("spinner_jank", Long.toString(elapsedRealtime2));
    }

    private void zzif() {
        if (!this.zzOg || this.zzOe == null || zzih()) {
            return;
        }
        this.zzOf.setImageBitmap(this.zzOe);
        this.zzOf.invalidate();
        this.zzNT.addView(this.zzOf, new FrameLayout.LayoutParams(-1, -1));
        this.zzNT.bringChildToFront(this.zzOf);
    }

    private void zzig() {
        if (zzih()) {
            this.zzNT.removeView(this.zzOf);
        }
    }

    private boolean zzih() {
        return this.zzOf.getParent() != null;
    }

    private void zzii() {
        if (this.zzIs.zzlr() != null && !this.zzNZ) {
            this.zzOa = (this.zzIs.zzlr().getWindow().getAttributes().flags & 128) != 0;
            if (this.zzOa) {
                return;
            }
            this.zzIs.zzlr().getWindow().addFlags(128);
            this.zzNZ = true;
        }
    }

    private void zzij() {
        if (this.zzIs.zzlr() != null && this.zzNZ && !this.zzOa) {
            this.zzIs.zzlr().getWindow().clearFlags(128);
            this.zzNZ = false;
        }
    }

    public void destroy() {
        this.zzNV.pause();
        if (this.zzNX != null) {
            this.zzNX.stop();
        }
        zzij();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void onPaused() {
        zza(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE, new String[0]);
        zzij();
        this.zzNY = false;
    }

    public void pause() {
        if (this.zzNX == null) {
            return;
        }
        this.zzNX.pause();
    }

    public void play() {
        if (this.zzNX == null) {
            return;
        }
        this.zzNX.play();
    }

    public void seekTo(int i) {
        if (this.zzNX == null) {
            return;
        }
        this.zzNX.seekTo(i);
    }

    public void zza(float f, float f2) {
        if (this.zzNX != null) {
            this.zzNX.zza(f, f2);
        }
    }

    public void zzaC(String str) {
        this.zzIx = str;
    }

    public void zzb(float f) {
        if (this.zzNX == null) {
            return;
        }
        this.zzNX.zzb(f);
    }

    public void zzd(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.zzNT.setLayoutParams(layoutParams);
        requestLayout();
    }

    @TargetApi(14)
    public void zzf(MotionEvent motionEvent) {
        if (this.zzNX == null) {
            return;
        }
        this.zzNX.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzg(int i, int i2) {
        zzh(i, i2);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzhT() {
        this.zzNV.resume();
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzl.1
            @Override // java.lang.Runnable
            public void run() {
                zzl.this.zza("surfaceCreated", new String[0]);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzhU() {
        if (this.zzNX != null && this.zzOd == 0) {
            zza("canplaythrough", VastIconXmlManager.DURATION, String.valueOf(this.zzNX.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.zzNX.getVideoWidth()), "videoHeight", String.valueOf(this.zzNX.getVideoHeight()));
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzhV() {
        zzii();
        this.zzNY = true;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzhW() {
        zza("ended", new String[0]);
        zzij();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzhX() {
        zzif();
        this.zzNV.pause();
        this.zzOd = this.zzOc;
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzl.2
            @Override // java.lang.Runnable
            public void run() {
                zzl.this.zza("surfaceDestroyed", new String[0]);
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzhY() {
        if (this.zzNY) {
            zzig();
        }
        zzie();
    }

    public void zzhZ() {
        if (this.zzNX == null) {
            return;
        }
        this.zzNX.zzhZ();
    }

    public void zzia() {
        if (this.zzNX == null) {
            return;
        }
        this.zzNX.zzia();
    }

    public void zzib() {
        if (this.zzNX == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.zzIx)) {
            this.zzNX.setVideoPath(this.zzIx);
        } else {
            zza("no_src", new String[0]);
        }
    }

    @TargetApi(14)
    public void zzic() {
        if (this.zzNX == null) {
            return;
        }
        TextView textView = new TextView(this.zzNX.getContext());
        String valueOf = String.valueOf(this.zzNX.zzhy());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.zzNT.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzNT.bringChildToFront(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzid() {
        if (this.zzNX == null) {
            return;
        }
        long currentPosition = this.zzNX.getCurrentPosition();
        if (this.zzOc == currentPosition || currentPosition <= 0) {
            return;
        }
        zza("timeupdate", "time", String.valueOf(((float) currentPosition) / 1000.0f));
        this.zzOc = currentPosition;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzi
    public void zzl(String str, String str2) {
        zza("error", "what", str, "extra", str2);
    }
}
