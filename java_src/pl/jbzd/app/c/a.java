package pl.jbzd.app.c;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import pl.jbzd.app.model.Media;
/* compiled from: AppUtils.java */
/* loaded from: classes3.dex */
public final class a {
    public static int[] a(Context context, Media media, View view, ImageView imageView, FrameLayout frameLayout, int i) {
        int i2;
        int realmGet$width = media.realmGet$width();
        if (media.realmGet$ratio() == BitmapDescriptorFactory.HUE_RED || media.realmGet$ratio() == -1.0f) {
            media.maxHeight = i;
            i2 = i;
        } else {
            if (i / realmGet$width > 3.0f) {
                i = (int) (realmGet$width * 3.0f);
            }
            int realmGet$ratio = (int) (i / media.realmGet$ratio());
            media.maxHeight = realmGet$ratio;
            i2 = i;
            i = realmGet$ratio;
        }
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = i2;
            layoutParams.height = i;
            view.setLayoutParams(layoutParams);
        }
        ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
        layoutParams2.width = i2;
        layoutParams2.height = i;
        if (frameLayout != null) {
            ViewGroup.LayoutParams layoutParams3 = frameLayout.getLayoutParams();
            layoutParams3.width = i2;
            layoutParams3.height = i;
        }
        return new int[]{i2, i};
    }
}
