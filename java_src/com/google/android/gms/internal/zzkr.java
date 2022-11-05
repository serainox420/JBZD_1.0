package com.google.android.gms.internal;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdSize;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Map;
import java.util.Set;
@zzme
/* loaded from: classes.dex */
public class zzkr extends zzkw {
    static final Set<String> zzLY = com.google.android.gms.common.util.zzf.zzc(Consts.ResizePropertiesCCPositionTopLeft, Consts.ResizePropertiesCCPositionTopRight, Consts.ResizePropertiesCCPositionTopCenter, "center", Consts.ResizePropertiesCCPositionBottomLeft, Consts.ResizePropertiesCCPositionBottomRight, Consts.ResizePropertiesCCPositionBottomCenter);
    private final zzqw zzIs;
    private final Activity zzLO;
    private String zzLZ;
    private boolean zzMa;
    private int zzMb;
    private int zzMc;
    private int zzMd;
    private int zzMe;
    private ImageView zzMf;
    private LinearLayout zzMg;
    private zzkx zzMh;
    private PopupWindow zzMi;
    private RelativeLayout zzMj;
    private ViewGroup zzMk;
    private int zzrC;
    private int zzrD;
    private final Object zzrJ;
    private zzeg zzus;

    public zzkr(zzqw zzqwVar, zzkx zzkxVar) {
        super(zzqwVar, "resize");
        this.zzLZ = Consts.ResizePropertiesCCPositionTopRight;
        this.zzMa = true;
        this.zzMb = 0;
        this.zzMc = 0;
        this.zzrD = -1;
        this.zzMd = 0;
        this.zzMe = 0;
        this.zzrC = -1;
        this.zzrJ = new Object();
        this.zzIs = zzqwVar;
        this.zzLO = zzqwVar.zzlr();
        this.zzMh = zzkxVar;
    }

    private int[] zzhl() {
        if (!zzhn()) {
            return null;
        }
        if (this.zzMa) {
            return new int[]{this.zzMb + this.zzMd, this.zzMc + this.zzMe};
        }
        int[] zzi = com.google.android.gms.ads.internal.zzw.zzcM().zzi(this.zzLO);
        int[] zzk = com.google.android.gms.ads.internal.zzw.zzcM().zzk(this.zzLO);
        int i = zzi[0];
        int i2 = this.zzMb + this.zzMd;
        int i3 = this.zzMc + this.zzMe;
        if (i2 < 0) {
            i2 = 0;
        } else if (this.zzrC + i2 > i) {
            i2 = i - this.zzrC;
        }
        if (i3 < zzk[0]) {
            i3 = zzk[0];
        } else if (this.zzrD + i3 > zzk[1]) {
            i3 = zzk[1] - this.zzrD;
        }
        return new int[]{i2, i3};
    }

    private void zzj(Map<String, String> map) {
        if (!TextUtils.isEmpty(map.get("width"))) {
            this.zzrC = com.google.android.gms.ads.internal.zzw.zzcM().zzaY(map.get("width"));
        }
        if (!TextUtils.isEmpty(map.get("height"))) {
            this.zzrD = com.google.android.gms.ads.internal.zzw.zzcM().zzaY(map.get("height"));
        }
        if (!TextUtils.isEmpty(map.get(Consts.ResizePropertiesOffsetX))) {
            this.zzMd = com.google.android.gms.ads.internal.zzw.zzcM().zzaY(map.get(Consts.ResizePropertiesOffsetX));
        }
        if (!TextUtils.isEmpty(map.get(Consts.ResizePropertiesOffsetY))) {
            this.zzMe = com.google.android.gms.ads.internal.zzw.zzcM().zzaY(map.get(Consts.ResizePropertiesOffsetY));
        }
        if (!TextUtils.isEmpty(map.get(Consts.ResizePropertiesAllowOffscreen))) {
            this.zzMa = Boolean.parseBoolean(map.get(Consts.ResizePropertiesAllowOffscreen));
        }
        String str = map.get(Consts.ResizePropertiesCustomClosePosition);
        if (!TextUtils.isEmpty(str)) {
            this.zzLZ = str;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void execute(Map<String, String> map) {
        char c;
        synchronized (this.zzrJ) {
            if (this.zzLO == null) {
                zzaz("Not an activity context. Cannot resize.");
            } else if (this.zzIs.zzbC() == null) {
                zzaz("Webview is not yet available, size is not set.");
            } else if (this.zzIs.zzbC().zzzz) {
                zzaz("Is interstitial. Cannot resize an interstitial.");
            } else if (this.zzIs.zzlz()) {
                zzaz("Cannot resize an expanded banner.");
            } else {
                zzj(map);
                if (!zzhk()) {
                    zzaz("Invalid width and height options. Cannot resize.");
                    return;
                }
                Window window = this.zzLO.getWindow();
                if (window == null || window.getDecorView() == null) {
                    zzaz("Activity context is not ready, cannot get window or decor view.");
                    return;
                }
                int[] zzhl = zzhl();
                if (zzhl == null) {
                    zzaz("Resize location out of screen or close button is not visible.");
                    return;
                }
                int zzb = zzel.zzeT().zzb(this.zzLO, this.zzrC);
                int zzb2 = zzel.zzeT().zzb(this.zzLO, this.zzrD);
                ViewParent parent = this.zzIs.getView().getParent();
                if (parent == null || !(parent instanceof ViewGroup)) {
                    zzaz("Webview is detached, probably in the middle of a resize or expand.");
                    return;
                }
                ((ViewGroup) parent).removeView(this.zzIs.getView());
                if (this.zzMi == null) {
                    this.zzMk = (ViewGroup) parent;
                    Bitmap zzp = com.google.android.gms.ads.internal.zzw.zzcM().zzp(this.zzIs.getView());
                    this.zzMf = new ImageView(this.zzLO);
                    this.zzMf.setImageBitmap(zzp);
                    this.zzus = this.zzIs.zzbC();
                    this.zzMk.addView(this.zzMf);
                } else {
                    this.zzMi.dismiss();
                }
                this.zzMj = new RelativeLayout(this.zzLO);
                this.zzMj.setBackgroundColor(0);
                this.zzMj.setLayoutParams(new ViewGroup.LayoutParams(zzb, zzb2));
                this.zzMi = com.google.android.gms.ads.internal.zzw.zzcM().zza((View) this.zzMj, zzb, zzb2, false);
                this.zzMi.setOutsideTouchable(true);
                this.zzMi.setTouchable(true);
                this.zzMi.setClippingEnabled(!this.zzMa);
                this.zzMj.addView(this.zzIs.getView(), -1, -1);
                this.zzMg = new LinearLayout(this.zzLO);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(zzel.zzeT().zzb(this.zzLO, 50), zzel.zzeT().zzb(this.zzLO, 50));
                String str = this.zzLZ;
                switch (str.hashCode()) {
                    case -1364013995:
                        if (str.equals("center")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1012429441:
                        if (str.equals(Consts.ResizePropertiesCCPositionTopLeft)) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -655373719:
                        if (str.equals(Consts.ResizePropertiesCCPositionBottomLeft)) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1163912186:
                        if (str.equals(Consts.ResizePropertiesCCPositionBottomRight)) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1288627767:
                        if (str.equals(Consts.ResizePropertiesCCPositionBottomCenter)) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1755462605:
                        if (str.equals(Consts.ResizePropertiesCCPositionTopCenter)) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        layoutParams.addRule(10);
                        layoutParams.addRule(9);
                        break;
                    case 1:
                        layoutParams.addRule(10);
                        layoutParams.addRule(14);
                        break;
                    case 2:
                        layoutParams.addRule(13);
                        break;
                    case 3:
                        layoutParams.addRule(12);
                        layoutParams.addRule(9);
                        break;
                    case 4:
                        layoutParams.addRule(12);
                        layoutParams.addRule(14);
                        break;
                    case 5:
                        layoutParams.addRule(12);
                        layoutParams.addRule(11);
                        break;
                    default:
                        layoutParams.addRule(10);
                        layoutParams.addRule(11);
                        break;
                }
                this.zzMg.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.zzkr.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        zzkr.this.zzs(true);
                    }
                });
                this.zzMg.setContentDescription("Close button");
                this.zzMj.addView(this.zzMg, layoutParams);
                try {
                    this.zzMi.showAtLocation(window.getDecorView(), 0, zzel.zzeT().zzb(this.zzLO, zzhl[0]), zzel.zzeT().zzb(this.zzLO, zzhl[1]));
                    zzc(zzhl[0], zzhl[1]);
                    this.zzIs.zza(new zzeg(this.zzLO, new AdSize(this.zzrC, this.zzrD)));
                    zzd(zzhl[0], zzhl[1]);
                    zzaB("resized");
                } catch (RuntimeException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzaz(valueOf.length() != 0 ? "Cannot show popup window: ".concat(valueOf) : new String("Cannot show popup window: "));
                    this.zzMj.removeView(this.zzIs.getView());
                    if (this.zzMk != null) {
                        this.zzMk.removeView(this.zzMf);
                        this.zzMk.addView(this.zzIs.getView());
                        this.zzIs.zza(this.zzus);
                    }
                }
            }
        }
    }

    public void zza(int i, int i2, boolean z) {
        synchronized (this.zzrJ) {
            this.zzMb = i;
            this.zzMc = i2;
            if (this.zzMi != null && z) {
                int[] zzhl = zzhl();
                if (zzhl != null) {
                    this.zzMi.update(zzel.zzeT().zzb(this.zzLO, zzhl[0]), zzel.zzeT().zzb(this.zzLO, zzhl[1]), this.zzMi.getWidth(), this.zzMi.getHeight());
                    zzd(zzhl[0], zzhl[1]);
                } else {
                    zzs(true);
                }
            }
        }
    }

    void zzc(int i, int i2) {
        if (this.zzMh != null) {
            this.zzMh.zza(i, i2, this.zzrC, this.zzrD);
        }
    }

    void zzd(int i, int i2) {
        zzb(i, i2 - com.google.android.gms.ads.internal.zzw.zzcM().zzk(this.zzLO)[0], this.zzrC, this.zzrD);
    }

    public void zze(int i, int i2) {
        this.zzMb = i;
        this.zzMc = i2;
    }

    boolean zzhk() {
        return this.zzrC > -1 && this.zzrD > -1;
    }

    public boolean zzhm() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzMi != null;
        }
        return z;
    }

    boolean zzhn() {
        int i;
        int i2;
        int[] zzi = com.google.android.gms.ads.internal.zzw.zzcM().zzi(this.zzLO);
        int[] zzk = com.google.android.gms.ads.internal.zzw.zzcM().zzk(this.zzLO);
        int i3 = zzi[0];
        int i4 = zzi[1];
        if (this.zzrC < 50 || this.zzrC > i3) {
            zzpk.zzbh("Width is too small or too large.");
            return false;
        } else if (this.zzrD < 50 || this.zzrD > i4) {
            zzpk.zzbh("Height is too small or too large.");
            return false;
        } else if (this.zzrD == i4 && this.zzrC == i3) {
            zzpk.zzbh("Cannot resize to a full-screen ad.");
            return false;
        } else {
            if (this.zzMa) {
                String str = this.zzLZ;
                char c = 65535;
                switch (str.hashCode()) {
                    case -1364013995:
                        if (str.equals("center")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1012429441:
                        if (str.equals(Consts.ResizePropertiesCCPositionTopLeft)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -655373719:
                        if (str.equals(Consts.ResizePropertiesCCPositionBottomLeft)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1163912186:
                        if (str.equals(Consts.ResizePropertiesCCPositionBottomRight)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1288627767:
                        if (str.equals(Consts.ResizePropertiesCCPositionBottomCenter)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1755462605:
                        if (str.equals(Consts.ResizePropertiesCCPositionTopCenter)) {
                            c = 1;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        i = this.zzMd + this.zzMb;
                        i2 = this.zzMc + this.zzMe;
                        break;
                    case 1:
                        i = ((this.zzMb + this.zzMd) + (this.zzrC / 2)) - 25;
                        i2 = this.zzMc + this.zzMe;
                        break;
                    case 2:
                        i = ((this.zzMb + this.zzMd) + (this.zzrC / 2)) - 25;
                        i2 = ((this.zzMc + this.zzMe) + (this.zzrD / 2)) - 25;
                        break;
                    case 3:
                        i = this.zzMd + this.zzMb;
                        i2 = ((this.zzMc + this.zzMe) + this.zzrD) - 50;
                        break;
                    case 4:
                        i = ((this.zzMb + this.zzMd) + (this.zzrC / 2)) - 25;
                        i2 = ((this.zzMc + this.zzMe) + this.zzrD) - 50;
                        break;
                    case 5:
                        i = ((this.zzMb + this.zzMd) + this.zzrC) - 50;
                        i2 = ((this.zzMc + this.zzMe) + this.zzrD) - 50;
                        break;
                    default:
                        i = ((this.zzMb + this.zzMd) + this.zzrC) - 50;
                        i2 = this.zzMc + this.zzMe;
                        break;
                }
                if (i < 0 || i + 50 > i3 || i2 < zzk[0] || i2 + 50 > zzk[1]) {
                    return false;
                }
            }
            return true;
        }
    }

    public void zzs(boolean z) {
        synchronized (this.zzrJ) {
            if (this.zzMi != null) {
                this.zzMi.dismiss();
                this.zzMj.removeView(this.zzIs.getView());
                if (this.zzMk != null) {
                    this.zzMk.removeView(this.zzMf);
                    this.zzMk.addView(this.zzIs.getView());
                    this.zzIs.zza(this.zzus);
                }
                if (z) {
                    zzaB("default");
                    if (this.zzMh != null) {
                        this.zzMh.zzcb();
                    }
                }
                this.zzMi = null;
                this.zzMj = null;
                this.zzMk = null;
                this.zzMg = null;
            }
        }
    }
}
