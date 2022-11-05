package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzhf;
@zzme
/* loaded from: classes.dex */
public class zzgu extends zzhf.zza {
    private final Uri mUri;
    private final Drawable zzGn;
    private final double zzGo;

    public zzgu(Drawable drawable, Uri uri, double d) {
        this.zzGn = drawable;
        this.mUri = uri;
        this.zzGo = d;
    }

    @Override // com.google.android.gms.internal.zzhf
    public double getScale() {
        return this.zzGo;
    }

    @Override // com.google.android.gms.internal.zzhf
    public Uri getUri() throws RemoteException {
        return this.mUri;
    }

    @Override // com.google.android.gms.internal.zzhf
    public IObjectWrapper zzfP() throws RemoteException {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzGn);
    }
}
