package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.pubmatic.sdk.banner.mraid.Consts;
/* loaded from: classes.dex */
public class zzrz {
    private final zzsc zzadO;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzrz(zzsc zzscVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzscVar);
        this.zzadO = zzscVar;
    }

    private void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        zztd zztdVar = null;
        if (this.zzadO != null) {
            zztdVar = this.zzadO.zzoe();
        }
        if (zztdVar != null) {
            zztdVar.zza(i, str, obj, obj2, obj3);
            return;
        }
        String str2 = zzsw.zzafl.get();
        if (!Log.isLoggable(str2, i)) {
            return;
        }
        Log.println(i, str2, zzc(str, obj, obj2, obj3));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String zzc(String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            str = "";
        }
        String zzk = zzk(obj);
        String zzk2 = zzk(obj2);
        String zzk3 = zzk(obj3);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(zzk)) {
            sb.append(str2);
            sb.append(zzk);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(zzk2)) {
            sb.append(str2);
            sb.append(zzk2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(zzk3)) {
            sb.append(str2);
            sb.append(zzk3);
        }
        return sb.toString();
    }

    private static String zzk(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Boolean) {
            return obj == Boolean.TRUE ? "true" : Consts.False;
        }
        return obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.zzadO.getContext();
    }

    public void zza(String str, Object obj) {
        zza(2, str, obj, null, null);
    }

    public void zza(String str, Object obj, Object obj2) {
        zza(2, str, obj, obj2, null);
    }

    public void zza(String str, Object obj, Object obj2, Object obj3) {
        zza(3, str, obj, obj2, obj3);
    }

    public void zzb(String str, Object obj) {
        zza(3, str, obj, null, null);
    }

    public void zzb(String str, Object obj, Object obj2) {
        zza(3, str, obj, obj2, null);
    }

    public void zzb(String str, Object obj, Object obj2, Object obj3) {
        zza(5, str, obj, obj2, obj3);
    }

    public void zzbP(String str) {
        zza(2, str, null, null, null);
    }

    public void zzbQ(String str) {
        zza(3, str, null, null, null);
    }

    public void zzbR(String str) {
        zza(4, str, null, null, null);
    }

    public void zzbS(String str) {
        zza(5, str, null, null, null);
    }

    public void zzbT(String str) {
        zza(6, str, null, null, null);
    }

    public void zzc(String str, Object obj) {
        zza(4, str, obj, null, null);
    }

    public void zzc(String str, Object obj, Object obj2) {
        zza(5, str, obj, obj2, null);
    }

    public void zzd(String str, Object obj) {
        zza(5, str, obj, null, null);
    }

    public void zzd(String str, Object obj, Object obj2) {
        zza(6, str, obj, obj2, null);
    }

    public void zze(String str, Object obj) {
        zza(6, str, obj, null, null);
    }

    public boolean zzkI() {
        return Log.isLoggable(zzsw.zzafl.get(), 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzry zzmA() {
        return this.zzadO.zzmA();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zztn zzmB() {
        return this.zzadO.zzmB();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzmR() {
        this.zzadO.zzmR();
    }

    public GoogleAnalytics zzmu() {
        return this.zzadO.zzof();
    }

    public zzsc zznQ() {
        return this.zzadO;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.google.android.gms.common.util.zze zznR() {
        return this.zzadO.zznR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zztd zznS() {
        return this.zzadO.zznS();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsp zznT() {
        return this.zzadO.zznT();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.google.android.gms.analytics.zzh zznU() {
        return this.zzadO.zznU();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzst zznV() {
        return this.zzadO.zznV();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zztg zznW() {
        return this.zzadO.zznW();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsk zznX() {
        return this.zzadO.zzoi();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzrx zznY() {
        return this.zzadO.zzoh();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsh zznZ() {
        return this.zzadO.zznZ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzss zzoa() {
        return this.zzadO.zzoa();
    }
}
