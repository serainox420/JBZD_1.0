package pl.jbzd.app.a;

import com.facebook.AccessToken;
import io.realm.Sort;
import io.realm.l;
import io.realm.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.User;
/* compiled from: MediaController.java */
/* loaded from: classes3.dex */
public final class b {
    public static User a(l lVar, int i) {
        return (User) lVar.a(User.class).a("id", Integer.valueOf(i)).c();
    }

    public static List<Media> a(l lVar, int i, int i2) {
        w a2 = lVar.a(Media.class).a("in_queue", (Boolean) false).a("date", Sort.DESCENDING);
        int size = a2.size();
        int max = Math.max((i - 1) * i2, 0);
        if (size > max) {
            return a2.subList(max, Math.min(i * i2, size));
        }
        return null;
    }

    public static List<Media> a(l lVar, int i, int i2, int i3) {
        w a2 = lVar.a(Media.class).a(AccessToken.USER_ID_KEY, Integer.valueOf(i)).a("date", Sort.DESCENDING);
        int size = a2.size();
        int max = Math.max((i2 - 1) * i3, 0);
        if (size > max) {
            return a2.subList(max, Math.min(i2 * i3, size));
        }
        return null;
    }

    public static List<Media> b(l lVar, int i, int i2) {
        w a2 = lVar.a(Media.class).a("in_queue", (Boolean) true).a("date", Sort.DESCENDING);
        int size = a2.size();
        int max = Math.max((i - 1) * i2, 0);
        if (size > max) {
            return a2.subList(max, Math.min(i * i2, size));
        }
        return null;
    }

    public static List<Media> c(l lVar, int i, int i2) {
        w a2 = lVar.a(Media.class).a("is_favorite", (Boolean) true).a("date", Sort.DESCENDING);
        int size = a2.size();
        int max = Math.max((i - 1) * i2, 0);
        if (size > max) {
            return a2.subList(max, Math.min(i * i2, size));
        }
        return null;
    }

    public static List<Media> d(l lVar, int i, int i2) {
        w a2 = lVar.a(Media.class).a("vote_score", Sort.DESCENDING);
        int size = a2.size();
        int max = Math.max((i - 1) * i2, 0);
        if (size > max) {
            return a2.subList(max, Math.min(i * i2, size));
        }
        return null;
    }

    public static List<Media> e(l lVar, int i, int i2) {
        w b = lVar.a(Media.class).b();
        int size = b.size();
        if (size > Math.max((i - 1) * i2, 0)) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(b.subList(0, size));
            Collections.shuffle(arrayList);
            return arrayList.subList(Math.max((i - 1) * i2, 0), Math.min(i * i2, size));
        }
        return null;
    }
}
