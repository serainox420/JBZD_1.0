package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzbkg;
/* loaded from: classes2.dex */
public class zzbkn extends zzbjz<zzbkf> {
    private final zzbko zzbPu;

    public zzbkn(Context context, zzbko zzbkoVar) {
        super(context, "TextNativeHandle");
        this.zzbPu = zzbkoVar;
        zzTS();
    }

    @Override // com.google.android.gms.internal.zzbjz
    protected void zzTP() throws RemoteException {
        zzTS().zzTW();
    }

    public zzbkh[] zza(Bitmap bitmap, zzbka zzbkaVar, zzbkj zzbkjVar) {
        if (!isOperational()) {
            return new zzbkh[0];
        }
        try {
            return zzTS().zza(com.google.android.gms.dynamic.zzd.zzA(bitmap), zzbkaVar, zzbkjVar);
        } catch (RemoteException e) {
            Log.e("TextNativeHandle", "Error calling native text recognizer", e);
            return new zzbkh[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbjz
    /* renamed from: zzd */
    public zzbkf zzb(DynamiteModule dynamiteModule, Context context) throws RemoteException, DynamiteModule.zza {
        return zzbkg.zza.zzfs(dynamiteModule.zzdT("com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator")).zza(com.google.android.gms.dynamic.zzd.zzA(context), this.zzbPu);
    }
}
