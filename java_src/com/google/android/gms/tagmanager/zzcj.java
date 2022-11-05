package com.google.android.gms.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
/* loaded from: classes2.dex */
class zzcj {
    private static zzcj zzbHd;
    private volatile String zzbEU;
    private volatile zza zzbHe;
    private volatile String zzbHf;
    private volatile String zzbHg;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum zza {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    zzcj() {
        clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzcj zzRe() {
        zzcj zzcjVar;
        synchronized (zzcj.class) {
            if (zzbHd == null) {
                zzbHd = new zzcj();
            }
            zzcjVar = zzbHd;
        }
        return zzcjVar;
    }

    private String zzhn(String str) {
        return str.split("&")[0].split("=")[1];
    }

    private String zzw(Uri uri) {
        return uri.getQuery().replace("&gtm_debug=x", "");
    }

    void clear() {
        this.zzbHe = zza.NONE;
        this.zzbHf = null;
        this.zzbEU = null;
        this.zzbHg = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getContainerId() {
        return this.zzbEU;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza zzRf() {
        return this.zzbHe;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzRg() {
        return this.zzbHf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean zzv(Uri uri) {
        boolean z = true;
        synchronized (this) {
            try {
                String decode = URLDecoder.decode(uri.toString(), "UTF-8");
                if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                    String valueOf = String.valueOf(decode);
                    zzbo.v(valueOf.length() != 0 ? "Container preview url: ".concat(valueOf) : new String("Container preview url: "));
                    if (decode.matches(".*?&gtm_debug=x$")) {
                        this.zzbHe = zza.CONTAINER_DEBUG;
                    } else {
                        this.zzbHe = zza.CONTAINER;
                    }
                    this.zzbHg = zzw(uri);
                    if (this.zzbHe == zza.CONTAINER || this.zzbHe == zza.CONTAINER_DEBUG) {
                        String valueOf2 = String.valueOf("/r?");
                        String valueOf3 = String.valueOf(this.zzbHg);
                        this.zzbHf = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                    }
                    this.zzbEU = zzhn(this.zzbHg);
                } else if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                    String valueOf4 = String.valueOf(decode);
                    zzbo.zzbh(valueOf4.length() != 0 ? "Invalid preview uri: ".concat(valueOf4) : new String("Invalid preview uri: "));
                    z = false;
                } else if (zzhn(uri.getQuery()).equals(this.zzbEU)) {
                    String valueOf5 = String.valueOf(this.zzbEU);
                    zzbo.v(valueOf5.length() != 0 ? "Exit preview mode for container: ".concat(valueOf5) : new String("Exit preview mode for container: "));
                    this.zzbHe = zza.NONE;
                    this.zzbHf = null;
                } else {
                    z = false;
                }
            } catch (UnsupportedEncodingException e) {
                z = false;
            }
        }
        return z;
    }
}
