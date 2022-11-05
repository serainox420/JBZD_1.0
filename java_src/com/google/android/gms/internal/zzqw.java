package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.zzcy;
import java.util.Map;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public interface zzqw extends com.google.android.gms.ads.internal.zzu, zzcy.zzb, zzjj {
    void destroy();

    Context getContext();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    String getRequestId();

    int getRequestedOrientation();

    View getView();

    WebView getWebView();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    void setBackgroundColor(int i);

    void setContext(Context context);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void stopLoading();

    void zzK(boolean z);

    void zzL(boolean z);

    void zzM(int i);

    void zzM(boolean z);

    void zzN(boolean z);

    void zza(Context context, zzeg zzegVar, zzgl zzglVar);

    void zza(zzeg zzegVar);

    void zza(zzrb zzrbVar);

    void zza(String str, Map<String, ?> map);

    @Override // com.google.android.gms.internal.zzjj
    void zza(String str, JSONObject jSONObject);

    void zzb(com.google.android.gms.ads.internal.overlay.zze zzeVar);

    void zzb(zzgy zzgyVar);

    zzeg zzbC();

    void zzbi(String str);

    void zzbj(String str);

    com.google.android.gms.ads.internal.zze zzby();

    void zzc(com.google.android.gms.ads.internal.overlay.zze zzeVar);

    void zzhK();

    @Override // com.google.android.gms.internal.zzjj
    void zzj(String str, String str2);

    void zzlA();

    boolean zzlB();

    boolean zzlC();

    zzqv zzlD();

    zzgj zzlE();

    zzgk zzlF();

    zzrb zzlG();

    boolean zzlH();

    void zzlI();

    void zzlJ();

    View.OnClickListener zzlK();

    zzgy zzlL();

    void zzlM();

    void zzlp();

    void zzlq();

    Activity zzlr();

    Context zzls();

    com.google.android.gms.ads.internal.overlay.zze zzlt();

    com.google.android.gms.ads.internal.overlay.zze zzlu();

    zzqx zzlv();

    boolean zzlw();

    zzaw zzlx();

    zzqh zzly();

    boolean zzlz();
}
