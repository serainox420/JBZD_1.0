package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzck;
import com.google.android.gms.internal.zzcl;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzeo;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.internal.zzfa;
import com.google.android.gms.internal.zzfc;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzle;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zznw;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpn;
import com.google.android.gms.internal.zzqh;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@zzme
/* loaded from: classes.dex */
public class zzv extends zzet.zza {
    private final Context mContext;
    private zzep zztk;
    private final zzqh zztt;
    private final zzeg zzus;
    private final Future<zzck> zzut = zzcC();
    private final zzb zzuu;
    private WebView zzuv;
    private zzck zzuw;
    private AsyncTask<Void, Void, String> zzux;

    /* loaded from: classes2.dex */
    private class zza extends AsyncTask<Void, Void, String> {
        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: zzD */
        public void onPostExecute(String str) {
            if (zzv.this.zzuv == null || str == null) {
                return;
            }
            zzv.this.zzuv.loadUrl(str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: zza */
        public String doInBackground(Void... voidArr) {
            try {
                zzv.this.zzuw = (zzck) zzv.this.zzut.get(zzgd.zzET.get().longValue(), TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                e = e;
                zzpk.zzc("Failed to load ad data", e);
            } catch (ExecutionException e2) {
                e = e2;
                zzpk.zzc("Failed to load ad data", e);
            } catch (TimeoutException e3) {
                zzpk.zzbh("Timed out waiting for ad data");
            }
            return zzv.this.zzcA();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb {
        private final Map<String, String> zzuA = new TreeMap();
        private String zzuB;
        private String zzuC;
        private final String zzuz;

        public zzb(String str) {
            this.zzuz = str;
        }

        public String getQuery() {
            return this.zzuB;
        }

        public void zza(zzec zzecVar, zzqh zzqhVar) {
            this.zzuB = zzecVar.zzza.zzAT;
            Bundle bundle = zzecVar.zzzd != null ? zzecVar.zzzd.getBundle(AdMobAdapter.class.getName()) : null;
            if (bundle == null) {
                return;
            }
            String str = zzgd.zzES.get();
            for (String str2 : bundle.keySet()) {
                if (str.equals(str2)) {
                    this.zzuC = bundle.getString(str2);
                } else if (str2.startsWith("csa_")) {
                    this.zzuA.put(str2.substring("csa_".length()), bundle.getString(str2));
                }
            }
            this.zzuA.put("SDKVersion", zzqhVar.zzba);
        }

        public String zzcE() {
            return this.zzuC;
        }

        public String zzcF() {
            return this.zzuz;
        }

        public Map<String, String> zzcG() {
            return this.zzuA;
        }
    }

    public zzv(Context context, zzeg zzegVar, String str, zzqh zzqhVar) {
        this.mContext = context;
        this.zztt = zzqhVar;
        this.zzus = zzegVar;
        this.zzuv = new WebView(this.mContext);
        this.zzuu = new zzb(str);
        zzcz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzB(String str) {
        if (this.zzuw == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.zzuw.zzd(parse, this.mContext);
        } catch (RemoteException e) {
            zzpk.zzc("Unable to process ad data", e);
        } catch (zzcl e2) {
            zzpk.zzc("Unable to parse ad click url", e2);
        }
        return parse.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzC(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.mContext.startActivity(intent);
    }

    private Future<zzck> zzcC() {
        return zzpn.zza(new Callable<zzck>() { // from class: com.google.android.gms.ads.internal.zzv.3
            @Override // java.util.concurrent.Callable
            /* renamed from: zzcD */
            public zzck call() throws Exception {
                return new zzck(zzv.this.zztt.zzba, zzv.this.mContext, false);
            }
        });
    }

    private void zzcz() {
        zzj(0);
        this.zzuv.setVerticalScrollBarEnabled(false);
        this.zzuv.getSettings().setJavaScriptEnabled(true);
        this.zzuv.setWebViewClient(new WebViewClient() { // from class: com.google.android.gms.ads.internal.zzv.1
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (zzv.this.zztk != null) {
                    try {
                        zzv.this.zztk.onAdFailedToLoad(0);
                    } catch (RemoteException e) {
                        zzpk.zzc("Could not call AdListener.onAdFailedToLoad().", e);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str.startsWith(zzv.this.zzcB())) {
                    return false;
                }
                if (str.startsWith(zzgd.zzEO.get())) {
                    if (zzv.this.zztk != null) {
                        try {
                            zzv.this.zztk.onAdFailedToLoad(3);
                        } catch (RemoteException e) {
                            zzpk.zzc("Could not call AdListener.onAdFailedToLoad().", e);
                        }
                    }
                    zzv.this.zzj(0);
                    return true;
                } else if (str.startsWith(zzgd.zzEP.get())) {
                    if (zzv.this.zztk != null) {
                        try {
                            zzv.this.zztk.onAdFailedToLoad(0);
                        } catch (RemoteException e2) {
                            zzpk.zzc("Could not call AdListener.onAdFailedToLoad().", e2);
                        }
                    }
                    zzv.this.zzj(0);
                    return true;
                } else if (str.startsWith(zzgd.zzEQ.get())) {
                    if (zzv.this.zztk != null) {
                        try {
                            zzv.this.zztk.onAdLoaded();
                        } catch (RemoteException e3) {
                            zzpk.zzc("Could not call AdListener.onAdLoaded().", e3);
                        }
                    }
                    zzv.this.zzj(zzv.this.zzA(str));
                    return true;
                } else if (str.startsWith("gmsg://")) {
                    return true;
                } else {
                    if (zzv.this.zztk != null) {
                        try {
                            zzv.this.zztk.onAdLeftApplication();
                        } catch (RemoteException e4) {
                            zzpk.zzc("Could not call AdListener.onAdLeftApplication().", e4);
                        }
                    }
                    zzv.this.zzC(zzv.this.zzB(str));
                    return true;
                }
            }
        });
        this.zzuv.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.ads.internal.zzv.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (zzv.this.zzuw != null) {
                    try {
                        zzv.this.zzuw.zza(motionEvent);
                        return false;
                    } catch (RemoteException e) {
                        zzpk.zzc("Unable to process ad data", e);
                        return false;
                    }
                }
                return false;
            }
        });
    }

    @Override // com.google.android.gms.internal.zzet
    public void destroy() throws RemoteException {
        zzac.zzdj("destroy must be called on the main UI thread.");
        this.zzux.cancel(true);
        this.zzut.cancel(true);
        this.zzuv.destroy();
        this.zzuv = null;
    }

    @Override // com.google.android.gms.internal.zzet
    public String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean isReady() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.zzet
    public void pause() throws RemoteException {
        zzac.zzdj("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzet
    public void resume() throws RemoteException {
        zzac.zzdj("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzet
    public void setManualImpressionsEnabled(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzet
    public void setUserId(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void stopLoading() throws RemoteException {
    }

    int zzA(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            return zzel.zzeT().zzb(this.mContext, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeg zzegVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzeo zzeoVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzep zzepVar) throws RemoteException {
        this.zztk = zzepVar;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzev zzevVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzex zzexVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzfc zzfcVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzft zzftVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzgp zzgpVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzle zzleVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zzli zzliVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(zznw zznwVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public boolean zzb(zzec zzecVar) throws RemoteException {
        zzac.zzb(this.zzuv, "This Search Ad has already been torn down");
        this.zzuu.zza(zzecVar, this.zztt);
        this.zzux = new zza().execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.internal.zzet
    public IObjectWrapper zzbB() throws RemoteException {
        zzac.zzdj("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.dynamic.zzd.zzA(this.zzuv);
    }

    @Override // com.google.android.gms.internal.zzet
    public zzeg zzbC() throws RemoteException {
        return this.zzus;
    }

    @Override // com.google.android.gms.internal.zzet
    public void zzbE() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzet
    public zzfa zzbF() {
        return null;
    }

    String zzcA() {
        Uri zzc;
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(zzgd.zzER.get());
        builder.appendQueryParameter("query", this.zzuu.getQuery());
        builder.appendQueryParameter(PubMaticConstants.PUB_ID_PARAM, this.zzuu.zzcF());
        Map<String, String> zzcG = this.zzuu.zzcG();
        for (String str : zzcG.keySet()) {
            builder.appendQueryParameter(str, zzcG.get(str));
        }
        Uri build = builder.build();
        if (this.zzuw != null) {
            try {
                zzc = this.zzuw.zzc(build, this.mContext);
            } catch (RemoteException | zzcl e) {
                zzpk.zzc("Unable to process ad data", e);
            }
            String valueOf = String.valueOf(zzcB());
            String valueOf2 = String.valueOf(zzc.getEncodedQuery());
            return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("#").append(valueOf2).toString();
        }
        zzc = build;
        String valueOf3 = String.valueOf(zzcB());
        String valueOf22 = String.valueOf(zzc.getEncodedQuery());
        return new StringBuilder(String.valueOf(valueOf3).length() + 1 + String.valueOf(valueOf22).length()).append(valueOf3).append("#").append(valueOf22).toString();
    }

    String zzcB() {
        String zzcE = this.zzuu.zzcE();
        String str = TextUtils.isEmpty(zzcE) ? "www.google.com" : zzcE;
        String valueOf = String.valueOf("https://");
        String str2 = zzgd.zzER.get();
        return new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(str).length() + String.valueOf(str2).length()).append(valueOf).append(str).append(str2).toString();
    }

    void zzj(int i) {
        if (this.zzuv == null) {
            return;
        }
        this.zzuv.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }
}
