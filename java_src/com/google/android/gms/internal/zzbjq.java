package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.PointF;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzbjw;
import com.google.android.gms.vision.face.Face;
import com.google.android.gms.vision.face.Landmark;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class zzbjq extends zzbjz<zzbjv> {
    private final zzbjt zzbOX;

    public zzbjq(Context context, zzbjt zzbjtVar) {
        super(context, "FaceNativeHandle");
        this.zzbOX = zzbjtVar;
        zzTS();
    }

    private Face zza(zzbjr zzbjrVar) {
        return new Face(zzbjrVar.id, new PointF(zzbjrVar.centerX, zzbjrVar.centerY), zzbjrVar.width, zzbjrVar.height, zzbjrVar.zzbOY, zzbjrVar.zzbOZ, zzb(zzbjrVar), zzbjrVar.zzbPb, zzbjrVar.zzbPc, zzbjrVar.zzbPd);
    }

    private Landmark zza(zzbjx zzbjxVar) {
        return new Landmark(new PointF(zzbjxVar.x, zzbjxVar.y), zzbjxVar.type);
    }

    private Landmark[] zzb(zzbjr zzbjrVar) {
        zzbjx[] zzbjxVarArr = zzbjrVar.zzbPa;
        if (zzbjxVarArr == null) {
            return new Landmark[0];
        }
        Landmark[] landmarkArr = new Landmark[zzbjxVarArr.length];
        for (int i = 0; i < zzbjxVarArr.length; i++) {
            landmarkArr[i] = zza(zzbjxVarArr[i]);
        }
        return landmarkArr;
    }

    @Override // com.google.android.gms.internal.zzbjz
    protected void zzTP() throws RemoteException {
        zzTS().zzTQ();
    }

    public Face[] zzb(ByteBuffer byteBuffer, zzbka zzbkaVar) {
        if (!isOperational()) {
            return new Face[0];
        }
        try {
            zzbjr[] zzc = zzTS().zzc(com.google.android.gms.dynamic.zzd.zzA(byteBuffer), zzbkaVar);
            Face[] faceArr = new Face[zzc.length];
            for (int i = 0; i < zzc.length; i++) {
                faceArr[i] = zza(zzc[i]);
            }
            return faceArr;
        } catch (RemoteException e) {
            Log.e("FaceNativeHandle", "Could not call native face detector", e);
            return new Face[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbjz
    /* renamed from: zzc */
    public zzbjv zzb(DynamiteModule dynamiteModule, Context context) throws RemoteException, DynamiteModule.zza {
        return zzbjw.zza.zzfq(dynamiteModule.zzdT("com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator")).zza(com.google.android.gms.dynamic.zzd.zzA(context), this.zzbOX);
    }

    public boolean zzoh(int i) {
        if (!isOperational()) {
            return false;
        }
        try {
            return zzTS().zzoh(i);
        } catch (RemoteException e) {
            Log.e("FaceNativeHandle", "Could not call native face detector", e);
            return false;
        }
    }
}
