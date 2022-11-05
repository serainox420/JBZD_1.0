package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzbjp;
import com.google.android.gms.vision.barcode.Barcode;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class zzbjn extends zzbjz<zzbjo> {
    private final zzbjl zzbOF;

    public zzbjn(Context context, zzbjl zzbjlVar) {
        super(context, "BarcodeNativeHandle");
        this.zzbOF = zzbjlVar;
        zzTS();
    }

    @Override // com.google.android.gms.internal.zzbjz
    protected void zzTP() throws RemoteException {
        zzTS().zzTQ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbjz
    /* renamed from: zza */
    public zzbjo zzb(DynamiteModule dynamiteModule, Context context) throws RemoteException, DynamiteModule.zza {
        return zzbjp.zza.zzfo(dynamiteModule.zzdT("com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator")).zza(com.google.android.gms.dynamic.zzd.zzA(context), this.zzbOF);
    }

    public Barcode[] zza(Bitmap bitmap, zzbka zzbkaVar) {
        if (!isOperational()) {
            return new Barcode[0];
        }
        try {
            return zzTS().zzb(com.google.android.gms.dynamic.zzd.zzA(bitmap), zzbkaVar);
        } catch (RemoteException e) {
            Log.e("BarcodeNativeHandle", "Error calling native barcode detector", e);
            return new Barcode[0];
        }
    }

    public Barcode[] zza(ByteBuffer byteBuffer, zzbka zzbkaVar) {
        if (!isOperational()) {
            return new Barcode[0];
        }
        try {
            return zzTS().zza(com.google.android.gms.dynamic.zzd.zzA(byteBuffer), zzbkaVar);
        } catch (RemoteException e) {
            Log.e("BarcodeNativeHandle", "Error calling native barcode detector", e);
            return new Barcode[0];
        }
    }
}
