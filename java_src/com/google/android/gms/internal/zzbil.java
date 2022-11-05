package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class zzbil implements Runnable {
    private final Context mContext;
    private final zzbie zzbLR;
    private final zzbia zzbMr;
    private final zzbik zzbMs;
    private final zzbih zzbMt;

    public zzbil(Context context, zzbie zzbieVar, zzbia zzbiaVar) {
        this(context, zzbieVar, zzbiaVar, new zzbik(), new zzbih());
    }

    zzbil(Context context, zzbie zzbieVar, zzbia zzbiaVar, zzbik zzbikVar, zzbih zzbihVar) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
        this.zzbMr = (zzbia) com.google.android.gms.common.internal.zzac.zzw(zzbiaVar);
        this.zzbLR = zzbieVar;
        this.zzbMs = zzbikVar;
        this.zzbMt = zzbihVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        zzib();
    }

    boolean zzST() {
        if (!zzbW("android.permission.INTERNET")) {
            zzbbu.e("Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />");
            return false;
        } else if (!zzbW("android.permission.ACCESS_NETWORK_STATE")) {
            zzbbu.e("Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />");
            return false;
        } else {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return true;
            }
            zzbbu.zzbh("No network connectivity - Offline");
            return false;
        }
    }

    boolean zzbW(String str) {
        return this.mContext.getPackageManager().checkPermission(str, this.mContext.getPackageName()) == 0;
    }

    void zzib() {
        if (!zzST()) {
            this.zzbMr.zzA(0, 0);
            return;
        }
        zzbbu.v("Starting to load resource from Network.");
        zzbij zzSS = this.zzbMs.zzSS();
        InputStream inputStream = null;
        try {
            String zzb = this.zzbMt.zzb(this.zzbLR.zzSK());
            String valueOf = String.valueOf(zzb);
            zzbbu.v(valueOf.length() != 0 ? "Loading resource from ".concat(valueOf) : new String("Loading resource from "));
            try {
                try {
                    inputStream = zzSS.zzhX(zzb);
                } catch (FileNotFoundException e) {
                    String valueOf2 = String.valueOf(zzb);
                    zzbbu.e(valueOf2.length() != 0 ? "NetworkLoader: No data was retrieved from the given url: ".concat(valueOf2) : new String("NetworkLoader: No data was retrieved from the given url: "));
                    this.zzbMr.zzA(2, 0);
                    zzSS.close();
                    return;
                }
            } catch (zzbin e2) {
                String valueOf3 = String.valueOf(zzb);
                zzbbu.e(valueOf3.length() != 0 ? "NetworkLoader: Error when loading resource for url: ".concat(valueOf3) : new String("NetworkLoader: Error when loading resource for url: "));
                this.zzbMr.zzA(3, 0);
            } catch (IOException e3) {
                String valueOf4 = String.valueOf(e3.getMessage());
                zzbbu.zzb(new StringBuilder(String.valueOf(zzb).length() + 54 + String.valueOf(valueOf4).length()).append("NetworkLoader: Error when loading resource from url: ").append(zzb).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf4).toString(), e3);
                this.zzbMr.zzA(1, 0);
                zzSS.close();
                return;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                com.google.android.gms.common.util.zzp.zza(inputStream, byteArrayOutputStream);
                this.zzbMr.zzN(byteArrayOutputStream.toByteArray());
                zzSS.close();
            } catch (IOException e4) {
                String valueOf5 = String.valueOf(e4.getMessage());
                zzbbu.zzb(new StringBuilder(String.valueOf(zzb).length() + 66 + String.valueOf(valueOf5).length()).append("NetworkLoader: Error when parsing downloaded resources from url: ").append(zzb).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf5).toString(), e4);
                this.zzbMr.zzA(2, 0);
                zzSS.close();
            }
        } catch (Throwable th) {
            zzSS.close();
            throw th;
        }
    }
}
