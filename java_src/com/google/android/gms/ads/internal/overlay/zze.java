package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpj;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import com.google.android.gms.vision.barcode.Barcode;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Collections;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zze extends zzkz.zza implements zzv {
    static final int zzNf = Color.argb(0, 0, 0, 0);
    private final Activity mActivity;
    zzqw zzIs;
    AdOverlayInfoParcel zzNg;
    zzc zzNh;
    zzp zzNi;
    FrameLayout zzNk;
    WebChromeClient.CustomViewCallback zzNl;
    zzb zzNo;
    private Runnable zzNt;
    private boolean zzNu;
    private boolean zzNv;
    boolean zzNj = false;
    boolean zzNm = false;
    boolean zzNn = false;
    boolean zzNp = false;
    int zzNq = 0;
    private final Object zzNs = new Object();
    private boolean zzNw = false;
    private boolean zzNx = false;
    private boolean zzNy = true;
    zzm zzNr = new zzt();

    /* JADX INFO: Access modifiers changed from: private */
    @zzme
    /* loaded from: classes.dex */
    public static final class zza extends Exception {
        public zza(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @zzme
    /* loaded from: classes.dex */
    public static class zzb extends RelativeLayout {
        boolean zzNA;
        zzpr zzvX;

        public zzb(Context context, String str, String str2) {
            super(context);
            this.zzvX = new zzpr(context, str);
            this.zzvX.zzba(str2);
        }

        void disable() {
            this.zzNA = true;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (!this.zzNA) {
                this.zzvX.zzg(motionEvent);
                return false;
            }
            return false;
        }
    }

    @zzme
    /* loaded from: classes.dex */
    public static class zzc {
        public final int index;
        public final ViewGroup parent;
        public final ViewGroup.LayoutParams zzNB;
        public final Context zzqn;

        public zzc(zzqw zzqwVar) throws zza {
            this.zzNB = zzqwVar.getLayoutParams();
            ViewParent parent = zzqwVar.getParent();
            this.zzqn = zzqwVar.zzls();
            if (parent == null || !(parent instanceof ViewGroup)) {
                throw new zza("Could not get the parent of the WebView for an overlay.");
            }
            this.parent = (ViewGroup) parent;
            this.index = this.parent.indexOfChild(zzqwVar.getView());
            this.parent.removeView(zzqwVar.getView());
            zzqwVar.zzK(true);
        }
    }

    @zzme
    /* loaded from: classes.dex */
    private class zzd extends zzpj {
        private zzd() {
        }

        @Override // com.google.android.gms.internal.zzpj
        public void onStop() {
        }

        @Override // com.google.android.gms.internal.zzpj
        public void zzco() {
            Bitmap zza = com.google.android.gms.ads.internal.zzw.zzdh().zza(Integer.valueOf(zze.this.zzNg.zzNQ.zztP));
            if (zza != null) {
                final Drawable zza2 = com.google.android.gms.ads.internal.zzw.zzcO().zza(zze.this.mActivity, zza, zze.this.zzNg.zzNQ.zztN, zze.this.zzNg.zzNQ.zztO);
                zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zze.zzd.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zze.this.mActivity.getWindow().setBackgroundDrawable(zza2);
                    }
                });
            }
        }
    }

    public zze(Activity activity) {
        this.mActivity = activity;
    }

    public void close() {
        this.zzNq = 2;
        this.mActivity.finish();
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onBackPressed() {
        this.zzNq = 0;
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onCreate(Bundle bundle) {
        boolean z = false;
        this.mActivity.requestWindowFeature(1);
        if (bundle != null) {
            z = bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        }
        this.zzNm = z;
        try {
            this.zzNg = AdOverlayInfoParcel.zzb(this.mActivity.getIntent());
            if (this.zzNg == null) {
                throw new zza("Could not get info for ad overlay.");
            }
            if (this.zzNg.zzvn.zzYX > 7500000) {
                this.zzNq = 3;
            }
            if (this.mActivity.getIntent() != null) {
                this.zzNy = this.mActivity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            if (this.zzNg.zzNQ != null) {
                this.zzNn = this.zzNg.zzNQ.zztK;
            } else {
                this.zzNn = false;
            }
            if (zzgd.zzEa.get().booleanValue() && this.zzNn && this.zzNg.zzNQ.zztP != -1) {
                new zzd().zziP();
            }
            if (bundle == null) {
                if (this.zzNg.zzNG != null && this.zzNy) {
                    this.zzNg.zzNG.zzbO();
                }
                if (this.zzNg.zzNN != 1 && this.zzNg.zzNF != null) {
                    this.zzNg.zzNF.onAdClicked();
                }
            }
            this.zzNo = new zzb(this.mActivity, this.zzNg.zzNP, this.zzNg.zzvn.zzba);
            this.zzNo.setId(1000);
            switch (this.zzNg.zzNN) {
                case 1:
                    zzA(false);
                    return;
                case 2:
                    this.zzNh = new zzc(this.zzNg.zzNH);
                    zzA(false);
                    return;
                case 3:
                    zzA(true);
                    return;
                case 4:
                    if (this.zzNm) {
                        this.zzNq = 3;
                        this.mActivity.finish();
                        return;
                    } else if (com.google.android.gms.ads.internal.zzw.zzcJ().zza(this.mActivity, this.zzNg.zzNE, this.zzNg.zzNM)) {
                        return;
                    } else {
                        this.zzNq = 3;
                        this.mActivity.finish();
                        return;
                    }
                default:
                    throw new zza("Could not determine ad overlay type.");
            }
        } catch (zza e) {
            zzpk.zzbh(e.getMessage());
            this.zzNq = 3;
            this.mActivity.finish();
        }
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onDestroy() {
        if (this.zzIs != null) {
            this.zzNo.removeView(this.zzIs.getView());
        }
        zzhH();
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onPause() {
        zzhD();
        if (this.zzNg.zzNG != null) {
            this.zzNg.zzNG.onPause();
        }
        if (!zzgd.zzFu.get().booleanValue() && this.zzIs != null && (!this.mActivity.isFinishing() || this.zzNh == null)) {
            com.google.android.gms.ads.internal.zzw.zzcO().zzl(this.zzIs);
        }
        zzhH();
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onRestart() {
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onResume() {
        if (this.zzNg != null && this.zzNg.zzNN == 4) {
            if (this.zzNm) {
                this.zzNq = 3;
                this.mActivity.finish();
            } else {
                this.zzNm = true;
            }
        }
        if (this.zzNg.zzNG != null) {
            this.zzNg.zzNG.onResume();
        }
        if (!zzgd.zzFu.get().booleanValue()) {
            if (this.zzIs == null || this.zzIs.isDestroyed()) {
                zzpk.zzbh("The webview does not exist. Ignoring action.");
            } else {
                com.google.android.gms.ads.internal.zzw.zzcO().zzm(this.zzIs);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzNm);
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onStart() {
        if (zzgd.zzFu.get().booleanValue()) {
            if (this.zzIs == null || this.zzIs.isDestroyed()) {
                zzpk.zzbh("The webview does not exist. Ignoring action.");
            } else {
                com.google.android.gms.ads.internal.zzw.zzcO().zzm(this.zzIs);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkz
    public void onStop() {
        if (zzgd.zzFu.get().booleanValue() && this.zzIs != null && (!this.mActivity.isFinishing() || this.zzNh == null)) {
            com.google.android.gms.ads.internal.zzw.zzcO().zzl(this.zzIs);
        }
        zzhH();
    }

    public void setRequestedOrientation(int i) {
        this.mActivity.setRequestedOrientation(i);
    }

    protected void zzA(boolean z) throws zza {
        if (!this.zzNv) {
            this.mActivity.requestWindowFeature(1);
        }
        Window window = this.mActivity.getWindow();
        if (window == null) {
            throw new zza("Invalid activity, no window available.");
        }
        boolean zza2 = (!com.google.android.gms.common.util.zzt.isAtLeastN() || !zzgd.zzFt.get().booleanValue()) ? true : com.google.android.gms.ads.internal.zzw.zzcM().zza(this.mActivity, this.mActivity.getResources().getConfiguration());
        boolean z2 = this.zzNg.zzNQ != null && this.zzNg.zzNQ.zztL;
        if ((!this.zzNn || z2) && zza2) {
            window.setFlags(1024, 1024);
        }
        zzqx zzlv = this.zzNg.zzNH.zzlv();
        boolean zzdD = zzlv != null ? zzlv.zzdD() : false;
        this.zzNp = false;
        if (zzdD) {
            if (this.zzNg.orientation == com.google.android.gms.ads.internal.zzw.zzcO().zzkQ()) {
                this.zzNp = this.mActivity.getResources().getConfiguration().orientation == 1;
            } else if (this.zzNg.orientation == com.google.android.gms.ads.internal.zzw.zzcO().zzkR()) {
                this.zzNp = this.mActivity.getResources().getConfiguration().orientation == 2;
            }
        }
        zzpk.zzbf(new StringBuilder(46).append("Delay onShow to next orientation change: ").append(this.zzNp).toString());
        setRequestedOrientation(this.zzNg.orientation);
        if (com.google.android.gms.ads.internal.zzw.zzcO().zza(window)) {
            zzpk.zzbf("Hardware acceleration on the AdActivity window enabled.");
        }
        if (!this.zzNn) {
            this.zzNo.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        } else {
            this.zzNo.setBackgroundColor(zzNf);
        }
        this.mActivity.setContentView(this.zzNo);
        zzbo();
        if (z) {
            this.zzIs = com.google.android.gms.ads.internal.zzw.zzcN().zza(this.mActivity, this.zzNg.zzNH.zzbC(), true, zzdD, null, this.zzNg.zzvn, null, null, this.zzNg.zzNH.zzby());
            this.zzIs.zzlv().zza(null, null, this.zzNg.zzNI, this.zzNg.zzNM, true, this.zzNg.zzNO, null, this.zzNg.zzNH.zzlv().zzlN(), null, null);
            this.zzIs.zzlv().zza(new zzqx.zza(this) { // from class: com.google.android.gms.ads.internal.overlay.zze.1
                @Override // com.google.android.gms.internal.zzqx.zza
                public void zza(zzqw zzqwVar, boolean z3) {
                    zzqwVar.zzhK();
                }
            });
            if (this.zzNg.url != null) {
                this.zzIs.loadUrl(this.zzNg.url);
            } else if (this.zzNg.zzNL == null) {
                throw new zza("No URL or HTML to display in ad overlay.");
            } else {
                this.zzIs.loadDataWithBaseURL(this.zzNg.zzNJ, this.zzNg.zzNL, "text/html", "UTF-8", null);
            }
            if (this.zzNg.zzNH != null) {
                this.zzNg.zzNH.zzc(this);
            }
        } else {
            this.zzIs = this.zzNg.zzNH;
            this.zzIs.setContext(this.mActivity);
        }
        this.zzIs.zzb(this);
        ViewParent parent = this.zzIs.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(this.zzIs.getView());
        }
        if (this.zzNn) {
            this.zzIs.zzlM();
        }
        this.zzNo.addView(this.zzIs.getView(), -1, -1);
        if (!z && !this.zzNp) {
            zzhK();
        }
        zzz(zzdD);
        if (this.zzIs.zzlw()) {
            zza(zzdD, true);
        }
        com.google.android.gms.ads.internal.zze zzby = this.zzIs.zzby();
        zzn zznVar = zzby != null ? zzby.zzsO : null;
        if (zznVar != null) {
            this.zzNr = zznVar.zza(this.mActivity, this.zzIs, this.zzNo);
        } else {
            zzpk.zzbh("Appstreaming controller is null.");
        }
    }

    protected void zzM(int i) {
        this.zzIs.zzM(i);
    }

    public void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        this.zzNk = new FrameLayout(this.mActivity);
        this.zzNk.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.zzNk.addView(view, -1, -1);
        this.mActivity.setContentView(this.zzNk);
        zzbo();
        this.zzNl = customViewCallback;
        this.zzNj = true;
    }

    public void zza(boolean z, boolean z2) {
        if (this.zzNi != null) {
            this.zzNi.zza(z, z2);
        }
    }

    @Override // com.google.android.gms.internal.zzkz
    public void zzbo() {
        this.zzNv = true;
    }

    public void zzg(zzqw zzqwVar, Map<String, String> map) {
    }

    public void zzhD() {
        if (this.zzNg != null && this.zzNj) {
            setRequestedOrientation(this.zzNg.orientation);
        }
        if (this.zzNk != null) {
            this.mActivity.setContentView(this.zzNo);
            zzbo();
            this.zzNk.removeAllViews();
            this.zzNk = null;
        }
        if (this.zzNl != null) {
            this.zzNl.onCustomViewHidden();
            this.zzNl = null;
        }
        this.zzNj = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public void zzhE() {
        this.zzNq = 1;
        this.mActivity.finish();
    }

    @Override // com.google.android.gms.internal.zzkz
    public boolean zzhF() {
        boolean z = true;
        this.zzNq = 0;
        if (this.zzIs != null) {
            if (!this.zzIs.zzlB()) {
                z = false;
            }
            if (!z) {
                this.zzIs.zza("onbackblocked", Collections.emptyMap());
            }
        }
        return z;
    }

    public void zzhG() {
        this.zzNo.removeView(this.zzNi);
        zzz(true);
    }

    protected void zzhH() {
        if (!this.mActivity.isFinishing() || this.zzNw) {
            return;
        }
        this.zzNw = true;
        if (this.zzIs != null) {
            zzM(this.zzNq);
            synchronized (this.zzNs) {
                if (!this.zzNu && this.zzIs.zzlH()) {
                    this.zzNt = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zze.2
                        @Override // java.lang.Runnable
                        public void run() {
                            zze.this.zzhI();
                        }
                    };
                    zzpo.zzXC.postDelayed(this.zzNt, zzgd.zzCY.get().longValue());
                    return;
                }
            }
        }
        zzhI();
    }

    void zzhI() {
        if (this.zzNx) {
            return;
        }
        this.zzNx = true;
        if (this.zzIs != null) {
            this.zzNo.removeView(this.zzIs.getView());
            if (this.zzNh != null) {
                this.zzIs.setContext(this.zzNh.zzqn);
                this.zzIs.zzK(false);
                this.zzNh.parent.addView(this.zzIs.getView(), this.zzNh.index, this.zzNh.zzNB);
                this.zzNh = null;
            } else if (this.mActivity.getApplicationContext() != null) {
                this.zzIs.setContext(this.mActivity.getApplicationContext());
            }
            this.zzIs = null;
        }
        if (this.zzNg == null || this.zzNg.zzNG == null) {
            return;
        }
        this.zzNg.zzNG.zzbN();
    }

    public void zzhJ() {
        if (this.zzNp) {
            this.zzNp = false;
            zzhK();
        }
    }

    protected void zzhK() {
        this.zzIs.zzhK();
    }

    public void zzhL() {
        this.zzNo.disable();
    }

    public void zzhM() {
        synchronized (this.zzNs) {
            this.zzNu = true;
            if (this.zzNt != null) {
                zzpo.zzXC.removeCallbacks(this.zzNt);
                zzpo.zzXC.post(this.zzNt);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzkz
    public void zzo(IObjectWrapper iObjectWrapper) {
        if (!zzgd.zzFt.get().booleanValue() || !com.google.android.gms.common.util.zzt.isAtLeastN()) {
            return;
        }
        if (com.google.android.gms.ads.internal.zzw.zzcM().zza(this.mActivity, (Configuration) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper))) {
            this.mActivity.getWindow().addFlags(1024);
            this.mActivity.getWindow().clearFlags(Barcode.PDF417);
            return;
        }
        this.mActivity.getWindow().addFlags(Barcode.PDF417);
        this.mActivity.getWindow().clearFlags(1024);
    }

    public void zzz(boolean z) {
        int intValue = zzgd.zzFv.get().intValue();
        zzp.zza zzaVar = new zzp.zza();
        zzaVar.size = 50;
        zzaVar.paddingLeft = z ? intValue : 0;
        zzaVar.paddingRight = z ? 0 : intValue;
        zzaVar.paddingTop = 0;
        zzaVar.paddingBottom = intValue;
        this.zzNi = new zzp(this.mActivity, zzaVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        this.zzNi.zza(z, this.zzNg.zzNK);
        this.zzNo.addView(this.zzNi, layoutParams);
    }
}
