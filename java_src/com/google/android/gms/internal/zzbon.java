package com.google.android.gms.internal;

import java.net.URI;
/* loaded from: classes2.dex */
public class zzbon {
    private final String zzaGP;
    private final String zzcbI;
    private final boolean zzcbJ;

    public zzbon(String str, String str2, boolean z) {
        this.zzcbI = str;
        this.zzaGP = str2;
        this.zzcbJ = z;
    }

    public static URI zza(String str, boolean z, String str2, String str3) {
        String str4 = z ? "wss" : "ws";
        String valueOf = String.valueOf("v");
        String valueOf2 = String.valueOf("5");
        String sb = new StringBuilder(String.valueOf(str4).length() + 13 + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length()).append(str4).append("://").append(str).append("/.ws?ns=").append(str2).append("&").append(valueOf).append("=").append(valueOf2).toString();
        if (str3 != null) {
            String valueOf3 = String.valueOf(sb);
            String valueOf4 = String.valueOf("&ls=");
            sb = new StringBuilder(String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(str3).length()).append(valueOf3).append(valueOf4).append(str3).toString();
        }
        return URI.create(sb);
    }

    public String getHost() {
        return this.zzcbI;
    }

    public String getNamespace() {
        return this.zzaGP;
    }

    public boolean isSecure() {
        return this.zzcbJ;
    }

    public String toString() {
        String str = this.zzcbJ ? "s" : "";
        String str2 = this.zzcbI;
        return new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(str2).length()).append("http").append(str).append("://").append(str2).toString();
    }
}
