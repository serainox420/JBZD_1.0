package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public abstract class zzis implements Releasable {
    protected Context mContext;
    protected String zzIA;
    protected WeakReference<zzqw> zzIB;

    public zzis(zzqw zzqwVar) {
        this.mContext = zzqwVar.getContext();
        this.zzIA = com.google.android.gms.ads.internal.zzw.zzcM().zzu(this.mContext, zzqwVar.zzly().zzba);
        this.zzIB = new WeakReference<>(zzqwVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(String str, Map<String, String> map) {
        zzqw zzqwVar = this.zzIB.get();
        if (zzqwVar != null) {
            zzqwVar.zza(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzaf(String str) {
        char c = 65535;
        switch (str.hashCode()) {
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = 6;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = 7;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 3;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 1;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = '\b';
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = '\t';
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = 0;
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = 5;
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
                return "internal";
            case 4:
            case 5:
                return "io";
            case 6:
            case 7:
                return "network";
            case '\b':
            case '\t':
                return "policy";
            default:
                return "internal";
        }
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(final String str, final String str2, final int i) {
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzis.2
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheComplete");
                hashMap.put("src", str);
                hashMap.put("cachedSrc", str2);
                hashMap.put("totalBytes", Integer.toString(i));
                zzis.this.zza("onPrecacheEvent", hashMap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(final String str, final String str2, final int i, final int i2, final boolean z) {
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzis.1
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheProgress");
                hashMap.put("src", str);
                hashMap.put("cachedSrc", str2);
                hashMap.put("bytesLoaded", Integer.toString(i));
                hashMap.put("totalBytes", Integer.toString(i2));
                hashMap.put("cacheReady", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
                zzis.this.zza("onPrecacheEvent", hashMap);
            }
        });
    }

    public void zza(final String str, final String str2, final String str3, final String str4) {
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzis.3
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheCanceled");
                hashMap.put("src", str);
                if (!TextUtils.isEmpty(str2)) {
                    hashMap.put("cachedSrc", str2);
                }
                hashMap.put("type", zzis.this.zzaf(str3));
                hashMap.put("reason", str3);
                if (!TextUtils.isEmpty(str4)) {
                    hashMap.put(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str4);
                }
                zzis.this.zza("onPrecacheEvent", hashMap);
            }
        });
    }

    public abstract boolean zzad(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public String zzae(String str) {
        return zzel.zzeT().zzbe(str);
    }
}
