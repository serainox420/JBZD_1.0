package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
/* loaded from: classes.dex */
public final class zzyy {
    public static final Charset zzawC;
    public static final String zzawD;
    public static final Api.zzf<zzyq> zzawy = new Api.zzf<>();
    public static final Api.zzf<zzzg> zzawz = new Api.zzf<>();
    public static final Api.zzf<Object> zzawA = new Api.zzf<>();
    public static final Api.zzf<Object> zzawB = new Api.zzf<>();

    static {
        Charset charset = null;
        try {
            charset = Charset.forName("UTF-8");
        } catch (IllegalCharsetNameException e) {
        } catch (UnsupportedCharsetException e2) {
        }
        zzawC = charset;
        zzawD = zzyr.zzcR("com.google.cast.multizone");
    }
}
