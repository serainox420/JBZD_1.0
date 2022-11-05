package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewTreeObserver;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.iid.InstanceID;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
@zzme
/* loaded from: classes.dex */
public class zzqx extends WebViewClient {
    private static final String[] zzZv = {"UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", InstanceID.ERROR_TIMEOUT, "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS"};
    private static final String[] zzZw = {"NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID"};
    private zzhz zzHC;
    private zzih zzIm;
    private com.google.android.gms.ads.internal.zzf zzIo;
    private zzkr zzIp;
    private zzif zzIr;
    protected zzqw zzIs;
    private zzkx zzMh;
    private zzb zzZA;
    private zzc zzZB;
    private boolean zzZC;
    private boolean zzZD;
    private ViewTreeObserver.OnGlobalLayoutListener zzZE;
    private ViewTreeObserver.OnScrollChangedListener zzZF;
    private boolean zzZG;
    private com.google.android.gms.ads.internal.overlay.zzq zzZH;
    private final zzkv zzZI;
    private zze zzZJ;
    protected zzot zzZK;
    private boolean zzZL;
    private boolean zzZM;
    private boolean zzZN;
    private int zzZO;
    private final HashMap<String, List<zzid>> zzZx;
    private com.google.android.gms.ads.internal.overlay.zzh zzZy;
    private zza zzZz;
    private final Object zzrJ;
    private boolean zzwe;
    private zzdx zzyR;

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzqw zzqwVar, boolean z);
    }

    /* loaded from: classes2.dex */
    public interface zzb {
        void zzk(zzqw zzqwVar);
    }

    /* loaded from: classes2.dex */
    public interface zzc {
        void zzcf();
    }

    /* loaded from: classes2.dex */
    private static class zzd implements com.google.android.gms.ads.internal.overlay.zzh {
        private zzqw zzZQ;
        private com.google.android.gms.ads.internal.overlay.zzh zzZy;

        public zzd(zzqw zzqwVar, com.google.android.gms.ads.internal.overlay.zzh zzhVar) {
            this.zzZQ = zzqwVar;
            this.zzZy = zzhVar;
        }

        @Override // com.google.android.gms.ads.internal.overlay.zzh
        public void onPause() {
        }

        @Override // com.google.android.gms.ads.internal.overlay.zzh
        public void onResume() {
        }

        @Override // com.google.android.gms.ads.internal.overlay.zzh
        public void zzbN() {
            this.zzZy.zzbN();
            this.zzZQ.zzlp();
        }

        @Override // com.google.android.gms.ads.internal.overlay.zzh
        public void zzbO() {
            this.zzZy.zzbO();
            this.zzZQ.zzhK();
        }
    }

    /* loaded from: classes2.dex */
    public interface zze {
        void zzce();
    }

    public zzqx(zzqw zzqwVar, boolean z) {
        this(zzqwVar, z, new zzkv(zzqwVar, zzqwVar.zzls(), new zzfv(zzqwVar.getContext())), null);
    }

    zzqx(zzqw zzqwVar, boolean z, zzkv zzkvVar, zzkr zzkrVar) {
        this.zzZx = new HashMap<>();
        this.zzrJ = new Object();
        this.zzZC = false;
        this.zzIs = zzqwVar;
        this.zzwe = z;
        this.zzZI = zzkvVar;
        this.zzIp = zzkrVar;
    }

    private String zzbk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Uri parse = Uri.parse(str);
        return parse.getHost() != null ? parse.getHost() : "";
    }

    private void zzc(Context context, String str, String str2, String str3) {
        if (!zzgd.zzDy.get().booleanValue()) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(AdTrackerConstants.ERROR, str);
        bundle.putString("code", str2);
        bundle.putString("host", zzbk(str3));
        com.google.android.gms.ads.internal.zzw.zzcM().zza(context, this.zzIs.zzly().zzba, "gmob-apps", bundle, true);
    }

    private static boolean zzi(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    private void zzlX() {
        if (this.zzZA != null) {
            this.zzZA.zzk(this.zzIs);
            this.zzZA = null;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzpk.v(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            return;
        }
        zzj(parse);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzrJ) {
            if (this.zzZL) {
                zzpk.v("Blank page loaded, 1...");
                this.zzIs.zzlA();
                return;
            }
            this.zzZM = true;
            zzlX();
            zzlY();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        zzc(this.zzIs.getContext(), "http_err", (i >= 0 || (-i) + (-1) >= zzZv.length) ? String.valueOf(i) : zzZv[(-i) - 1], str2);
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslError != null) {
            int primaryError = sslError.getPrimaryError();
            zzc(this.zzIs.getContext(), "ssl_err", (primaryError < 0 || primaryError >= zzZw.length) ? String.valueOf(primaryError) : zzZw[primaryError], com.google.android.gms.ads.internal.zzw.zzcO().zza(sslError));
        }
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    public final void reset() {
        if (this.zzZK != null) {
            this.zzZK = null;
        }
        synchronized (this.zzrJ) {
            this.zzZx.clear();
            this.zzyR = null;
            this.zzZy = null;
            this.zzZz = null;
            this.zzZA = null;
            this.zzHC = null;
            this.zzZC = false;
            this.zzwe = false;
            this.zzZD = false;
            this.zzZG = false;
            this.zzIr = null;
            this.zzZH = null;
            this.zzZB = null;
            if (this.zzIp != null) {
                this.zzIp.zzs(true);
                this.zzIp = null;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        zzdp zza2;
        try {
            zzds zzJ = zzds.zzJ(str);
            if (zzJ != null && (zza2 = com.google.android.gms.ads.internal.zzw.zzcR().zza(zzJ)) != null && zza2.zzew()) {
                return new WebResourceResponse("", "", zza2.zzex());
            }
            return null;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "AdWebViewClient.shouldInterceptRequest");
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            case 79:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 222:
                return true;
            default:
                return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        String valueOf = String.valueOf(str);
        zzpk.v(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            zzj(parse);
        } else if (this.zzZC && webView == this.zzIs.getWebView() && zzi(parse)) {
            if (this.zzyR != null && zzgd.zzCw.get().booleanValue()) {
                this.zzyR.onAdClicked();
                this.zzyR = null;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        } else if (!this.zzIs.getWebView().willNotDraw()) {
            try {
                zzaw zzlx = this.zzIs.zzlx();
                if (zzlx != null && zzlx.zzc(parse)) {
                    parse = zzlx.zza(parse, this.zzIs.getContext(), this.zzIs.getView());
                }
                uri = parse;
            } catch (zzax e) {
                String valueOf2 = String.valueOf(str);
                zzpk.zzbh(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                uri = parse;
            }
            if (this.zzIo == null || this.zzIo.zzcd()) {
                zza(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
            } else {
                this.zzIo.zzx(str);
            }
        } else {
            String valueOf3 = String.valueOf(str);
            zzpk.zzbh(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
        }
        return true;
    }

    public void zzO(boolean z) {
        this.zzZC = z;
    }

    public void zza(int i, int i2, boolean z) {
        this.zzZI.zzf(i, i2);
        if (this.zzIp != null) {
            this.zzIp.zza(i, i2, z);
        }
    }

    public final void zza(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        synchronized (this.zzrJ) {
            this.zzZD = true;
            this.zzIs.zzlI();
            this.zzZE = onGlobalLayoutListener;
            this.zzZF = onScrollChangedListener;
        }
    }

    public void zza(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z = false;
        boolean zzhm = this.zzIp != null ? this.zzIp.zzhm() : false;
        com.google.android.gms.ads.internal.overlay.zzf zzcK = com.google.android.gms.ads.internal.zzw.zzcK();
        Context context = this.zzIs.getContext();
        if (!zzhm) {
            z = true;
        }
        zzcK.zza(context, adOverlayInfoParcel, z);
        if (this.zzZK == null || adOverlayInfoParcel.url != null || adOverlayInfoParcel.zzNE == null) {
            return;
        }
        String str = adOverlayInfoParcel.zzNE.url;
    }

    public final void zza(com.google.android.gms.ads.internal.overlay.zzc zzcVar) {
        com.google.android.gms.ads.internal.overlay.zzh zzhVar = null;
        boolean zzlz = this.zzIs.zzlz();
        zzdx zzdxVar = (!zzlz || this.zzIs.zzbC().zzzz) ? this.zzyR : null;
        if (!zzlz) {
            zzhVar = this.zzZy;
        }
        zza(new AdOverlayInfoParcel(zzcVar, zzdxVar, zzhVar, this.zzZH, this.zzIs.zzly()));
    }

    public void zza(zzdx zzdxVar, com.google.android.gms.ads.internal.overlay.zzh zzhVar, zzhz zzhzVar, com.google.android.gms.ads.internal.overlay.zzq zzqVar, boolean z, zzif zzifVar, zzih zzihVar, com.google.android.gms.ads.internal.zzf zzfVar, zzkx zzkxVar, zzot zzotVar) {
        if (zzfVar == null) {
            zzfVar = new com.google.android.gms.ads.internal.zzf(this.zzIs.getContext());
        }
        this.zzIp = new zzkr(this.zzIs, zzkxVar);
        this.zzZK = zzotVar;
        zza("/appEvent", new zzhy(zzhzVar));
        zza("/backButton", zzic.zzHO);
        zza("/refresh", zzic.zzHP);
        zza("/canOpenURLs", zzic.zzHE);
        zza("/canOpenIntents", zzic.zzHF);
        zza("/click", zzic.zzHG);
        zza("/close", zzic.zzHH);
        zza("/customClose", zzic.zzHJ);
        zza("/instrument", zzic.zzHU);
        zza("/delayPageLoaded", zzic.zzHW);
        zza("/delayPageClosed", zzic.zzHX);
        zza("/getLocationInfo", zzic.zzHY);
        zza("/httpTrack", zzic.zzHK);
        zza("/log", zzic.zzHL);
        zza("/mraid", new zzik(zzfVar, this.zzIp));
        zza("/mraidLoaded", this.zzZI);
        zza("/open", new zzil(zzifVar, zzfVar, this.zzIp));
        zza("/precache", zzic.zzHT);
        zza("/touch", zzic.zzHN);
        zza("/video", zzic.zzHQ);
        zza("/videoMeta", zzic.zzHR);
        zza("/appStreaming", zzic.zzHI);
        if (com.google.android.gms.ads.internal.zzw.zzdl().zzjQ()) {
            zza("/logScionEvent", zzic.zzHS);
        }
        if (zzihVar != null) {
            zza("/setInterstitialProperties", new zzig(zzihVar));
        }
        this.zzyR = zzdxVar;
        this.zzZy = zzhVar;
        this.zzHC = zzhzVar;
        this.zzIr = zzifVar;
        this.zzZH = zzqVar;
        this.zzIo = zzfVar;
        this.zzMh = zzkxVar;
        this.zzIm = zzihVar;
        zzO(z);
    }

    public void zza(zza zzaVar) {
        this.zzZz = zzaVar;
    }

    public void zza(zzb zzbVar) {
        this.zzZA = zzbVar;
    }

    public void zza(zzc zzcVar) {
        this.zzZB = zzcVar;
    }

    public void zza(zze zzeVar) {
        this.zzZJ = zzeVar;
    }

    public void zza(String str, zzid zzidVar) {
        synchronized (this.zzrJ) {
            List<zzid> list = this.zzZx.get(str);
            if (list == null) {
                list = new CopyOnWriteArrayList<>();
                this.zzZx.put(str, list);
            }
            list.add(zzidVar);
        }
    }

    public final void zza(boolean z, int i) {
        zza(new AdOverlayInfoParcel((!this.zzIs.zzlz() || this.zzIs.zzbC().zzzz) ? this.zzyR : null, this.zzZy, this.zzZH, this.zzIs, z, i, this.zzIs.zzly()));
    }

    public final void zza(boolean z, int i, String str) {
        zzd zzdVar = null;
        boolean zzlz = this.zzIs.zzlz();
        zzdx zzdxVar = (!zzlz || this.zzIs.zzbC().zzzz) ? this.zzyR : null;
        if (!zzlz) {
            zzdVar = new zzd(this.zzIs, this.zzZy);
        }
        zza(new AdOverlayInfoParcel(zzdxVar, zzdVar, this.zzHC, this.zzZH, this.zzIs, z, i, str, this.zzIs.zzly(), this.zzIr));
    }

    public final void zza(boolean z, int i, String str, String str2) {
        boolean zzlz = this.zzIs.zzlz();
        zza(new AdOverlayInfoParcel((!zzlz || this.zzIs.zzbC().zzzz) ? this.zzyR : null, zzlz ? null : new zzd(this.zzIs, this.zzZy), this.zzHC, this.zzZH, this.zzIs, z, i, str, str2, this.zzIs.zzly(), this.zzIr));
    }

    public void zzb(String str, zzid zzidVar) {
        synchronized (this.zzrJ) {
            List<zzid> list = this.zzZx.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzidVar);
        }
    }

    public boolean zzdD() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzwe;
        }
        return z;
    }

    public void zze(int i, int i2) {
        if (this.zzIp != null) {
            this.zzIp.zze(i, i2);
        }
    }

    public final void zzhG() {
        synchronized (this.zzrJ) {
            this.zzZC = false;
            this.zzwe = true;
            com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzqx.2
                @Override // java.lang.Runnable
                public void run() {
                    zzqx.this.zzIs.zzlI();
                    com.google.android.gms.ads.internal.overlay.zze zzlt = zzqx.this.zzIs.zzlt();
                    if (zzlt != null) {
                        zzlt.zzhG();
                    }
                    if (zzqx.this.zzZB != null) {
                        zzqx.this.zzZB.zzcf();
                        zzqx.this.zzZB = null;
                    }
                }
            });
        }
    }

    public void zzj(Uri uri) {
        String path = uri.getPath();
        List<zzid> list = this.zzZx.get(path);
        if (list == null) {
            String valueOf = String.valueOf(uri);
            zzpk.v(new StringBuilder(String.valueOf(valueOf).length() + 32).append("No GMSG handler found for GMSG: ").append(valueOf).toString());
            return;
        }
        Map<String, String> zzg = com.google.android.gms.ads.internal.zzw.zzcM().zzg(uri);
        if (zzpk.zzak(2)) {
            String valueOf2 = String.valueOf(path);
            zzpk.v(valueOf2.length() != 0 ? "Received GMSG: ".concat(valueOf2) : new String("Received GMSG: "));
            for (String str : zzg.keySet()) {
                String str2 = zzg.get(str);
                zzpk.v(new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length()).append("  ").append(str).append(": ").append(str2).toString());
            }
        }
        for (zzid zzidVar : list) {
            zzidVar.zza(this.zzIs, zzg);
        }
    }

    public com.google.android.gms.ads.internal.zzf zzlN() {
        return this.zzIo;
    }

    public boolean zzlO() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzZD;
        }
        return z;
    }

    public ViewTreeObserver.OnGlobalLayoutListener zzlP() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        synchronized (this.zzrJ) {
            onGlobalLayoutListener = this.zzZE;
        }
        return onGlobalLayoutListener;
    }

    public ViewTreeObserver.OnScrollChangedListener zzlQ() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;
        synchronized (this.zzrJ) {
            onScrollChangedListener = this.zzZF;
        }
        return onScrollChangedListener;
    }

    public boolean zzlR() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzZG;
        }
        return z;
    }

    public void zzlS() {
        synchronized (this.zzrJ) {
            zzpk.v("Loading blank page in WebView, 2...");
            this.zzZL = true;
            this.zzIs.zzbi("about:blank");
        }
    }

    public void zzlT() {
        if (this.zzZK != null) {
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzqx.1
                @Override // java.lang.Runnable
                public void run() {
                    if (zzqx.this.zzZK != null) {
                        zzot zzotVar = zzqx.this.zzZK;
                        zzqw zzqwVar = zzqx.this.zzIs;
                    }
                }
            });
        }
    }

    public void zzlU() {
        synchronized (this.zzrJ) {
            this.zzZG = true;
        }
        this.zzZO++;
        zzlY();
    }

    public void zzlV() {
        this.zzZO--;
        zzlY();
    }

    public void zzlW() {
        this.zzZN = true;
        zzlY();
    }

    public final void zzlY() {
        if (this.zzZz != null && ((this.zzZM && this.zzZO <= 0) || this.zzZN)) {
            this.zzZz.zza(this.zzIs, !this.zzZN);
            this.zzZz = null;
        }
        this.zzIs.zzlJ();
    }

    public zze zzlZ() {
        return this.zzZJ;
    }

    public void zzo(zzqw zzqwVar) {
        this.zzIs = zzqwVar;
    }
}
