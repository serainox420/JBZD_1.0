package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.internal.zzxg;
/* loaded from: classes2.dex */
public class zzxf implements zzxg.zza {
    private Bitmap mBitmap;
    private final Context zzPB;
    private final ImageHints zzasZ;
    private Uri zzata;
    private zzxg zzatb;
    private zzxg.zzb zzatc;
    private boolean zzatd;
    private zza zzate;

    /* loaded from: classes2.dex */
    public interface zza {
        void zzc(Bitmap bitmap);
    }

    public zzxf(Context context) {
        this(context, new ImageHints(-1, 0, 0));
    }

    public zzxf(Context context, ImageHints imageHints) {
        this.zzPB = context;
        this.zzasZ = imageHints;
        this.zzatc = new zzxg.zzb();
        reset();
    }

    private void reset() {
        if (this.zzatb != null) {
            this.zzatb.cancel(true);
            this.zzatb = null;
        }
        this.zzata = null;
        this.mBitmap = null;
        this.zzatd = false;
    }

    public void clear() {
        reset();
        this.zzate = null;
    }

    @Override // com.google.android.gms.internal.zzxg.zza
    public void onPostExecute(Bitmap bitmap) {
        this.mBitmap = bitmap;
        this.zzatd = true;
        if (this.zzate != null) {
            this.zzate.zzc(this.mBitmap);
        }
        this.zzatb = null;
    }

    public void zza(zza zzaVar) {
        this.zzate = zzaVar;
    }

    public boolean zzo(Uri uri) {
        if (uri == null) {
            reset();
            return true;
        } else if (uri.equals(this.zzata)) {
            return this.zzatd;
        } else {
            reset();
            this.zzata = uri;
            if (this.zzasZ.getWidthInPixels() == 0 || this.zzasZ.getHeightInPixels() == 0) {
                this.zzatb = this.zzatc.zza(this.zzPB, this);
            } else {
                this.zzatb = this.zzatc.zza(this.zzPB, this.zzasZ.getWidthInPixels(), this.zzasZ.getHeightInPixels(), false, this);
            }
            this.zzatb.zzp(this.zzata);
            return false;
        }
    }
}
