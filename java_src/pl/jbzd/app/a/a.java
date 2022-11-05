package pl.jbzd.app.a;

import com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase;
import io.realm.Sort;
import io.realm.l;
import io.realm.w;
import java.util.List;
import pl.jbzd.app.model.Comment;
/* compiled from: CommentController.java */
/* loaded from: classes3.dex */
public final class a {
    public static List<Comment> a(l lVar, int i) {
        w a2 = lVar.a(Comment.class).a("user.id", Integer.valueOf(i)).a("created_at", Sort.ASCENDING);
        int size = a2.size();
        if (size > 0) {
            return a2.subList(0, size);
        }
        return null;
    }

    public static List<Comment> b(l lVar, int i) {
        w a2 = lVar.a(Comment.class).a(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID, Integer.valueOf(i)).a("created_at", Sort.DESCENDING);
        int size = a2.size();
        if (size > 0) {
            return a2.subList(0, size);
        }
        return null;
    }
}
