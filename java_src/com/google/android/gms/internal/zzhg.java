package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
@zzme
/* loaded from: classes.dex */
public class zzhg extends NativeAd.Image {
    private final Drawable mDrawable;
    private final Uri mUri;
    private final double zzGo;
    private final zzhf zzHq;

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(2:2|3)|(9:5|6|7|8|9|10|11|12|13)|22|6|7|8|9|10|11|12|13) */
    /* JADX WARN: Can't wrap try/catch for region: R(13:1|2|3|(9:5|6|7|8|9|10|11|12|13)|22|6|7|8|9|10|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
        com.google.android.gms.internal.zzqf.zzb("Failed to get uri.", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        com.google.android.gms.internal.zzqf.zzb("Failed to get scale.", r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzhg(zzhf zzhfVar) {
        Drawable drawable;
        IObjectWrapper zzfP;
        Uri uri = null;
        this.zzHq = zzhfVar;
        try {
            zzfP = this.zzHq.zzfP();
        } catch (RemoteException e) {
            zzqf.zzb("Failed to get drawable.", e);
        }
        if (zzfP != null) {
            drawable = (Drawable) com.google.android.gms.dynamic.zzd.zzF(zzfP);
            this.mDrawable = drawable;
            uri = this.zzHq.getUri();
            this.mUri = uri;
            double d = 1.0d;
            d = this.zzHq.getScale();
            this.zzGo = d;
        }
        drawable = null;
        this.mDrawable = drawable;
        uri = this.zzHq.getUri();
        this.mUri = uri;
        double d2 = 1.0d;
        d2 = this.zzHq.getScale();
        this.zzGo = d2;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Drawable getDrawable() {
        return this.mDrawable;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public double getScale() {
        return this.zzGo;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Uri getUri() {
        return this.mUri;
    }
}
