package com.google.android.gms.internal;

import com.applovin.impl.sdk.NativeAdImpl;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes2.dex */
public class zzbih {
    private String zzbFy = "https://www.google-analytics.com";

    private String zzhD(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException e) {
            String valueOf = String.valueOf(str);
            zzbbu.e(valueOf.length() != 0 ? "Cannot encode the string: ".concat(valueOf) : new String("Cannot encode the string: "));
            return "";
        }
    }

    public String zzb(zzbhx zzbhxVar) {
        String str = this.zzbFy;
        String valueOf = String.valueOf("/gtm/android?");
        String zzSH = zzbhxVar.zzSG() ? zzbhxVar.zzSH() : zzc(zzbhxVar);
        return new StringBuilder(String.valueOf(str).length() + String.valueOf(valueOf).length() + String.valueOf(zzSH).length()).append(str).append(valueOf).append(zzSH).toString();
    }

    String zzc(zzbhx zzbhxVar) {
        if (zzbhxVar == null) {
            return "";
        }
        String trim = !zzbhxVar.zzSI().trim().equals("") ? zzbhxVar.zzSI().trim() : "-1";
        StringBuilder sb = new StringBuilder();
        if (zzbhxVar.zzSE() != null) {
            sb.append(zzbhxVar.zzSE());
        } else {
            sb.append("id");
        }
        sb.append("=").append(zzhD(zzbhxVar.getContainerId())).append("&").append(NativeAdImpl.QUERY_PARAM_VIDEO_PERCENT_VIEWED).append("=").append(zzhD(trim)).append("&").append("rv=5.0");
        if (zzbhxVar.zzSG()) {
            sb.append("&gtm_debug=x");
        }
        return sb.toString();
    }
}
