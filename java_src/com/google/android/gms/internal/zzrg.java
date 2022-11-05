package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.amazon.device.ads.WebRequest;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@zzme
@TargetApi(11)
/* loaded from: classes.dex */
public class zzrg extends zzqx {
    public zzrg(zzqw zzqwVar, boolean z) {
        super(zzqwVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WebResourceResponse zza(WebView webView, String str, Map<String, String> map) {
        if (!(webView instanceof zzqw)) {
            zzpk.zzbh("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzqw zzqwVar = (zzqw) webView;
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            return super.shouldInterceptRequest(webView, str);
        }
        if (zzqwVar.zzlv() != null) {
            zzqwVar.zzlv().zzhG();
        }
        try {
            return zzn(zzqwVar.getContext(), zzqwVar.zzly().zzba, zzqwVar.zzbC().zzzz ? zzgd.zzBY.get() : zzqwVar.zzlz() ? zzgd.zzBX.get() : zzgd.zzBW.get());
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzpk.zzbh(valueOf.length() != 0 ? "Could not fetch MRAID JS. ".concat(valueOf) : new String("Could not fetch MRAID JS. "));
            return null;
        }
    }

    protected WebResourceResponse zzn(Context context, String str, String str2) throws IOException, ExecutionException, InterruptedException, TimeoutException {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzw.zzcM().zzu(context, str));
        hashMap.put("Cache-Control", "max-stale=3600");
        String str3 = new zzpv(context).zzc(str2, hashMap).get(60L, TimeUnit.SECONDS);
        if (str3 == null) {
            return null;
        }
        return new WebResourceResponse(WebRequest.CONTENT_TYPE_JAVASCRIPT, "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
    }
}
