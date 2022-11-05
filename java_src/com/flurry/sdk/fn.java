package com.flurry.sdk;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import java.io.File;
/* loaded from: classes2.dex */
public class fn {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2682a = fn.class.getSimpleName();

    public final void a(final ImageView imageView, int i, String str) {
        ab abVar = i.a().i;
        File a2 = ab.a(i, str);
        if (a2 == null) {
            km.a(3, f2682a, "Cached asset not available for image:" + str);
            ks ksVar = new ks();
            ksVar.f = str;
            ksVar.w = 40000;
            ksVar.g = ku.a.kGet;
            ksVar.d = new eb();
            ksVar.f2978a = new ks.a<Void, Bitmap>() { // from class: com.flurry.sdk.fn.1
                @Override // com.flurry.sdk.ks.a
                public final /* synthetic */ void a(ks<Void, Bitmap> ksVar2, Bitmap bitmap) {
                    final Bitmap bitmap2 = bitmap;
                    km.a(3, fn.f2682a, "Image request -- HTTP status code is:" + ksVar2.p);
                    if (!ksVar2.c()) {
                        return;
                    }
                    jy.a().a(new ma() { // from class: com.flurry.sdk.fn.1.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            imageView.setImageBitmap(bitmap2);
                        }
                    });
                }
            };
            jw.a().a((Object) this, (fn) ksVar);
            return;
        }
        km.a(3, f2682a, "Cached asset present for image:" + str);
        final String absolutePath = a2.getAbsolutePath();
        jy.a().a(new ma() { // from class: com.flurry.sdk.fn.2
            @Override // com.flurry.sdk.ma
            public final void a() {
                imageView.setImageBitmap(BitmapFactory.decodeFile(absolutePath));
            }
        });
    }

    @TargetApi(16)
    public final void a(final View view, int i, String str) {
        ab abVar = i.a().i;
        File a2 = ab.a(i, str);
        if (a2 == null) {
            km.a(3, f2682a, "Cached asset not available for image:" + str);
            ks ksVar = new ks();
            ksVar.f = str;
            ksVar.w = 40000;
            ksVar.g = ku.a.kGet;
            ksVar.d = new eb();
            ksVar.f2978a = new ks.a<Void, Bitmap>() { // from class: com.flurry.sdk.fn.3
                @Override // com.flurry.sdk.ks.a
                public final /* synthetic */ void a(ks<Void, Bitmap> ksVar2, Bitmap bitmap) {
                    final Bitmap bitmap2 = bitmap;
                    km.a(3, fn.f2682a, "Image request -- HTTP status code is:" + ksVar2.p);
                    if (!ksVar2.c()) {
                        return;
                    }
                    jy.a().a(new ma() { // from class: com.flurry.sdk.fn.3.1
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            if (Build.VERSION.SDK_INT < 16) {
                                view.setBackgroundDrawable(new BitmapDrawable(bitmap2));
                            } else {
                                view.setBackground(new BitmapDrawable(bitmap2));
                            }
                        }
                    });
                }
            };
            jw.a().a((Object) this, (fn) ksVar);
            return;
        }
        km.a(3, f2682a, "Cached asset present for image:" + str);
        final String absolutePath = a2.getAbsolutePath();
        jy.a().a(new ma() { // from class: com.flurry.sdk.fn.4
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (Build.VERSION.SDK_INT < 16) {
                    view.setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeFile(absolutePath)));
                } else {
                    view.setBackground(new BitmapDrawable(BitmapFactory.decodeFile(absolutePath)));
                }
            }
        });
    }

    public static Bitmap a(String str) {
        Bitmap bitmap;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            bitmap = mediaMetadataRetriever.getFrameAtTime(3000L);
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException e) {
            }
        } catch (IllegalArgumentException e2) {
            try {
                mediaMetadataRetriever.release();
                bitmap = null;
            } catch (RuntimeException e3) {
                bitmap = null;
            }
        } catch (RuntimeException e4) {
            try {
                mediaMetadataRetriever.release();
                bitmap = null;
            } catch (RuntimeException e5) {
                bitmap = null;
            }
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException e6) {
            }
            throw th;
        }
        if (bitmap == null) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, 1200, 700, true);
    }
}
