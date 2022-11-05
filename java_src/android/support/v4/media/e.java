package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.Rating;
/* compiled from: RatingCompatKitkat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class e {
    public static boolean a(Object obj) {
        return ((Rating) obj).isRated();
    }

    public static int b(Object obj) {
        return ((Rating) obj).getRatingStyle();
    }

    public static boolean c(Object obj) {
        return ((Rating) obj).hasHeart();
    }

    public static boolean d(Object obj) {
        return ((Rating) obj).isThumbUp();
    }

    public static float e(Object obj) {
        return ((Rating) obj).getStarRating();
    }

    public static float f(Object obj) {
        return ((Rating) obj).getPercentRating();
    }
}
