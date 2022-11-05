package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.f.g;
import android.util.Log;
import android.widget.ImageView;
import com.facebook.common.util.ByteConstants;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.images.zza;
import com.google.android.gms.internal.zzacd;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public final class ImageManager {
    private static final Object zzaEf = new Object();
    private static HashSet<Uri> zzaEg = new HashSet<>();
    private static ImageManager zzaEh;
    private static ImageManager zzaEi;
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService zzaEj = Executors.newFixedThreadPool(4);
    private final zza zzaEk;
    private final zzacd zzaEl;
    private final Map<com.google.android.gms.common.images.zza, ImageReceiver> zzaEm;
    private final Map<Uri, ImageReceiver> zzaEn;
    private final Map<Uri, Long> zzaEo;

    /* JADX INFO: Access modifiers changed from: private */
    @KeepName
    /* loaded from: classes2.dex */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<com.google.android.gms.common.images.zza> zzaEp;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
            this.zzaEp = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.zzaEj.execute(new zzb(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public void zzb(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzc.zzdj("ImageReceiver.addImageRequest() must be called in the main thread");
            this.zzaEp.add(zzaVar);
        }

        public void zzc(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzc.zzdj("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.zzaEp.remove(zzaVar);
        }

        public void zzxr() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }
    }

    /* loaded from: classes2.dex */
    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class zza extends g<zza.C0174zza, Bitmap> {
        public zza(Context context) {
            super(zzaR(context));
        }

        private static int zzaR(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (int) (((context.getApplicationInfo().flags & ByteConstants.MB) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * ByteConstants.MB * 0.33f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.f.g
        /* renamed from: zza */
        public int sizeOf(zza.C0174zza c0174zza, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.f.g
        /* renamed from: zza */
        public void entryRemoved(boolean z, zza.C0174zza c0174zza, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, c0174zza, bitmap, bitmap2);
        }
    }

    /* loaded from: classes2.dex */
    private final class zzb implements Runnable {
        private final Uri mUri;
        private final ParcelFileDescriptor zzaEr;

        public zzb(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.zzaEr = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzc.zzdk("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmap = null;
            if (this.zzaEr != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.zzaEr.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.mUri);
                    Log.e("ImageManager", new StringBuilder(String.valueOf(valueOf).length() + 34).append("OOM while loading bitmap for uri: ").append(valueOf).toString(), e);
                    z = true;
                }
                try {
                    this.zzaEr.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(new zze(this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.mUri);
                Log.w("ImageManager", new StringBuilder(String.valueOf(valueOf2).length() + 32).append("Latch interrupted while posting ").append(valueOf2).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class zzc implements Runnable {
        private final com.google.android.gms.common.images.zza zzaEs;

        public zzc(com.google.android.gms.common.images.zza zzaVar) {
            this.zzaEs = zzaVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzc.zzdj("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zzaEm.get(this.zzaEs);
            if (imageReceiver != null) {
                ImageManager.this.zzaEm.remove(this.zzaEs);
                imageReceiver.zzc(this.zzaEs);
            }
            zza.C0174zza c0174zza = this.zzaEs.zzaEu;
            if (c0174zza.uri == null) {
                this.zzaEs.zza(ImageManager.this.mContext, ImageManager.this.zzaEl, true);
                return;
            }
            Bitmap zza = ImageManager.this.zza(c0174zza);
            if (zza != null) {
                this.zzaEs.zza(ImageManager.this.mContext, zza, true);
                return;
            }
            Long l = (Long) ImageManager.this.zzaEo.get(c0174zza.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.zzaEs.zza(ImageManager.this.mContext, ImageManager.this.zzaEl, true);
                    return;
                }
                ImageManager.this.zzaEo.remove(c0174zza.uri);
            }
            this.zzaEs.zza(ImageManager.this.mContext, ImageManager.this.zzaEl);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.zzaEn.get(c0174zza.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = new ImageReceiver(c0174zza.uri);
                ImageManager.this.zzaEn.put(c0174zza.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.zzaEs);
            if (!(this.zzaEs instanceof zza.zzc)) {
                ImageManager.this.zzaEm.put(this.zzaEs, imageReceiver2);
            }
            synchronized (ImageManager.zzaEf) {
                if (!ImageManager.zzaEg.contains(c0174zza.uri)) {
                    ImageManager.zzaEg.add(c0174zza.uri);
                    imageReceiver2.zzxr();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzd implements ComponentCallbacks2 {
        private final zza zzaEk;

        public zzd(zza zzaVar) {
            this.zzaEk = zzaVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.zzaEk.evictAll();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.zzaEk.evictAll();
            } else if (i < 20) {
            } else {
                this.zzaEk.trimToSize(this.zzaEk.size() / 2);
            }
        }
    }

    /* loaded from: classes2.dex */
    private final class zze implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        private boolean zzaEt;
        private final CountDownLatch zztj;

        public zze(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.zzaEt = z;
            this.zztj = countDownLatch;
        }

        private void zza(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.zzaEp;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                com.google.android.gms.common.images.zza zzaVar = (com.google.android.gms.common.images.zza) arrayList.get(i);
                if (z) {
                    zzaVar.zza(ImageManager.this.mContext, this.mBitmap, false);
                } else {
                    ImageManager.this.zzaEo.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    zzaVar.zza(ImageManager.this.mContext, ImageManager.this.zzaEl, false);
                }
                if (!(zzaVar instanceof zza.zzc)) {
                    ImageManager.this.zzaEm.remove(zzaVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzc.zzdj("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.zzaEk != null) {
                if (this.zzaEt) {
                    ImageManager.this.zzaEk.evictAll();
                    System.gc();
                    this.zzaEt = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.zzaEk.put(new zza.C0174zza(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.zzaEn.remove(this.mUri);
            if (imageReceiver != null) {
                zza(imageReceiver, z);
            }
            this.zztj.countDown();
            synchronized (ImageManager.zzaEf) {
                ImageManager.zzaEg.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        if (z) {
            this.zzaEk = new zza(this.mContext);
            this.mContext.registerComponentCallbacks(new zzd(this.zzaEk));
        } else {
            this.zzaEk = null;
        }
        this.zzaEl = new zzacd();
        this.zzaEm = new HashMap();
        this.zzaEn = new HashMap();
        this.zzaEo = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzg(context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap zza(zza.C0174zza c0174zza) {
        if (this.zzaEk == null) {
            return null;
        }
        return this.zzaEk.get(c0174zza);
    }

    public static ImageManager zzg(Context context, boolean z) {
        if (z) {
            if (zzaEi == null) {
                zzaEi = new ImageManager(context, true);
            }
            return zzaEi;
        }
        if (zzaEh == null) {
            zzaEh = new ImageManager(context, false);
        }
        return zzaEh;
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new zza.zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new zza.zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza.zzb zzbVar = new zza.zzb(imageView, uri);
        zzbVar.zzcO(i);
        zza(zzbVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new zza.zzc(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza.zzc zzcVar = new zza.zzc(onImageLoadedListener, uri);
        zzcVar.zzcO(i);
        zza(zzcVar);
    }

    public void zza(com.google.android.gms.common.images.zza zzaVar) {
        com.google.android.gms.common.internal.zzc.zzdj("ImageManager.loadImage() must be called in the main thread");
        new zzc(zzaVar).run();
    }
}
