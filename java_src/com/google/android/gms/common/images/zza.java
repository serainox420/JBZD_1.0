package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzacb;
import com.google.android.gms.internal.zzacc;
import com.google.android.gms.internal.zzacd;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public abstract class zza {
    final C0174zza zzaEu;
    protected int zzaEw;
    protected int zzaEv = 0;
    protected boolean zzaEx = false;
    private boolean zzaEy = true;
    private boolean zzaEz = false;
    private boolean zzaEA = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.common.images.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0174zza {
        public final Uri uri;

        public C0174zza(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0174zza)) {
                return false;
            }
            if (this != obj) {
                return zzaa.equal(((C0174zza) obj).uri, this.uri);
            }
            return true;
        }

        public int hashCode() {
            return zzaa.hashCode(this.uri);
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zza {
        private WeakReference<ImageView> zzaEB;

        public zzb(ImageView imageView, int i) {
            super(null, i);
            com.google.android.gms.common.internal.zzc.zzt(imageView);
            this.zzaEB = new WeakReference<>(imageView);
        }

        public zzb(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzc.zzt(imageView);
            this.zzaEB = new WeakReference<>(imageView);
        }

        private void zza(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
            boolean z4 = !z2 && !z3;
            if (z4 && (imageView instanceof zzacc)) {
                int zzxu = ((zzacc) imageView).zzxu();
                if (this.zzaEw != 0 && zzxu == this.zzaEw) {
                    return;
                }
            }
            boolean zzc = zzc(z, z2);
            Drawable zza = zzc ? zza(imageView.getDrawable(), drawable) : drawable;
            imageView.setImageDrawable(zza);
            if (imageView instanceof zzacc) {
                zzacc zzaccVar = (zzacc) imageView;
                zzaccVar.zzr(z3 ? this.zzaEu.uri : null);
                zzaccVar.zzcQ(z4 ? this.zzaEw : 0);
            }
            if (zzc) {
                ((zzacb) zza).startTransition(250);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageView imageView = this.zzaEB.get();
            ImageView imageView2 = ((zzb) obj).zzaEB.get();
            return (imageView2 == null || imageView == null || !zzaa.equal(imageView2, imageView)) ? false : true;
        }

        public int hashCode() {
            return 0;
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageView imageView = this.zzaEB.get();
            if (imageView != null) {
                zza(imageView, drawable, z, z2, z3);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zza {
        private WeakReference<ImageManager.OnImageLoadedListener> zzaEC;

        public zzc(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzc.zzt(onImageLoadedListener);
            this.zzaEC = new WeakReference<>(onImageLoadedListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc zzcVar = (zzc) obj;
            ImageManager.OnImageLoadedListener onImageLoadedListener = this.zzaEC.get();
            ImageManager.OnImageLoadedListener onImageLoadedListener2 = zzcVar.zzaEC.get();
            return onImageLoadedListener2 != null && onImageLoadedListener != null && zzaa.equal(onImageLoadedListener2, onImageLoadedListener) && zzaa.equal(zzcVar.zzaEu, this.zzaEu);
        }

        public int hashCode() {
            return zzaa.hashCode(this.zzaEu);
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageManager.OnImageLoadedListener onImageLoadedListener;
            if (z2 || (onImageLoadedListener = this.zzaEC.get()) == null) {
                return;
            }
            onImageLoadedListener.onImageLoaded(this.zzaEu.uri, drawable, z3);
        }
    }

    public zza(Uri uri, int i) {
        this.zzaEw = 0;
        this.zzaEu = new C0174zza(uri);
        this.zzaEw = i;
    }

    private Drawable zza(Context context, zzacd zzacdVar, int i) {
        return context.getResources().getDrawable(i);
    }

    protected zzacb zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzacb) {
            drawable = ((zzacb) drawable).zzxs();
        }
        return new zzacb(drawable, drawable2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzc.zzt(bitmap);
        zza(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(Context context, zzacd zzacdVar) {
        if (this.zzaEA) {
            zza(null, false, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(Context context, zzacd zzacdVar, boolean z) {
        Drawable drawable = null;
        if (this.zzaEw != 0) {
            drawable = zza(context, zzacdVar, this.zzaEw);
        }
        zza(drawable, z, false, false);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    protected boolean zzc(boolean z, boolean z2) {
        return this.zzaEy && !z2 && !z;
    }

    public void zzcO(int i) {
        this.zzaEw = i;
    }
}
