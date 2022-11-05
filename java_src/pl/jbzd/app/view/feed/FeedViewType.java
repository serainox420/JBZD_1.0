package pl.jbzd.app.view.feed;

import android.util.SparseArray;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.location.places.Place;
import com.madsdk.AdView;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public enum FeedViewType {
    PICTURE(Place.TYPE_NATURAL_FEATURE, AdView.DEFAULT_IMAGE_NAME),
    GIF(Place.TYPE_ROUTE, "mp4-gif"),
    VIDEO(1030, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO),
    GALLERY(1040, "gallery"),
    AD(1050, "advertising"),
    USER_PROFILE(1060, "user_profile"),
    COMMENT(1070, "comment"),
    EMPTY(1080, "empty"),
    FIRST_AD(1100, "first_ad"),
    UNKNOWN(1000000, "unknown");
    

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<FeedViewType> f6021a = new SparseArray<>();
    private static final Map<String, FeedViewType> b = new HashMap();
    public int id;
    public String name;

    static {
        FeedViewType[] values;
        for (FeedViewType feedViewType : values()) {
            f6021a.put(feedViewType.id, feedViewType);
            if (b.put(feedViewType.name, feedViewType) != null) {
                throw new IllegalArgumentException("duplicate name: " + feedViewType.name);
            }
        }
    }

    FeedViewType(int i, String str) {
        this.id = i;
        this.name = str;
    }

    public static int getIdByName(String str) {
        return b.containsKey(str) ? b.get(str).id : UNKNOWN.id;
    }
}
