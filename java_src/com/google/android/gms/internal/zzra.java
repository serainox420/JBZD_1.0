package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.openx.view.mraid.JSInterface;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
@zzme
/* loaded from: classes.dex */
public class zzra extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzqw {
    private final zzaw zzGP;
    private int zzMB;
    private int zzMC;
    private int zzMy;
    private int zzMz;
    private String zzOV;
    private zzgj zzOW;
    private Boolean zzWO;
    private final zza zzZZ;
    private final com.google.android.gms.ads.internal.zzu zzaaa;
    private zzqx zzaab;
    private com.google.android.gms.ads.internal.overlay.zze zzaac;
    private boolean zzaad;
    private boolean zzaae;
    private boolean zzaaf;
    private boolean zzaag;
    private int zzaah;
    private boolean zzaai;
    boolean zzaaj;
    private zzrb zzaak;
    private boolean zzaal;
    private boolean zzaam;
    private zzgy zzaan;
    private int zzaao;
    private int zzaap;
    private zzgj zzaaq;
    private zzgj zzaar;
    private zzgk zzaas;
    private WeakReference<View.OnClickListener> zzaat;
    private com.google.android.gms.ads.internal.overlay.zze zzaau;
    private boolean zzaav;
    private Map<String, zzis> zzaaw;
    private final Object zzrJ;
    private final com.google.android.gms.ads.internal.zze zzsv;
    private final zzqh zztt;
    private zzeg zzus;
    private zzqd zzvY;
    private final WindowManager zzwo;

    @zzme
    /* loaded from: classes.dex */
    public static class zza extends MutableContextWrapper {
        private Activity zzYJ;
        private Context zzaay;
        private Context zzwi;

        public zza(Context context) {
            super(context);
            setBaseContext(context);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            return this.zzaay.getSystemService(str);
        }

        @Override // android.content.MutableContextWrapper
        public void setBaseContext(Context context) {
            this.zzwi = context.getApplicationContext();
            this.zzYJ = context instanceof Activity ? (Activity) context : null;
            this.zzaay = context;
            super.setBaseContext(this.zzwi);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public void startActivity(Intent intent) {
            if (this.zzYJ != null) {
                this.zzYJ.startActivity(intent);
                return;
            }
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            this.zzwi.startActivity(intent);
        }

        public Activity zzlr() {
            return this.zzYJ;
        }

        public Context zzls() {
            return this.zzaay;
        }
    }

    protected zzra(zza zzaVar, zzeg zzegVar, boolean z, boolean z2, zzaw zzawVar, zzqh zzqhVar, zzgl zzglVar, com.google.android.gms.ads.internal.zzu zzuVar, com.google.android.gms.ads.internal.zze zzeVar) {
        super(zzaVar);
        this.zzrJ = new Object();
        this.zzaai = true;
        this.zzaaj = false;
        this.zzOV = "";
        this.zzMz = -1;
        this.zzMy = -1;
        this.zzMB = -1;
        this.zzMC = -1;
        this.zzZZ = zzaVar;
        this.zzus = zzegVar;
        this.zzaaf = z;
        this.zzaah = -1;
        this.zzGP = zzawVar;
        this.zztt = zzqhVar;
        this.zzaaa = zzuVar;
        this.zzsv = zzeVar;
        this.zzwo = (WindowManager) getContext().getSystemService("window");
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        com.google.android.gms.ads.internal.zzw.zzcM().zza(zzaVar, zzqhVar.zzba, settings);
        com.google.android.gms.ads.internal.zzw.zzcO().zza(getContext(), settings);
        setDownloadListener(this);
        zzmg();
        if (com.google.android.gms.common.util.zzt.zzzj()) {
            addJavascriptInterface(new zzrc(this), "googleAdsJsInterface");
        }
        com.google.android.gms.common.util.zzt.zzze();
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.zzvY = new zzqd(this.zzZZ.zzlr(), this, this, null);
        zzd(zzglVar);
        com.google.android.gms.ads.internal.zzw.zzcO().zzW(zzaVar);
    }

    private void zzP(boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("isVisible", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        zza("onAdVisibilityChanged", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzra zzb(Context context, zzeg zzegVar, boolean z, boolean z2, zzaw zzawVar, zzqh zzqhVar, zzgl zzglVar, com.google.android.gms.ads.internal.zzu zzuVar, com.google.android.gms.ads.internal.zze zzeVar) {
        return new zzra(new zza(context), zzegVar, z, z2, zzawVar, zzqhVar, zzglVar, zzuVar, zzeVar);
    }

    private void zzd(zzgl zzglVar) {
        zzmk();
        this.zzaas = new zzgk(new zzgl(true, "make_wv", this.zzus.zzzy));
        this.zzaas.zzfA().zzc(zzglVar);
        this.zzOW = zzgh.zzb(this.zzaas.zzfA());
        this.zzaas.zza("native:view_create", this.zzOW);
        this.zzaar = null;
        this.zzaaq = null;
    }

    private void zzkC() {
        synchronized (this.zzrJ) {
            if (!this.zzaav) {
                this.zzaav = true;
                com.google.android.gms.ads.internal.zzw.zzcQ().zzkC();
            }
        }
    }

    private void zzmc() {
        synchronized (this.zzrJ) {
            this.zzWO = com.google.android.gms.ads.internal.zzw.zzcQ().zzkq();
            if (this.zzWO == null) {
                try {
                    evaluateJavascript("(function(){})()", null);
                    zza((Boolean) true);
                } catch (IllegalStateException e) {
                    zza((Boolean) false);
                }
            }
        }
    }

    private void zzmd() {
        zzgh.zza(this.zzaas.zzfA(), this.zzOW, "aeh2");
    }

    private void zzme() {
        zzgh.zza(this.zzaas.zzfA(), this.zzOW, "aebb2");
    }

    private void zzmg() {
        synchronized (this.zzrJ) {
            if (this.zzaaf || this.zzus.zzzz) {
                int i = Build.VERSION.SDK_INT;
                zzpk.zzbf("Enabling hardware acceleration on an overlay.");
                zzmi();
            } else if (Build.VERSION.SDK_INT < 18) {
                zzpk.zzbf("Disabling hardware acceleration on an AdView.");
                zzmh();
            } else {
                zzpk.zzbf("Enabling hardware acceleration on an AdView.");
                zzmi();
            }
        }
    }

    private void zzmh() {
        synchronized (this.zzrJ) {
            if (!this.zzaag) {
                com.google.android.gms.ads.internal.zzw.zzcO().zzu(this);
            }
            this.zzaag = true;
        }
    }

    private void zzmi() {
        synchronized (this.zzrJ) {
            if (this.zzaag) {
                com.google.android.gms.ads.internal.zzw.zzcO().zzt(this);
            }
            this.zzaag = false;
        }
    }

    private void zzmj() {
        synchronized (this.zzrJ) {
            this.zzaaw = null;
        }
    }

    private void zzmk() {
        zzgl zzfA;
        if (this.zzaas == null || (zzfA = this.zzaas.zzfA()) == null || com.google.android.gms.ads.internal.zzw.zzcQ().zzkk() == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzw.zzcQ().zzkk().zza(zzfA);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void destroy() {
        synchronized (this.zzrJ) {
            zzmk();
            this.zzvY.zzlf();
            if (this.zzaac != null) {
                this.zzaac.close();
                this.zzaac.onDestroy();
                this.zzaac = null;
            }
            this.zzaab.reset();
            if (this.zzaae) {
                return;
            }
            com.google.android.gms.ads.internal.zzw.zzdj().zze(this);
            zzmj();
            this.zzaae = true;
            zzpk.v("Initiating WebView self destruct sequence in 3...");
            this.zzaab.zzlS();
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this.zzrJ) {
            if (!isDestroyed()) {
                super.evaluateJavascript(str, valueCallback);
                return;
            }
            zzpk.zzbh("The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this.zzrJ) {
                if (!this.zzaae) {
                    this.zzaab.reset();
                    com.google.android.gms.ads.internal.zzw.zzdj().zze(this);
                    zzmj();
                    zzkC();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public String getRequestId() {
        String str;
        synchronized (this.zzrJ) {
            str = this.zzOV;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.zzqw
    public int getRequestedOrientation() {
        int i;
        synchronized (this.zzrJ) {
            i = this.zzaah;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.zzqw
    public View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzqw
    public WebView getWebView() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean isDestroyed() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaae;
        }
        return z;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void loadData(String str, String str2, String str3) {
        synchronized (this.zzrJ) {
            if (!isDestroyed()) {
                super.loadData(str, str2, str3);
            } else {
                zzpk.zzbh("The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this.zzrJ) {
            if (!isDestroyed()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzpk.zzbh("The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void loadUrl(String str) {
        synchronized (this.zzrJ) {
            if (!isDestroyed()) {
                super.loadUrl(str);
            } else {
                zzpk.zzbh("The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        boolean z = true;
        synchronized (this.zzrJ) {
            super.onAttachedToWindow();
            if (!isDestroyed()) {
                this.zzvY.onAttachedToWindow();
            }
            boolean z2 = this.zzaal;
            if (zzlv() == null || !zzlv().zzlO()) {
                z = z2;
            } else if (!this.zzaam) {
                ViewTreeObserver.OnGlobalLayoutListener zzlP = zzlv().zzlP();
                if (zzlP != null) {
                    com.google.android.gms.ads.internal.zzw.zzdk().zza(getView(), zzlP);
                }
                ViewTreeObserver.OnScrollChangedListener zzlQ = zzlv().zzlQ();
                if (zzlQ != null) {
                    com.google.android.gms.ads.internal.zzw.zzdk().zza(getView(), zzlQ);
                }
                this.zzaam = true;
            }
            zzP(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        synchronized (this.zzrJ) {
            if (!isDestroyed()) {
                this.zzvY.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.zzaam && zzlv() != null && zzlv().zzlO() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                ViewTreeObserver.OnGlobalLayoutListener zzlP = zzlv().zzlP();
                if (zzlP != null) {
                    com.google.android.gms.ads.internal.zzw.zzcO().zza(getViewTreeObserver(), zzlP);
                }
                ViewTreeObserver.OnScrollChangedListener zzlQ = zzlv().zzlQ();
                if (zzlQ != null) {
                    getViewTreeObserver().removeOnScrollChangedListener(zzlQ);
                }
                this.zzaam = false;
            }
        }
        zzP(false);
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.zzw.zzcM().zzb(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            zzpk.zzbf(new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length()).append("Couldn't find an Activity to view url/mimetype: ").append(str).append(" / ").append(str4).toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected void onDraw(Canvas canvas) {
        if (isDestroyed()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
        if (zzlv() == null || zzlv().zzlZ() == null) {
            return;
        }
        zzlv().zzlZ().zzce();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (zzgd.zzCK.get().booleanValue()) {
            float axisValue = motionEvent.getAxisValue(9);
            float axisValue2 = motionEvent.getAxisValue(10);
            if ((motionEvent.getActionMasked() == 8) && ((axisValue > BitmapDescriptorFactory.HUE_RED && !canScrollVertically(-1)) || ((axisValue < BitmapDescriptorFactory.HUE_RED && !canScrollVertically(1)) || ((axisValue2 > BitmapDescriptorFactory.HUE_RED && !canScrollHorizontally(-1)) || (axisValue2 < BitmapDescriptorFactory.HUE_RED && !canScrollHorizontally(1)))))) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        boolean zzmb = zzmb();
        com.google.android.gms.ads.internal.overlay.zze zzlt = zzlt();
        if (zzlt == null || !zzmb) {
            return;
        }
        zzlt.zzhJ();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onMeasure(int i, int i2) {
        int size;
        int i3 = Integer.MAX_VALUE;
        synchronized (this.zzrJ) {
            if (isDestroyed()) {
                setMeasuredDimension(0, 0);
            } else if (isInEditMode() || this.zzaaf || this.zzus.zzzB) {
                super.onMeasure(i, i2);
            } else if (this.zzus.zzzC) {
                if (zzgd.zzEy.get().booleanValue() || !com.google.android.gms.common.util.zzt.zzzj()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zza("/contentHeight", zzmf());
                zzbm("(function() {  var height = -1;  if (document.body) { height = document.body.offsetHeight;}  else if (document.documentElement) {      height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  window.googleAdsJsInterface.notify(url);  })();");
                float f = this.zzZZ.getResources().getDisplayMetrics().density;
                int size2 = View.MeasureSpec.getSize(i);
                switch (this.zzaap) {
                    case -1:
                        size = View.MeasureSpec.getSize(i2);
                        break;
                    default:
                        size = (int) (f * this.zzaap);
                        break;
                }
                setMeasuredDimension(size2, size);
            } else if (this.zzus.zzzz) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                this.zzwo.getDefaultDisplay().getMetrics(displayMetrics);
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
            } else {
                int mode = View.MeasureSpec.getMode(i);
                int size3 = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                int size4 = View.MeasureSpec.getSize(i2);
                int i4 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size3 : Integer.MAX_VALUE;
                if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                    i3 = size4;
                }
                if (this.zzus.widthPixels > i4 || this.zzus.heightPixels > i3) {
                    float f2 = this.zzZZ.getResources().getDisplayMetrics().density;
                    zzpk.zzbh(new StringBuilder(103).append("Not enough space to show ad. Needs ").append((int) (this.zzus.widthPixels / f2)).append(JSInterface.JSON_X).append((int) (this.zzus.heightPixels / f2)).append(" dp, but only has ").append((int) (size3 / f2)).append(JSInterface.JSON_X).append((int) (size4 / f2)).append(" dp.").toString());
                    if (getVisibility() != 8) {
                        setVisibility(4);
                    }
                    setMeasuredDimension(0, 0);
                } else {
                    if (getVisibility() != 8) {
                        setVisibility(0);
                    }
                    setMeasuredDimension(this.zzus.widthPixels, this.zzus.heightPixels);
                }
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void onPause() {
        if (isDestroyed()) {
            return;
        }
        try {
            com.google.android.gms.common.util.zzt.zzze();
            super.onPause();
        } catch (Exception e) {
            zzpk.zzb("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void onResume() {
        if (isDestroyed()) {
            return;
        }
        try {
            com.google.android.gms.common.util.zzt.zzze();
            super.onResume();
        } catch (Exception e) {
            zzpk.zzb("Could not resume webview.", e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (zzlv().zzlO()) {
            synchronized (this.zzrJ) {
                if (this.zzaan != null) {
                    this.zzaan.zzc(motionEvent);
                }
            }
        } else if (this.zzGP != null) {
            this.zzGP.zza(motionEvent);
        }
        if (isDestroyed()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void setContext(Context context) {
        this.zzZZ.setBaseContext(context);
        this.zzvY.zzl(this.zzZZ.zzlr());
    }

    @Override // android.view.View, com.google.android.gms.internal.zzqw
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzaat = new WeakReference<>(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void setRequestedOrientation(int i) {
        synchronized (this.zzrJ) {
            this.zzaah = i;
            if (this.zzaac != null) {
                this.zzaac.setRequestedOrientation(this.zzaah);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzqx) {
            this.zzaab = (zzqx) webViewClient;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.zzqw
    public void stopLoading() {
        if (isDestroyed()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzpk.zzb("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzK(boolean z) {
        synchronized (this.zzrJ) {
            this.zzaaf = z;
            zzmg();
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzL(boolean z) {
        synchronized (this.zzrJ) {
            if (this.zzaac != null) {
                this.zzaac.zza(this.zzaab.zzdD(), z);
            } else {
                this.zzaad = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzM(int i) {
        if (i == 0) {
            zzme();
        }
        zzmd();
        if (this.zzaas.zzfA() != null) {
            this.zzaas.zzfA().zzh("close_type", String.valueOf(i));
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.zztt.zzba);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzM(boolean z) {
        synchronized (this.zzrJ) {
            this.zzaai = z;
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzN(boolean z) {
        synchronized (this.zzrJ) {
            this.zzaao = (z ? 1 : -1) + this.zzaao;
            if (this.zzaao <= 0 && this.zzaac != null) {
                this.zzaac.zzhM();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(Context context, zzeg zzegVar, zzgl zzglVar) {
        synchronized (this.zzrJ) {
            this.zzvY.zzlf();
            setContext(context);
            this.zzaac = null;
            this.zzus = zzegVar;
            this.zzaaf = false;
            this.zzaad = false;
            this.zzOV = "";
            this.zzaah = -1;
            com.google.android.gms.ads.internal.zzw.zzcO().zzm(this);
            loadUrl("about:blank");
            this.zzaab.reset();
            setOnTouchListener(null);
            setOnClickListener(null);
            this.zzaai = true;
            this.zzaaj = false;
            this.zzaak = null;
            zzd(zzglVar);
            this.zzaal = false;
            this.zzaao = 0;
            com.google.android.gms.ads.internal.zzw.zzdj().zze(this);
            zzmj();
        }
    }

    @Override // com.google.android.gms.internal.zzcy.zzb
    public void zza(zzcy.zza zzaVar) {
        synchronized (this.zzrJ) {
            this.zzaal = zzaVar.zzxl;
        }
        zzP(zzaVar.zzxl);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzeg zzegVar) {
        synchronized (this.zzrJ) {
            this.zzus = zzegVar;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzrb zzrbVar) {
        synchronized (this.zzrJ) {
            if (this.zzaak != null) {
                zzpk.e("Attempt to create multiple AdWebViewVideoControllers.");
            } else {
                this.zzaak = zzrbVar;
            }
        }
    }

    void zza(Boolean bool) {
        synchronized (this.zzrJ) {
            this.zzWO = bool;
        }
        com.google.android.gms.ads.internal.zzw.zzcQ().zza(bool);
    }

    @TargetApi(19)
    protected void zza(String str, ValueCallback<String> valueCallback) {
        synchronized (this.zzrJ) {
            if (!isDestroyed()) {
                evaluateJavascript(str, valueCallback);
            } else {
                zzpk.zzbh("The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zza(String str, zzid zzidVar) {
        if (this.zzaab != null) {
            this.zzaab.zza(str, zzidVar);
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(String str, Map<String, ?> map) {
        try {
            zzb(str, com.google.android.gms.ads.internal.zzw.zzcM().zzQ(map));
        } catch (JSONException e) {
            zzpk.zzbh("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.zzqw, com.google.android.gms.internal.zzjj
    public void zza(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        zzj(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzb(com.google.android.gms.ads.internal.overlay.zze zzeVar) {
        synchronized (this.zzrJ) {
            this.zzaac = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzb(zzgy zzgyVar) {
        synchronized (this.zzrJ) {
            this.zzaan = zzgyVar;
        }
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, zzid zzidVar) {
        if (this.zzaab != null) {
            this.zzaab.zzb(str, zzidVar);
        }
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject2);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzpk.zzbf(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzbm(sb.toString());
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzeg zzbC() {
        zzeg zzegVar;
        synchronized (this.zzrJ) {
            zzegVar = this.zzus;
        }
        return zzegVar;
    }

    @Override // com.google.android.gms.ads.internal.zzu
    public void zzbV() {
        synchronized (this.zzrJ) {
            this.zzaaj = true;
            if (this.zzaaa != null) {
                this.zzaaa.zzbV();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzu
    public void zzbW() {
        synchronized (this.zzrJ) {
            this.zzaaj = false;
            if (this.zzaaa != null) {
                this.zzaaa.zzbW();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzbi(String str) {
        synchronized (this.zzrJ) {
            super.loadUrl(str);
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzbj(String str) {
        synchronized (this.zzrJ) {
            if (str == null) {
                str = "";
            }
            this.zzOV = str;
        }
    }

    protected void zzbl(String str) {
        synchronized (this.zzrJ) {
            if (!isDestroyed()) {
                loadUrl(str);
            } else {
                zzpk.zzbh("The webview is destroyed. Ignoring action.");
            }
        }
    }

    protected void zzbm(String str) {
        if (!com.google.android.gms.common.util.zzt.zzzl()) {
            String valueOf = String.valueOf(str);
            zzbl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        if (zzkq() == null) {
            zzmc();
        }
        if (zzkq().booleanValue()) {
            zza(str, (ValueCallback<String>) null);
            return;
        }
        String valueOf2 = String.valueOf(str);
        zzbl(valueOf2.length() != 0 ? "javascript:".concat(valueOf2) : new String("javascript:"));
    }

    @Override // com.google.android.gms.internal.zzqw
    public com.google.android.gms.ads.internal.zze zzby() {
        return this.zzsv;
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzc(com.google.android.gms.ads.internal.overlay.zze zzeVar) {
        synchronized (this.zzrJ) {
            this.zzaau = zzeVar;
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzhK() {
        if (this.zzaaq == null) {
            zzgh.zza(this.zzaas.zzfA(), this.zzOW, "aes2");
            this.zzaaq = zzgh.zzb(this.zzaas.zzfA());
            this.zzaas.zza("native:view_show", this.zzaaq);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zztt.zzba);
        zza("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.zzqw, com.google.android.gms.internal.zzjj
    public void zzj(String str, String str2) {
        zzbm(new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length()).append(str).append("(").append(str2).append(");").toString());
    }

    Boolean zzkq() {
        Boolean bool;
        synchronized (this.zzrJ) {
            bool = this.zzWO;
        }
        return bool;
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlA() {
        synchronized (this.zzrJ) {
            zzpk.v("Destroying WebView!");
            zzkC();
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzra.2
                @Override // java.lang.Runnable
                public void run() {
                    zzra.super.destroy();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlB() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaai;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlC() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaaj;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzqv zzlD() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzgj zzlE() {
        return this.zzOW;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzgk zzlF() {
        return this.zzaas;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzrb zzlG() {
        zzrb zzrbVar;
        synchronized (this.zzrJ) {
            zzrbVar = this.zzaak;
        }
        return zzrbVar;
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlH() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaao > 0;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlI() {
        this.zzvY.zzle();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlJ() {
        if (this.zzaar == null) {
            this.zzaar = zzgh.zzb(this.zzaas.zzfA());
            this.zzaas.zza("native:view_load", this.zzaar);
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public View.OnClickListener zzlK() {
        return this.zzaat.get();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzgy zzlL() {
        zzgy zzgyVar;
        synchronized (this.zzrJ) {
            zzgyVar = this.zzaan;
        }
        return zzgyVar;
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlM() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlp() {
        zzmd();
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.zztt.zzba);
        zza("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlq() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzw.zzcM().zzcs()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzw.zzcM().zzcq()));
        hashMap.put("device_volume", String.valueOf(com.google.android.gms.ads.internal.zzw.zzcM().zzS(getContext())));
        zza("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.zzqw
    public Activity zzlr() {
        return this.zzZZ.zzlr();
    }

    @Override // com.google.android.gms.internal.zzqw
    public Context zzls() {
        return this.zzZZ.zzls();
    }

    @Override // com.google.android.gms.internal.zzqw
    public com.google.android.gms.ads.internal.overlay.zze zzlt() {
        com.google.android.gms.ads.internal.overlay.zze zzeVar;
        synchronized (this.zzrJ) {
            zzeVar = this.zzaac;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.zzqw
    public com.google.android.gms.ads.internal.overlay.zze zzlu() {
        com.google.android.gms.ads.internal.overlay.zze zzeVar;
        synchronized (this.zzrJ) {
            zzeVar = this.zzaau;
        }
        return zzeVar;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzqx zzlv() {
        return this.zzaab;
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlw() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaad;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzaw zzlx() {
        return this.zzGP;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzqh zzly() {
        return this.zztt;
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlz() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzaaf;
        }
        return z;
    }

    public boolean zzmb() {
        int i;
        int i2;
        if (zzlv().zzdD() || zzlv().zzlO()) {
            DisplayMetrics zza2 = com.google.android.gms.ads.internal.zzw.zzcM().zza(this.zzwo);
            int zzb = zzel.zzeT().zzb(zza2, zza2.widthPixels);
            int zzb2 = zzel.zzeT().zzb(zza2, zza2.heightPixels);
            Activity zzlr = zzlr();
            if (zzlr == null || zzlr.getWindow() == null) {
                i = zzb2;
                i2 = zzb;
            } else {
                int[] zzh = com.google.android.gms.ads.internal.zzw.zzcM().zzh(zzlr);
                i2 = zzel.zzeT().zzb(zza2, zzh[0]);
                i = zzel.zzeT().zzb(zza2, zzh[1]);
            }
            if (this.zzMy == zzb && this.zzMz == zzb2 && this.zzMB == i2 && this.zzMC == i) {
                return false;
            }
            boolean z = (this.zzMy == zzb && this.zzMz == zzb2) ? false : true;
            this.zzMy = zzb;
            this.zzMz = zzb2;
            this.zzMB = i2;
            this.zzMC = i;
            new zzkw(this).zza(zzb, zzb2, i2, i, zza2.density, this.zzwo.getDefaultDisplay().getRotation());
            return z;
        }
        return false;
    }

    zzid zzmf() {
        return new zzid() { // from class: com.google.android.gms.internal.zzra.1
            @Override // com.google.android.gms.internal.zzid
            public void zza(zzqw zzqwVar, Map<String, String> map) {
                if (map != null) {
                    String str = map.get("height");
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    try {
                        int parseInt = Integer.parseInt(str);
                        synchronized (zzra.this.zzrJ) {
                            if (zzra.this.zzaap != parseInt) {
                                zzra.this.zzaap = parseInt;
                                zzra.this.requestLayout();
                            }
                        }
                    } catch (Exception e) {
                        zzpk.zzc("Exception occurred while getting webview content height", e);
                    }
                }
            }
        };
    }
}
