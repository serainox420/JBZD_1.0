package com.google.android.gms.internal;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
/* loaded from: classes2.dex */
public class zzbbz {
    private static zzbbz zzbKb;
    private volatile String zzbEU;
    private volatile String zzbHg;
    private volatile zza zzbKc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum zza {
        NONE,
        CONTAINER
    }

    zzbbz() {
        clear();
    }

    public static zzbbz zzSg() {
        zzbbz zzbbzVar;
        synchronized (zzbbz.class) {
            if (zzbKb == null) {
                zzbKb = new zzbbz();
            }
            zzbbzVar = zzbKb;
        }
        return zzbbzVar;
    }

    void clear() {
        this.zzbKc = zza.NONE;
        this.zzbHg = null;
        this.zzbEU = null;
    }

    public String getContainerId() {
        return this.zzbEU;
    }

    public boolean isPreview() {
        return this.zzbKc == zza.CONTAINER;
    }

    public String zzSh() {
        return this.zzbHg;
    }

    public synchronized boolean zzc(String str, Uri uri) {
        boolean z = false;
        synchronized (this) {
            try {
                String decode = URLDecoder.decode(uri.toString(), "UTF-8");
                if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\S+")) {
                    String valueOf = String.valueOf(decode);
                    zzbbu.zzbh(valueOf.length() != 0 ? "Bad preview url: ".concat(valueOf) : new String("Bad preview url: "));
                } else {
                    String queryParameter = uri.getQueryParameter("id");
                    String queryParameter2 = uri.getQueryParameter("gtm_auth");
                    String queryParameter3 = uri.getQueryParameter("gtm_preview");
                    if (!str.equals(queryParameter)) {
                        zzbbu.zzbh("Preview fails (container doesn't match the container specified by the asset)");
                    } else if (queryParameter == null || queryParameter.length() <= 0) {
                        String valueOf2 = String.valueOf(decode);
                        zzbbu.zzbh(valueOf2.length() != 0 ? "Bad preview url: ".concat(valueOf2) : new String("Bad preview url: "));
                    } else {
                        if (queryParameter3 == null || queryParameter3.length() != 0) {
                            if (queryParameter3 == null || queryParameter3.length() <= 0 || queryParameter2 == null || queryParameter2.length() <= 0) {
                                String valueOf3 = String.valueOf(decode);
                                zzbbu.zzbh(valueOf3.length() != 0 ? "Bad preview url: ".concat(valueOf3) : new String("Bad preview url: "));
                            } else {
                                this.zzbKc = zza.CONTAINER;
                                this.zzbHg = uri.getQuery();
                                this.zzbEU = queryParameter;
                            }
                        } else if (!queryParameter.equals(this.zzbEU) || this.zzbKc == zza.NONE) {
                            zzbbu.zzbh("Error in exiting preview mode. The container is not in preview.");
                        } else {
                            String valueOf4 = String.valueOf(this.zzbEU);
                            zzbbu.v(valueOf4.length() != 0 ? "Exit preview mode for container: ".concat(valueOf4) : new String("Exit preview mode for container: "));
                            this.zzbKc = zza.NONE;
                            this.zzbEU = null;
                            this.zzbHg = null;
                        }
                        z = true;
                    }
                }
            } catch (UnsupportedEncodingException e) {
                String valueOf5 = String.valueOf(e);
                zzbbu.zzbh(new StringBuilder(String.valueOf(valueOf5).length() + 32).append("Error decoding the preview url: ").append(valueOf5).toString());
            }
        }
        return z;
    }

    public boolean zzhH(String str) {
        return isPreview() && getContainerId().equals(str);
    }
}
