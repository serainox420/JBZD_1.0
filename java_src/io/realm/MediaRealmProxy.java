package io.realm;

import com.facebook.AccessToken;
import com.madsdk.AdView;
import io.realm.b;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.LinkView;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.log.RealmLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.Picture;
/* loaded from: classes3.dex */
public class MediaRealmProxy extends Media implements f, io.realm.internal.l {
    private static final List<String> d;

    /* renamed from: a  reason: collision with root package name */
    private a f5735a;
    private k<Media> b;
    private q<Picture> c;

    /* loaded from: classes3.dex */
    static final class a extends io.realm.internal.c implements Cloneable {

        /* renamed from: a  reason: collision with root package name */
        public long f5736a;
        public long b;
        public long c;
        public long d;
        public long e;
        public long f;
        public long g;
        public long h;
        public long i;
        public long j;
        public long k;
        public long l;
        public long m;
        public long n;
        public long o;
        public long p;
        public long q;
        public long r;
        public long s;
        public long t;
        public long u;
        public long v;

        a(String str, Table table) {
            HashMap hashMap = new HashMap(22);
            this.f5736a = a(str, table, "Media", "id");
            hashMap.put("id", Long.valueOf(this.f5736a));
            this.b = a(str, table, "Media", AccessToken.USER_ID_KEY);
            hashMap.put(AccessToken.USER_ID_KEY, Long.valueOf(this.b));
            this.c = a(str, table, "Media", "type");
            hashMap.put("type", Long.valueOf(this.c));
            this.d = a(str, table, "Media", AdView.DEFAULT_IMAGE_NAME);
            hashMap.put(AdView.DEFAULT_IMAGE_NAME, Long.valueOf(this.d));
            this.e = a(str, table, "Media", "movie");
            hashMap.put("movie", Long.valueOf(this.e));
            this.f = a(str, table, "Media", "width");
            hashMap.put("width", Long.valueOf(this.f));
            this.g = a(str, table, "Media", "height");
            hashMap.put("height", Long.valueOf(this.g));
            this.h = a(str, table, "Media", "pictures_counter");
            hashMap.put("pictures_counter", Long.valueOf(this.h));
            this.i = a(str, table, "Media", "media_added");
            hashMap.put("media_added", Long.valueOf(this.i));
            this.j = a(str, table, "Media", "title");
            hashMap.put("title", Long.valueOf(this.j));
            this.k = a(str, table, "Media", "url");
            hashMap.put("url", Long.valueOf(this.k));
            this.l = a(str, table, "Media", "vote_score");
            hashMap.put("vote_score", Long.valueOf(this.l));
            this.m = a(str, table, "Media", "date");
            hashMap.put("date", Long.valueOf(this.m));
            this.n = a(str, table, "Media", "share_url");
            hashMap.put("share_url", Long.valueOf(this.n));
            this.o = a(str, table, "Media", "share_image");
            hashMap.put("share_image", Long.valueOf(this.o));
            this.p = a(str, table, "Media", "youtube");
            hashMap.put("youtube", Long.valueOf(this.p));
            this.q = a(str, table, "Media", "pictures");
            hashMap.put("pictures", Long.valueOf(this.q));
            this.r = a(str, table, "Media", "comments_counter");
            hashMap.put("comments_counter", Long.valueOf(this.r));
            this.s = a(str, table, "Media", "voted");
            hashMap.put("voted", Long.valueOf(this.s));
            this.t = a(str, table, "Media", "ratio");
            hashMap.put("ratio", Long.valueOf(this.t));
            this.u = a(str, table, "Media", "in_queue");
            hashMap.put("in_queue", Long.valueOf(this.u));
            this.v = a(str, table, "Media", "is_favorite");
            hashMap.put("is_favorite", Long.valueOf(this.v));
            a(hashMap);
        }

        @Override // io.realm.internal.c
        public final void a(io.realm.internal.c cVar) {
            a aVar = (a) cVar;
            this.f5736a = aVar.f5736a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            this.g = aVar.g;
            this.h = aVar.h;
            this.i = aVar.i;
            this.j = aVar.j;
            this.k = aVar.k;
            this.l = aVar.l;
            this.m = aVar.m;
            this.n = aVar.n;
            this.o = aVar.o;
            this.p = aVar.p;
            this.q = aVar.q;
            this.r = aVar.r;
            this.s = aVar.s;
            this.t = aVar.t;
            this.u = aVar.u;
            this.v = aVar.v;
            a(aVar.c());
        }

        @Override // io.realm.internal.c
        /* renamed from: a */
        public final a clone() {
            return (a) super.clone();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("id");
        arrayList.add(AccessToken.USER_ID_KEY);
        arrayList.add("type");
        arrayList.add(AdView.DEFAULT_IMAGE_NAME);
        arrayList.add("movie");
        arrayList.add("width");
        arrayList.add("height");
        arrayList.add("pictures_counter");
        arrayList.add("media_added");
        arrayList.add("title");
        arrayList.add("url");
        arrayList.add("vote_score");
        arrayList.add("date");
        arrayList.add("share_url");
        arrayList.add("share_image");
        arrayList.add("youtube");
        arrayList.add("pictures");
        arrayList.add("comments_counter");
        arrayList.add("voted");
        arrayList.add("ratio");
        arrayList.add("in_queue");
        arrayList.add("is_favorite");
        d = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaRealmProxy() {
        this.b.h();
    }

    @Override // io.realm.internal.l
    public void a() {
        if (this.b == null) {
            b.C0593b c0593b = b.g.get();
            this.f5735a = (a) c0593b.c();
            this.b = new k<>(this);
            this.b.a(c0593b.a());
            this.b.a(c0593b.b());
            this.b.a(c0593b.d());
            this.b.a(c0593b.e());
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$id() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.f5736a);
    }

    @Override // pl.jbzd.app.model.Media
    public void realmSet$id(int i) {
        if (this.b.g()) {
            return;
        }
        this.b.a().e();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$user_id() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.b);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$user_id(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.b, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5735a.b, i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$type() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.c);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$type(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.c, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.c, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.c);
        } else {
            this.b.b().setString(this.f5735a.c, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$image() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.d);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$image(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.d, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.d, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.d);
        } else {
            this.b.b().setString(this.f5735a.d, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$movie() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.e);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$movie(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.e, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.e, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.e);
        } else {
            this.b.b().setString(this.f5735a.e, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$width() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.f);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$width(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.f, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5735a.f, i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$height() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.g);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$height(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.g, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5735a.g, i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$pictures_counter() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.h);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$pictures_counter(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.h, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5735a.h, i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public Date realmGet$media_added() {
        this.b.a().e();
        if (this.b.b().isNull(this.f5735a.i)) {
            return null;
        }
        return this.b.b().getDate(this.f5735a.i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$media_added(Date date) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (date == null) {
                    b.getTable().a(this.f5735a.i, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.i, b.getIndex(), date, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (date == null) {
            this.b.b().setNull(this.f5735a.i);
        } else {
            this.b.b().setDate(this.f5735a.i, date);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$title() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.j);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$title(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.j, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.j, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.j);
        } else {
            this.b.b().setString(this.f5735a.j, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$url() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.k);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$url(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.k, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.k, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.k);
        } else {
            this.b.b().setString(this.f5735a.k, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$vote_score() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.l);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$vote_score(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.l, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5735a.l, i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public Date realmGet$date() {
        this.b.a().e();
        if (this.b.b().isNull(this.f5735a.m)) {
            return null;
        }
        return this.b.b().getDate(this.f5735a.m);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$date(Date date) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (date == null) {
                    b.getTable().a(this.f5735a.m, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.m, b.getIndex(), date, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (date == null) {
            this.b.b().setNull(this.f5735a.m);
        } else {
            this.b.b().setDate(this.f5735a.m, date);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$share_url() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.n);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$share_url(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.n, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.n, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.n);
        } else {
            this.b.b().setString(this.f5735a.n, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$share_image() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.o);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$share_image(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.o, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.o, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.o);
        } else {
            this.b.b().setString(this.f5735a.o, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public String realmGet$youtube() {
        this.b.a().e();
        return this.b.b().getString(this.f5735a.p);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$youtube(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5735a.p, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5735a.p, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5735a.p);
        } else {
            this.b.b().setString(this.f5735a.p, str);
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public q<Picture> realmGet$pictures() {
        this.b.a().e();
        if (this.c != null) {
            return this.c;
        }
        this.c = new q<>(Picture.class, this.b.b().getLinkList(this.f5735a.q), this.b.a());
        return this.c;
    }

    /* JADX WARN: Type inference failed for: r1v13, types: [io.realm.t] */
    @Override // pl.jbzd.app.model.Media
    public void realmSet$pictures(q<Picture> qVar) {
        if (this.b.g()) {
            if (this.b.c() && !this.b.d().contains("pictures")) {
                if (qVar != null && !qVar.b()) {
                    l lVar = (l) this.b.a();
                    q<Picture> qVar2 = new q<>();
                    Iterator<Picture> it = qVar.iterator();
                    while (it.hasNext()) {
                        Picture next = it.next();
                        if (next == null || u.isManaged(next)) {
                            qVar2.a((q<Picture>) next);
                        } else {
                            qVar2.a((q<Picture>) lVar.a((l) next));
                        }
                    }
                    qVar = qVar2;
                }
            } else {
                return;
            }
        }
        this.b.a().e();
        LinkView linkList = this.b.b().getLinkList(this.f5735a.q);
        linkList.a();
        if (qVar != null) {
            Iterator<Picture> it2 = qVar.iterator();
            while (it2.hasNext()) {
                Picture next2 = it2.next();
                if (!u.isManaged(next2) || !u.isValid(next2)) {
                    throw new IllegalArgumentException("Each element of 'value' must be a valid managed object.");
                }
                if (((io.realm.internal.l) next2).c().a() != this.b.a()) {
                    throw new IllegalArgumentException("Each element of 'value' must belong to the same Realm.");
                }
                linkList.b(((io.realm.internal.l) next2).c().b().getIndex());
            }
        }
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$comments_counter() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.r);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$comments_counter(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.r, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5735a.r, i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public int realmGet$voted() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5735a.s);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$voted(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.s, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5735a.s, i);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public float realmGet$ratio() {
        this.b.a().e();
        return this.b.b().getFloat(this.f5735a.t);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$ratio(float f) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.t, b.getIndex(), f, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setFloat(this.f5735a.t, f);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public boolean realmGet$in_queue() {
        this.b.a().e();
        return this.b.b().getBoolean(this.f5735a.u);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$in_queue(boolean z) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.u, b.getIndex(), z, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setBoolean(this.f5735a.u, z);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public boolean realmGet$is_favorite() {
        this.b.a().e();
        return this.b.b().getBoolean(this.f5735a.v);
    }

    @Override // pl.jbzd.app.model.Media, io.realm.f
    public void realmSet$is_favorite(boolean z) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5735a.v, b.getIndex(), z, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setBoolean(this.f5735a.v, z);
    }

    public static RealmObjectSchema a(RealmSchema realmSchema) {
        if (!realmSchema.c("Media")) {
            RealmObjectSchema b = realmSchema.b("Media");
            b.a(new Property("id", RealmFieldType.INTEGER, true, true, true));
            b.a(new Property(AccessToken.USER_ID_KEY, RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("type", RealmFieldType.STRING, false, false, false));
            b.a(new Property(AdView.DEFAULT_IMAGE_NAME, RealmFieldType.STRING, false, false, false));
            b.a(new Property("movie", RealmFieldType.STRING, false, false, false));
            b.a(new Property("width", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("height", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("pictures_counter", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("media_added", RealmFieldType.DATE, false, false, false));
            b.a(new Property("title", RealmFieldType.STRING, false, false, false));
            b.a(new Property("url", RealmFieldType.STRING, false, false, false));
            b.a(new Property("vote_score", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("date", RealmFieldType.DATE, false, false, false));
            b.a(new Property("share_url", RealmFieldType.STRING, false, false, false));
            b.a(new Property("share_image", RealmFieldType.STRING, false, false, false));
            b.a(new Property("youtube", RealmFieldType.STRING, false, false, false));
            if (!realmSchema.c("Picture")) {
                PictureRealmProxy.a(realmSchema);
            }
            b.a(new Property("pictures", RealmFieldType.LIST, realmSchema.a("Picture")));
            b.a(new Property("comments_counter", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("voted", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("ratio", RealmFieldType.FLOAT, false, false, true));
            b.a(new Property("in_queue", RealmFieldType.BOOLEAN, false, false, true));
            b.a(new Property("is_favorite", RealmFieldType.BOOLEAN, false, false, true));
            return b;
        }
        return realmSchema.a("Media");
    }

    public static Table a(SharedRealm sharedRealm) {
        if (!sharedRealm.a("class_Media")) {
            Table b = sharedRealm.b("class_Media");
            b.a(RealmFieldType.INTEGER, "id", false);
            b.a(RealmFieldType.INTEGER, AccessToken.USER_ID_KEY, false);
            b.a(RealmFieldType.STRING, "type", true);
            b.a(RealmFieldType.STRING, AdView.DEFAULT_IMAGE_NAME, true);
            b.a(RealmFieldType.STRING, "movie", true);
            b.a(RealmFieldType.INTEGER, "width", false);
            b.a(RealmFieldType.INTEGER, "height", false);
            b.a(RealmFieldType.INTEGER, "pictures_counter", false);
            b.a(RealmFieldType.DATE, "media_added", true);
            b.a(RealmFieldType.STRING, "title", true);
            b.a(RealmFieldType.STRING, "url", true);
            b.a(RealmFieldType.INTEGER, "vote_score", false);
            b.a(RealmFieldType.DATE, "date", true);
            b.a(RealmFieldType.STRING, "share_url", true);
            b.a(RealmFieldType.STRING, "share_image", true);
            b.a(RealmFieldType.STRING, "youtube", true);
            if (!sharedRealm.a("class_Picture")) {
                PictureRealmProxy.a(sharedRealm);
            }
            b.a(RealmFieldType.LIST, "pictures", sharedRealm.b("class_Picture"));
            b.a(RealmFieldType.INTEGER, "comments_counter", false);
            b.a(RealmFieldType.INTEGER, "voted", false);
            b.a(RealmFieldType.FLOAT, "ratio", false);
            b.a(RealmFieldType.BOOLEAN, "in_queue", false);
            b.a(RealmFieldType.BOOLEAN, "is_favorite", false);
            b.i(b.a("id"));
            b.b("id");
            return b;
        }
        return sharedRealm.b("class_Media");
    }

    public static a a(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.a("class_Media")) {
            Table b = sharedRealm.b("class_Media");
            long b2 = b.b();
            if (b2 != 22) {
                if (b2 < 22) {
                    throw new RealmMigrationNeededException(sharedRealm.h(), "Field count is less than expected - expected 22 but was " + b2);
                }
                if (z) {
                    RealmLog.a("Field count is more than expected - expected 22 but was %1$d", Long.valueOf(b2));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.h(), "Field count is more than expected - expected 22 but was " + b2);
                }
            }
            HashMap hashMap = new HashMap();
            for (long j = 0; j < b2; j++) {
                hashMap.put(b.b(j), b.c(j));
            }
            a aVar = new a(sharedRealm.h(), b);
            if (!b.d()) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Primary key not defined for field 'id' in existing Realm file. @PrimaryKey was added.");
            }
            if (b.c() != aVar.f5736a) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Primary Key annotation definition was changed, from field " + b.b(b.c()) + " to field id");
            }
            if (!hashMap.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'id' in existing Realm file.");
            }
            if (b.a(aVar.f5736a) && b.k(aVar.f5736a) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            }
            if (!b.j(b.a("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            }
            if (!hashMap.containsKey(AccessToken.USER_ID_KEY)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'user_id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get(AccessToken.USER_ID_KEY) != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'user_id' in existing Realm file.");
            }
            if (b.a(aVar.b)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'user_id' does support null values in the existing Realm file. Use corresponding boxed type for field 'user_id' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("type")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'type' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("type") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'type' in existing Realm file.");
            }
            if (!b.a(aVar.c)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'type' is required. Either set @Required to field 'type' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey(AdView.DEFAULT_IMAGE_NAME)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'image' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get(AdView.DEFAULT_IMAGE_NAME) != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'image' in existing Realm file.");
            }
            if (!b.a(aVar.d)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'image' is required. Either set @Required to field 'image' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("movie")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'movie' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("movie") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'movie' in existing Realm file.");
            }
            if (!b.a(aVar.e)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'movie' is required. Either set @Required to field 'movie' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("width")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'width' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("width") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'width' in existing Realm file.");
            }
            if (b.a(aVar.f)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'width' does support null values in the existing Realm file. Use corresponding boxed type for field 'width' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("height")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'height' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("height") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'height' in existing Realm file.");
            }
            if (b.a(aVar.g)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'height' does support null values in the existing Realm file. Use corresponding boxed type for field 'height' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("pictures_counter")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'pictures_counter' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("pictures_counter") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'pictures_counter' in existing Realm file.");
            }
            if (b.a(aVar.h)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'pictures_counter' does support null values in the existing Realm file. Use corresponding boxed type for field 'pictures_counter' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("media_added")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'media_added' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("media_added") != RealmFieldType.DATE) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'Date' for field 'media_added' in existing Realm file.");
            }
            if (!b.a(aVar.i)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'media_added' is required. Either set @Required to field 'media_added' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("title")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'title' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("title") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'title' in existing Realm file.");
            }
            if (!b.a(aVar.j)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'title' is required. Either set @Required to field 'title' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("url")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'url' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("url") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'url' in existing Realm file.");
            }
            if (!b.a(aVar.k)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'url' is required. Either set @Required to field 'url' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("vote_score")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'vote_score' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("vote_score") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'vote_score' in existing Realm file.");
            }
            if (b.a(aVar.l)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'vote_score' does support null values in the existing Realm file. Use corresponding boxed type for field 'vote_score' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("date")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'date' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("date") != RealmFieldType.DATE) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'Date' for field 'date' in existing Realm file.");
            }
            if (!b.a(aVar.m)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'date' is required. Either set @Required to field 'date' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("share_url")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'share_url' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("share_url") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'share_url' in existing Realm file.");
            }
            if (!b.a(aVar.n)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'share_url' is required. Either set @Required to field 'share_url' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("share_image")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'share_image' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("share_image") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'share_image' in existing Realm file.");
            }
            if (!b.a(aVar.o)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'share_image' is required. Either set @Required to field 'share_image' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("youtube")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'youtube' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("youtube") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'youtube' in existing Realm file.");
            }
            if (!b.a(aVar.p)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'youtube' is required. Either set @Required to field 'youtube' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("pictures")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'pictures'");
            }
            if (hashMap.get("pictures") != RealmFieldType.LIST) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'Picture' for field 'pictures'");
            }
            if (!sharedRealm.a("class_Picture")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing class 'class_Picture' for field 'pictures'");
            }
            Table b3 = sharedRealm.b("class_Picture");
            if (!b.e(aVar.q).a(b3)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid RealmList type for field 'pictures': '" + b.e(aVar.q).h() + "' expected - was '" + b3.h() + "'");
            }
            if (!hashMap.containsKey("comments_counter")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'comments_counter' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("comments_counter") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'comments_counter' in existing Realm file.");
            }
            if (b.a(aVar.r)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'comments_counter' does support null values in the existing Realm file. Use corresponding boxed type for field 'comments_counter' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("voted")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'voted' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("voted") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'voted' in existing Realm file.");
            }
            if (b.a(aVar.s)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'voted' does support null values in the existing Realm file. Use corresponding boxed type for field 'voted' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("ratio")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'ratio' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("ratio") != RealmFieldType.FLOAT) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'float' for field 'ratio' in existing Realm file.");
            }
            if (b.a(aVar.t)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'ratio' does support null values in the existing Realm file. Use corresponding boxed type for field 'ratio' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("in_queue")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'in_queue' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("in_queue") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'boolean' for field 'in_queue' in existing Realm file.");
            }
            if (b.a(aVar.u)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'in_queue' does support null values in the existing Realm file. Use corresponding boxed type for field 'in_queue' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("is_favorite")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'is_favorite' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("is_favorite") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'boolean' for field 'is_favorite' in existing Realm file.");
            }
            if (b.a(aVar.v)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'is_favorite' does support null values in the existing Realm file. Use corresponding boxed type for field 'is_favorite' or migrate using RealmObjectSchema.setNullable().");
            }
            return aVar;
        }
        throw new RealmMigrationNeededException(sharedRealm.h(), "The 'Media' class is missing from the schema for this Realm.");
    }

    public static String b() {
        return "class_Media";
    }

    public static Media a(l lVar, Media media, boolean z, Map<t, io.realm.internal.l> map) {
        boolean z2;
        MediaRealmProxy mediaRealmProxy;
        if ((media instanceof io.realm.internal.l) && ((io.realm.internal.l) media).c().a() != null && ((io.realm.internal.l) media).c().a().c != lVar.c) {
            throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
        }
        if (!(media instanceof io.realm.internal.l) || ((io.realm.internal.l) media).c().a() == null || !((io.realm.internal.l) media).c().a().f().equals(lVar.f())) {
            b.C0593b c0593b = b.g.get();
            io.realm.internal.l lVar2 = map.get(media);
            if (lVar2 != null) {
                return (Media) lVar2;
            }
            if (!z) {
                z2 = z;
                mediaRealmProxy = null;
            } else {
                Table b = lVar.b(Media.class);
                long b2 = b.b(b.c(), media.realmGet$id());
                if (b2 == -1) {
                    z2 = false;
                    mediaRealmProxy = null;
                } else {
                    try {
                        c0593b.a(lVar, b.f(b2), lVar.f.a(Media.class), false, Collections.emptyList());
                        mediaRealmProxy = new MediaRealmProxy();
                        map.put(media, mediaRealmProxy);
                        c0593b.f();
                        z2 = z;
                    } catch (Throwable th) {
                        c0593b.f();
                        throw th;
                    }
                }
            }
            if (z2) {
                return a(lVar, mediaRealmProxy, media, map);
            }
            return b(lVar, media, z, map);
        }
        return media;
    }

    public static Media b(l lVar, Media media, boolean z, Map<t, io.realm.internal.l> map) {
        io.realm.internal.l lVar2 = map.get(media);
        if (lVar2 != null) {
            return (Media) lVar2;
        }
        Media media2 = (Media) lVar.a((Class<t>) Media.class, (Object) Integer.valueOf(media.realmGet$id()), false, Collections.emptyList());
        map.put(media, (io.realm.internal.l) media2);
        media2.realmSet$user_id(media.realmGet$user_id());
        media2.realmSet$type(media.realmGet$type());
        media2.realmSet$image(media.realmGet$image());
        media2.realmSet$movie(media.realmGet$movie());
        media2.realmSet$width(media.realmGet$width());
        media2.realmSet$height(media.realmGet$height());
        media2.realmSet$pictures_counter(media.realmGet$pictures_counter());
        media2.realmSet$media_added(media.realmGet$media_added());
        media2.realmSet$title(media.realmGet$title());
        media2.realmSet$url(media.realmGet$url());
        media2.realmSet$vote_score(media.realmGet$vote_score());
        media2.realmSet$date(media.realmGet$date());
        media2.realmSet$share_url(media.realmGet$share_url());
        media2.realmSet$share_image(media.realmGet$share_image());
        media2.realmSet$youtube(media.realmGet$youtube());
        q<Picture> realmGet$pictures = media.realmGet$pictures();
        if (realmGet$pictures != null) {
            q<Picture> realmGet$pictures2 = media2.realmGet$pictures();
            for (int i = 0; i < realmGet$pictures.size(); i++) {
                Picture picture = (Picture) map.get(realmGet$pictures.get(i));
                if (picture != null) {
                    realmGet$pictures2.a((q<Picture>) picture);
                } else {
                    realmGet$pictures2.a((q<Picture>) PictureRealmProxy.a(lVar, realmGet$pictures.get(i), z, map));
                }
            }
        }
        media2.realmSet$comments_counter(media.realmGet$comments_counter());
        media2.realmSet$voted(media.realmGet$voted());
        media2.realmSet$ratio(media.realmGet$ratio());
        media2.realmSet$in_queue(media.realmGet$in_queue());
        media2.realmSet$is_favorite(media.realmGet$is_favorite());
        return media2;
    }

    static Media a(l lVar, Media media, Media media2, Map<t, io.realm.internal.l> map) {
        media.realmSet$user_id(media2.realmGet$user_id());
        media.realmSet$type(media2.realmGet$type());
        media.realmSet$image(media2.realmGet$image());
        media.realmSet$movie(media2.realmGet$movie());
        media.realmSet$width(media2.realmGet$width());
        media.realmSet$height(media2.realmGet$height());
        media.realmSet$pictures_counter(media2.realmGet$pictures_counter());
        media.realmSet$media_added(media2.realmGet$media_added());
        media.realmSet$title(media2.realmGet$title());
        media.realmSet$url(media2.realmGet$url());
        media.realmSet$vote_score(media2.realmGet$vote_score());
        media.realmSet$date(media2.realmGet$date());
        media.realmSet$share_url(media2.realmGet$share_url());
        media.realmSet$share_image(media2.realmGet$share_image());
        media.realmSet$youtube(media2.realmGet$youtube());
        q<Picture> realmGet$pictures = media2.realmGet$pictures();
        q<Picture> realmGet$pictures2 = media.realmGet$pictures();
        realmGet$pictures2.clear();
        if (realmGet$pictures != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= realmGet$pictures.size()) {
                    break;
                }
                Picture picture = (Picture) map.get(realmGet$pictures.get(i2));
                if (picture != null) {
                    realmGet$pictures2.a((q<Picture>) picture);
                } else {
                    realmGet$pictures2.a((q<Picture>) PictureRealmProxy.a(lVar, realmGet$pictures.get(i2), true, map));
                }
                i = i2 + 1;
            }
        }
        media.realmSet$comments_counter(media2.realmGet$comments_counter());
        media.realmSet$voted(media2.realmGet$voted());
        media.realmSet$ratio(media2.realmGet$ratio());
        media.realmSet$in_queue(media2.realmGet$in_queue());
        media.realmSet$is_favorite(media2.realmGet$is_favorite());
        return media;
    }

    @Override // io.realm.internal.l
    public k c() {
        return this.b;
    }

    public int hashCode() {
        int i = 0;
        String f = this.b.a().f();
        String h = this.b.b().getTable().h();
        long index = this.b.b().getIndex();
        int hashCode = ((f != null ? f.hashCode() : 0) + 527) * 31;
        if (h != null) {
            i = h.hashCode();
        }
        return ((i + hashCode) * 31) + ((int) ((index >>> 32) ^ index));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaRealmProxy mediaRealmProxy = (MediaRealmProxy) obj;
        String f = this.b.a().f();
        String f2 = mediaRealmProxy.b.a().f();
        if (f == null ? f2 != null : !f.equals(f2)) {
            return false;
        }
        String h = this.b.b().getTable().h();
        String h2 = mediaRealmProxy.b.b().getTable().h();
        if (h == null ? h2 != null : !h.equals(h2)) {
            return false;
        }
        return this.b.b().getIndex() == mediaRealmProxy.b.b().getIndex();
    }
}
