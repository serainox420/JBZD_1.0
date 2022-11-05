package pl.jbzd.app.view.gallery;

import android.util.SparseArray;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public enum GalleryViewType {
    PICTURE(10, "picture"),
    SHARE(20, "share");
    

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<GalleryViewType> f6052a = new SparseArray<>();
    private static final Map<String, GalleryViewType> b = new HashMap();
    public int id;
    public String name;

    static {
        GalleryViewType[] values;
        for (GalleryViewType galleryViewType : values()) {
            f6052a.put(galleryViewType.id, galleryViewType);
            if (b.put(galleryViewType.name, galleryViewType) != null) {
                throw new IllegalArgumentException("duplicate name: " + galleryViewType.name);
            }
        }
    }

    GalleryViewType(int i, String str) {
        this.id = i;
        this.name = str;
    }
}
