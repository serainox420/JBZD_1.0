package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import com.flurry.sdk.n;
import com.millennialmedia.NativeAd;
import java.io.File;
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3046a = m.class.getSimpleName();

    public static String a(de deVar, int i) {
        ab abVar = i.a().i;
        File a2 = ab.a(i, deVar.c);
        return a2 == null ? deVar.c : "file://" + a2.getAbsolutePath();
    }

    public final void a(final de deVar, final View view, final int i) {
        n.a aVar;
        if (deVar != null && view != null) {
            switch (deVar.b) {
                case STRING:
                    if (deVar != null && df.STRING.equals(deVar.b) && view != null) {
                        if (NativeAd.COMPONENT_ID_CALL_TO_ACTION.equals(deVar.f2530a) || ("clickToCall".equals(deVar.f2530a) && (view instanceof Button))) {
                            Button button = (Button) view;
                            button.setText(deVar.c);
                            if (NativeAd.COMPONENT_ID_CALL_TO_ACTION.equals(deVar.f2530a) || "clickToCall".equals(deVar.f2530a)) {
                                if ("clickToCall".equals(deVar.f2530a)) {
                                    aVar = n.a.CLICK_TO_CALL;
                                } else {
                                    aVar = n.a.CALL_TO_ACTION;
                                }
                                n nVar = new n(aVar);
                                nVar.f3064a = button;
                                nVar.b = i;
                                ki.a().a(nVar);
                                return;
                            }
                            return;
                        } else if (!(view instanceof TextView)) {
                            km.e(f3046a, "The view must be an instance of TextView in order to load the asset");
                            return;
                        } else {
                            ((TextView) view).setText(deVar.c);
                            return;
                        }
                    }
                    return;
                case IMAGE:
                    if (deVar != null && !TextUtils.isEmpty(deVar.c) && df.IMAGE.equals(deVar.b)) {
                        if (view == null || !(view instanceof ImageView)) {
                            km.e(f3046a, "The view must be an instance of ImageView in order to load the asset");
                            return;
                        } else {
                            jy.a().b(new ma() { // from class: com.flurry.sdk.m.1
                                @Override // com.flurry.sdk.ma
                                public final void a() {
                                    m.a(m.this, deVar, (ImageView) view, i);
                                }
                            });
                            return;
                        }
                    }
                    return;
                case VIDEO:
                case VAST_VIDEO:
                    final ViewGroup viewGroup = (ViewGroup) view;
                    if (deVar != null && viewGroup != null && !TextUtils.isEmpty(deVar.c)) {
                        if (df.VIDEO.equals(deVar.b) || df.VAST_VIDEO.equals(deVar.b)) {
                            if (!(viewGroup instanceof ViewGroup)) {
                                km.e(f3046a, "The view must be an instance of ViewGroup in order to load the asset");
                                return;
                            }
                            final r a2 = i.a().b.a(i);
                            if (a2 == null) {
                                km.a(5, f3046a, "Video error. Could not find ad object");
                                return;
                            } else if (!(a2 instanceof x)) {
                                km.a(5, f3046a, "The ad must be an instance of FlurryAdNative to fetch video");
                                return;
                            } else {
                                jy.a().b(new ma() { // from class: com.flurry.sdk.m.4
                                    @Override // com.flurry.sdk.ma
                                    public final void a() {
                                        m.a(m.this, deVar, viewGroup, (x) a2);
                                    }
                                });
                                return;
                            }
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final ImageView imageView, final Bitmap bitmap) {
        jy.a().a(new ma() { // from class: com.flurry.sdk.m.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                imageView.setImageBitmap(bitmap);
            }
        });
    }

    static /* synthetic */ void a(m mVar, de deVar, final ImageView imageView, int i) {
        ab abVar = i.a().i;
        File a2 = ab.a(i, deVar.c);
        if (a2 == null) {
            km.a(3, f3046a, "Cached asset not available for image:" + deVar.c);
            ks ksVar = new ks();
            ksVar.f = deVar.c;
            ksVar.w = 40000;
            ksVar.g = ku.a.kGet;
            ksVar.d = new eb();
            ksVar.f2978a = new ks.a<Void, Bitmap>() { // from class: com.flurry.sdk.m.2
                @Override // com.flurry.sdk.ks.a
                public final /* synthetic */ void a(ks<Void, Bitmap> ksVar2, Bitmap bitmap) {
                    Bitmap bitmap2 = bitmap;
                    km.a(3, m.f3046a, "Image request -- HTTP status code is:" + ksVar2.p);
                    if (ksVar2.c()) {
                        m.this.a(imageView, bitmap2);
                    }
                }
            };
            jw.a().a((Object) mVar, (m) ksVar);
            return;
        }
        km.a(3, f3046a, "Cached asset present for image:" + deVar.c);
        mVar.a(imageView, BitmapFactory.decodeFile(a2.getAbsolutePath()));
    }

    static /* synthetic */ void a(m mVar, de deVar, final ViewGroup viewGroup, final x xVar) {
        File file;
        final String str;
        au auVar;
        boolean z = false;
        String str2 = "";
        fr c = xVar.i.c();
        if (c != null) {
            str2 = c.a();
        } else if (deVar.c != null && !deVar.c.isEmpty()) {
            str2 = deVar.c;
        }
        if ((xVar == null || (auVar = xVar.i) == null) ? false : auVar.f().g) {
            ab abVar = i.a().i;
            File file2 = new File(fk.a("fileStreamCacheDownloaderTmp", xVar.b), ab.c(str2));
            abVar.c.remove(file2.getAbsolutePath());
            if (file2.exists()) {
                ab.a(file2.getAbsolutePath());
            }
            str = str2;
        } else {
            ab abVar2 = i.a().i;
            if (!TextUtils.isEmpty(str2) && xVar != null) {
                int i = xVar.b;
                if (i <= 0) {
                    km.a(3, ab.f2418a, "AdCacheNative: Invalid ad Id: " + i);
                } else {
                    au auVar2 = xVar.i;
                    if (auVar2 == null || auVar2.b.b == null || !ah.a(auVar2.d().g).equals(ah.STREAM_ONLY)) {
                        File file3 = new File(fk.a("fileStreamCacheDownloaderTmp", i), ab.c(str2));
                        if (file3.exists()) {
                            abVar2.c.add(file3.getAbsolutePath());
                            km.a(3, ab.f2418a, "AdCacheNative: queue " + abVar2.c);
                            file = file3;
                        } else {
                            String absolutePath = file3.getAbsolutePath();
                            if (abVar2.d(xVar, str2)) {
                                if (file3.exists()) {
                                    String absolutePath2 = file3.getAbsolutePath();
                                    if (!TextUtils.isEmpty(absolutePath2)) {
                                        if (abVar2.c.size() > 2) {
                                            String str3 = abVar2.c.get(0);
                                            if (!TextUtils.isEmpty(str3)) {
                                                ab.a(str3);
                                            }
                                        }
                                        abVar2.c.add(absolutePath2);
                                        km.a(3, ab.f2418a, "AdCacheNative: queue " + abVar2.c);
                                    }
                                    km.a(3, ab.f2418a, "AdCacheNative: temp folder created.");
                                    z = true;
                                }
                            } else {
                                km.a(3, ab.f2418a, "AdCacheNative: Could not create temp folder for " + i);
                            }
                            ab.a(xVar, absolutePath, "previewImageFromVideo");
                            if (z) {
                                file = file3;
                            }
                        }
                        str = (file != null || !file.exists()) ? str2 : "file://" + file.getAbsolutePath();
                    }
                }
            }
            file = null;
            if (file != null) {
            }
        }
        jy.a().a(new ma() { // from class: com.flurry.sdk.m.5
            @Override // com.flurry.sdk.ma
            public final void a() {
                boolean z2;
                km.a(3, m.f3046a, "AdCacheNative: Attempting to play video from:" + xVar.b + str);
                gk gkVar = new gk(xVar.f(), xVar);
                x xVar2 = xVar;
                String str4 = str;
                if (xVar2.p != null) {
                    xVar2.p.removeAllViews();
                    z2 = xVar2.p.e();
                    xVar2.p = null;
                } else {
                    z2 = false;
                }
                xVar2.p = gkVar;
                xVar2.p.setVideoUrl(str4);
                xVar2.q = xVar2.p.getVideoController();
                gu guVar = xVar2.q;
                if (str4 != null && guVar.b != null) {
                    gw gwVar = guVar.b;
                    if (str4 == null) {
                        km.a(3, gw.f2753a, "Video setVideoURI cannot have null value.");
                    } else {
                        gwVar.c = 0;
                        gwVar.b = Uri.parse(str4);
                    }
                }
                xVar2.q.a();
                xVar2.q.f();
                xVar2.q.f = false;
                xVar2.q.c.a();
                xVar2.q.c.setAnchorView(xVar2.q.b);
                xVar2.q.b.setMediaController(xVar2.q.c);
                if (z2) {
                    xVar2.p.p();
                    xVar2.p.o();
                }
                SurfaceView surfaceView = new SurfaceView(xVar.f());
                viewGroup.addView(surfaceView, new RelativeLayout.LayoutParams(0, 0));
                surfaceView.setVisibility(8);
                viewGroup.requestLayout();
                viewGroup.addView(gkVar);
                viewGroup.requestLayout();
            }
        });
    }
}
