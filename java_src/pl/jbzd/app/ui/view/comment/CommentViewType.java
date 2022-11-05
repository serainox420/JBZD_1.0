package pl.jbzd.app.ui.view.comment;

import android.util.SparseArray;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public enum CommentViewType {
    COMMENT(10, "comment"),
    COMMENT_REPLIES(20, "comment_with_replies"),
    COMMENT_SUBCOMMENT(30, "subcomment"),
    DEFAULT(60, "default");
    

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<CommentViewType> f5897a = new SparseArray<>();
    private static final Map<String, CommentViewType> b = new HashMap();
    public int id;
    public String name;

    static {
        CommentViewType[] values;
        for (CommentViewType commentViewType : values()) {
            f5897a.put(commentViewType.id, commentViewType);
            if (b.put(commentViewType.name, commentViewType) != null) {
                throw new IllegalArgumentException("duplicate name: " + commentViewType.name);
            }
        }
    }

    CommentViewType(int i, String str) {
        this.id = i;
        this.name = str;
    }
}
