package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzbuc;
import com.google.firebase.a;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class zzbud {
    private static final Object zzcoJ = new Object();
    static volatile zzbud zzcoK;
    private Context mContext;
    private a zzcli;
    private zzbuc zzcoL;

    protected zzbud(a aVar) throws RemoteException {
        this.mContext = aVar.a();
        this.zzcli = aVar;
        try {
            this.zzcoL = zzbuc.zza.zzfT(DynamiteModule.zza(this.mContext, DynamiteModule.zzaRU, "com.google.android.gms.firebasestorage").zzdT("com.google.firebase.storage.network.NetworkRequestFactoryImpl"));
            if (this.zzcoL != null) {
                return;
            }
            Log.e("NetworkRqFactoryProxy", "Unable to load Firebase Storage Network layer.");
            throw new RemoteException();
        } catch (DynamiteModule.zza e) {
            Log.e("NetworkRqFactoryProxy", "NetworkRequestFactoryProxy failed with a RemoteException:", e);
            throw new RemoteException();
        }
    }

    private zzbue zzf(zzbue zzbueVar) {
        zzbueVar.zzaD("x-firebase-gmpid", this.zzcli.c().b());
        return zzbueVar;
    }

    public static zzbud zzj(a aVar) throws RemoteException {
        if (zzcoK == null) {
            synchronized (zzcoJ) {
                if (zzcoK == null) {
                    zzcoK = new zzbud(aVar);
                }
            }
        }
        return zzcoK;
    }

    public String zzA(Uri uri) {
        try {
            return this.zzcoL.zzA(uri);
        } catch (RemoteException e) {
            Log.e("NetworkRqFactoryProxy", "getDefaultURL failed with a RemoteException:", e);
            return null;
        }
    }

    public zzbue zzC(Uri uri) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zza(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext))));
    }

    public zzbue zzD(Uri uri) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zzb(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext))));
    }

    public zzbue zza(Uri uri, long j) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zza(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext), j)));
    }

    public zzbue zza(Uri uri, String str) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zzb(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext), str)));
    }

    public zzbue zza(Uri uri, String str, byte[] bArr, long j, int i, boolean z) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zza(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext), str, com.google.android.gms.dynamic.zzd.zzA(bArr), j, i, z)));
    }

    public zzbue zza(Uri uri, JSONObject jSONObject) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zza(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext), com.google.android.gms.dynamic.zzd.zzA(jSONObject))));
    }

    public zzbue zza(Uri uri, JSONObject jSONObject, String str) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zza(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext), com.google.android.gms.dynamic.zzd.zzA(jSONObject), str)));
    }

    public String zzade() {
        try {
            return this.zzcoL.zzade();
        } catch (RemoteException e) {
            Log.e("NetworkRqFactoryProxy", "getBackendAuthority failed with a RemoteException:", e);
            return null;
        }
    }

    public zzbue zzb(Uri uri, String str) throws RemoteException {
        return zzf(new zzbue(this.zzcoL.zzc(uri, com.google.android.gms.dynamic.zzd.zzA(this.mContext), str)));
    }
}
