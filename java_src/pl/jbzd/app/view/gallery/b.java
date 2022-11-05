package pl.jbzd.app.view.gallery;

import android.support.v4.view.ViewPager;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: GalleryPageTransformer.java */
/* loaded from: classes3.dex */
public class b implements ViewPager.f {

    /* renamed from: a  reason: collision with root package name */
    private GalleryPicturesAdapter f6054a;
    private int b = 0;
    private int c = 0;

    public b(GalleryPicturesAdapter galleryPicturesAdapter) {
        this.f6054a = galleryPicturesAdapter;
    }

    public void a(int i) {
        this.c = i;
        this.b = i;
    }

    public void b(int i) {
        this.c = i;
    }

    @Override // android.support.v4.view.ViewPager.f
    public final void a(View view, float f) {
        int width = view.getWidth();
        if (f < -1.0f) {
            view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        } else if (f <= BitmapDescriptorFactory.HUE_RED) {
            if (this.f6054a.a(this.b) == GalleryViewType.SHARE.id || this.f6054a.a(this.c) == GalleryViewType.SHARE.id) {
                float abs = 1.0f - Math.abs(f);
                if (abs > 0.12d) {
                    view.setAlpha(abs);
                }
                view.setTranslationX(width * (-f));
                float abs2 = 0.75f + (0.25f * (1.0f - Math.abs(f)));
                view.setScaleX(abs2);
                view.setScaleY(abs2);
                return;
            }
            view.setAlpha(1.0f);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
        } else if (f <= 1.0f) {
            view.setAlpha(1.0f);
            view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
        } else {
            view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
    }
}
