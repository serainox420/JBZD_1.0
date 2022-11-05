package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.google.android.gms.internal.zzcy;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
@zzme
/* loaded from: classes.dex */
public class zzqz extends FrameLayout implements zzqw {
    private static final int zzNf = Color.argb(0, 0, 0, 0);
    private final zzqw zzZX;
    private final zzqv zzZY;

    public zzqz(zzqw zzqwVar) {
        super(zzqwVar.getContext());
        this.zzZX = zzqwVar;
        this.zzZY = new zzqv(zzqwVar.zzls(), this, this);
        zzqx zzlv = this.zzZX.zzlv();
        if (zzlv != null) {
            zzlv.zzo(this);
        }
        addView(this.zzZX.getView());
    }

    @Override // com.google.android.gms.internal.zzqw
    public void destroy() {
        this.zzZX.destroy();
    }

    @Override // com.google.android.gms.internal.zzqw
    public String getRequestId() {
        return this.zzZX.getRequestId();
    }

    @Override // com.google.android.gms.internal.zzqw
    public int getRequestedOrientation() {
        return this.zzZX.getRequestedOrientation();
    }

    @Override // com.google.android.gms.internal.zzqw
    public View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzqw
    public WebView getWebView() {
        return this.zzZX.getWebView();
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean isDestroyed() {
        return this.zzZX.isDestroyed();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void loadData(String str, String str2, String str3) {
        this.zzZX.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zzZX.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void loadUrl(String str) {
        this.zzZX.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void onPause() {
        this.zzZY.onPause();
        this.zzZX.onPause();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void onResume() {
        this.zzZX.onResume();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void setContext(Context context) {
        this.zzZX.setContext(context);
    }

    @Override // android.view.View, com.google.android.gms.internal.zzqw
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzZX.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.zzqw
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zzZX.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void setRequestedOrientation(int i) {
        this.zzZX.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zzZX.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void setWebViewClient(WebViewClient webViewClient) {
        this.zzZX.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void stopLoading() {
        this.zzZX.stopLoading();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzK(boolean z) {
        this.zzZX.zzK(z);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzL(boolean z) {
        this.zzZX.zzL(z);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzM(int i) {
        this.zzZX.zzM(i);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzM(boolean z) {
        this.zzZX.zzM(z);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzN(boolean z) {
        this.zzZX.zzN(z);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(Context context, zzeg zzegVar, zzgl zzglVar) {
        this.zzZY.onDestroy();
        this.zzZX.zza(context, zzegVar, zzglVar);
    }

    @Override // com.google.android.gms.internal.zzcy.zzb
    public void zza(zzcy.zza zzaVar) {
        this.zzZX.zza(zzaVar);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzeg zzegVar) {
        this.zzZX.zza(zzegVar);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzrb zzrbVar) {
        this.zzZX.zza(zzrbVar);
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zza(String str, zzid zzidVar) {
        this.zzZX.zza(str, zzidVar);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(String str, Map<String, ?> map) {
        this.zzZX.zza(str, map);
    }

    @Override // com.google.android.gms.internal.zzqw, com.google.android.gms.internal.zzjj
    public void zza(String str, JSONObject jSONObject) {
        this.zzZX.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzb(com.google.android.gms.ads.internal.overlay.zze zzeVar) {
        this.zzZX.zzb(zzeVar);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzb(zzgy zzgyVar) {
        this.zzZX.zzb(zzgyVar);
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, zzid zzidVar) {
        this.zzZX.zzb(str, zzidVar);
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, JSONObject jSONObject) {
        this.zzZX.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzeg zzbC() {
        return this.zzZX.zzbC();
    }

    @Override // com.google.android.gms.ads.internal.zzu
    public void zzbV() {
        this.zzZX.zzbV();
    }

    @Override // com.google.android.gms.ads.internal.zzu
    public void zzbW() {
        this.zzZX.zzbW();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzbi(String str) {
        this.zzZX.zzbi(str);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzbj(String str) {
        this.zzZX.zzbj(str);
    }

    @Override // com.google.android.gms.internal.zzqw
    public com.google.android.gms.ads.internal.zze zzby() {
        return this.zzZX.zzby();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzc(com.google.android.gms.ads.internal.overlay.zze zzeVar) {
        this.zzZX.zzc(zzeVar);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzhK() {
        this.zzZX.zzhK();
    }

    @Override // com.google.android.gms.internal.zzqw, com.google.android.gms.internal.zzjj
    public void zzj(String str, String str2) {
        this.zzZX.zzj(str, str2);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlA() {
        this.zzZY.onDestroy();
        this.zzZX.zzlA();
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlB() {
        return this.zzZX.zzlB();
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlC() {
        return this.zzZX.zzlC();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzqv zzlD() {
        return this.zzZY;
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzgj zzlE() {
        return this.zzZX.zzlE();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzgk zzlF() {
        return this.zzZX.zzlF();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzrb zzlG() {
        return this.zzZX.zzlG();
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlH() {
        return this.zzZX.zzlH();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlI() {
        this.zzZX.zzlI();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlJ() {
        this.zzZX.zzlJ();
    }

    @Override // com.google.android.gms.internal.zzqw
    public View.OnClickListener zzlK() {
        return this.zzZX.zzlK();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzgy zzlL() {
        return this.zzZX.zzlL();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlM() {
        setBackgroundColor(zzNf);
        this.zzZX.setBackgroundColor(zzNf);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlp() {
        this.zzZX.zzlp();
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzlq() {
        this.zzZX.zzlq();
    }

    @Override // com.google.android.gms.internal.zzqw
    public Activity zzlr() {
        return this.zzZX.zzlr();
    }

    @Override // com.google.android.gms.internal.zzqw
    public Context zzls() {
        return this.zzZX.zzls();
    }

    @Override // com.google.android.gms.internal.zzqw
    public com.google.android.gms.ads.internal.overlay.zze zzlt() {
        return this.zzZX.zzlt();
    }

    @Override // com.google.android.gms.internal.zzqw
    public com.google.android.gms.ads.internal.overlay.zze zzlu() {
        return this.zzZX.zzlu();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzqx zzlv() {
        return this.zzZX.zzlv();
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlw() {
        return this.zzZX.zzlw();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzaw zzlx() {
        return this.zzZX.zzlx();
    }

    @Override // com.google.android.gms.internal.zzqw
    public zzqh zzly() {
        return this.zzZX.zzly();
    }

    @Override // com.google.android.gms.internal.zzqw
    public boolean zzlz() {
        return this.zzZX.zzlz();
    }
}
