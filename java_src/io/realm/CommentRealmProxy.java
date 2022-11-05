package io.realm;

import com.facebook.imagepipeline.cache.MediaVariationsIndexDatabase;
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
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.User;
/* loaded from: classes3.dex */
public class CommentRealmProxy extends Comment implements c, io.realm.internal.l {
    private static final List<String> d;

    /* renamed from: a  reason: collision with root package name */
    private a f5731a;
    private k<Comment> b;
    private q<Comment> c;

    /* loaded from: classes3.dex */
    static final class a extends io.realm.internal.c implements Cloneable {

        /* renamed from: a  reason: collision with root package name */
        public long f5732a;
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

        a(String str, Table table) {
            HashMap hashMap = new HashMap(11);
            this.f5732a = a(str, table, "Comment", "id");
            hashMap.put("id", Long.valueOf(this.f5732a));
            this.b = a(str, table, "Comment", MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID);
            hashMap.put(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID, Long.valueOf(this.b));
            this.c = a(str, table, "Comment", "parent_id");
            hashMap.put("parent_id", Long.valueOf(this.c));
            this.d = a(str, table, "Comment", "comment");
            hashMap.put("comment", Long.valueOf(this.d));
            this.e = a(str, table, "Comment", "plus");
            hashMap.put("plus", Long.valueOf(this.e));
            this.f = a(str, table, "Comment", "minus");
            hashMap.put("minus", Long.valueOf(this.f));
            this.g = a(str, table, "Comment", "reports");
            hashMap.put("reports", Long.valueOf(this.g));
            this.h = a(str, table, "Comment", "created_at");
            hashMap.put("created_at", Long.valueOf(this.h));
            this.i = a(str, table, "Comment", "user");
            hashMap.put("user", Long.valueOf(this.i));
            this.j = a(str, table, "Comment", "voted");
            hashMap.put("voted", Long.valueOf(this.j));
            this.k = a(str, table, "Comment", "replies");
            hashMap.put("replies", Long.valueOf(this.k));
            a(hashMap);
        }

        @Override // io.realm.internal.c
        public final void a(io.realm.internal.c cVar) {
            a aVar = (a) cVar;
            this.f5732a = aVar.f5732a;
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
        arrayList.add(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID);
        arrayList.add("parent_id");
        arrayList.add("comment");
        arrayList.add("plus");
        arrayList.add("minus");
        arrayList.add("reports");
        arrayList.add("created_at");
        arrayList.add("user");
        arrayList.add("voted");
        arrayList.add("replies");
        d = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CommentRealmProxy() {
        this.b.h();
    }

    @Override // io.realm.internal.l
    public void a() {
        if (this.b == null) {
            b.C0593b c0593b = b.g.get();
            this.f5731a = (a) c0593b.c();
            this.b = new k<>(this);
            this.b.a(c0593b.a());
            this.b.a(c0593b.b());
            this.b.a(c0593b.d());
            this.b.a(c0593b.e());
        }
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public int realmGet$id() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5731a.f5732a);
    }

    @Override // pl.jbzd.app.model.Comment
    public void realmSet$id(int i) {
        if (this.b.g()) {
            return;
        }
        this.b.a().e();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public int realmGet$media_id() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5731a.b);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$media_id(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5731a.b, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5731a.b, i);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public int realmGet$parent_id() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5731a.c);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$parent_id(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5731a.c, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5731a.c, i);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public String realmGet$comment() {
        this.b.a().e();
        return this.b.b().getString(this.f5731a.d);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$comment(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5731a.d, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5731a.d, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5731a.d);
        } else {
            this.b.b().setString(this.f5731a.d, str);
        }
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public int realmGet$plus() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5731a.e);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$plus(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5731a.e, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5731a.e, i);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public int realmGet$minus() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5731a.f);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$minus(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5731a.f, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5731a.f, i);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public int realmGet$reports() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5731a.g);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$reports(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5731a.g, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5731a.g, i);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public Date realmGet$created_at() {
        this.b.a().e();
        if (this.b.b().isNull(this.f5731a.h)) {
            return null;
        }
        return this.b.b().getDate(this.f5731a.h);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$created_at(Date date) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (date == null) {
                    b.getTable().a(this.f5731a.h, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5731a.h, b.getIndex(), date, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (date == null) {
            this.b.b().setNull(this.f5731a.h);
        } else {
            this.b.b().setDate(this.f5731a.h, date);
        }
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public User realmGet$user() {
        this.b.a().e();
        if (this.b.b().isNullLink(this.f5731a.i)) {
            return null;
        }
        return (User) this.b.a().a((Class<t>) User.class, this.b.b().getLink(this.f5731a.i), false, Collections.emptyList());
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$user(User user) {
        if (this.b.g()) {
            if (this.b.c() && !this.b.d().contains("user")) {
                User user2 = (user == null || u.isManaged(user)) ? user : (User) ((l) this.b.a()).a((l) user);
                io.realm.internal.n b = this.b.b();
                if (user2 == null) {
                    b.nullifyLink(this.f5731a.i);
                    return;
                } else if (!u.isValid(user2)) {
                    throw new IllegalArgumentException("'value' is not a valid managed object.");
                } else {
                    if (((io.realm.internal.l) user2).c().a() != this.b.a()) {
                        throw new IllegalArgumentException("'value' belongs to a different Realm.");
                    }
                    b.getTable().b(this.f5731a.i, b.getIndex(), ((io.realm.internal.l) user2).c().b().getIndex(), true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (user == null) {
            this.b.b().nullifyLink(this.f5731a.i);
        } else if (!u.isManaged(user) || !u.isValid(user)) {
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else {
            if (((io.realm.internal.l) user).c().a() != this.b.a()) {
                throw new IllegalArgumentException("'value' belongs to a different Realm.");
            }
            this.b.b().setLink(this.f5731a.i, ((io.realm.internal.l) user).c().b().getIndex());
        }
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public int realmGet$voted() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5731a.j);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public void realmSet$voted(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5731a.j, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5731a.j, i);
    }

    @Override // pl.jbzd.app.model.Comment, io.realm.c
    public q<Comment> realmGet$replies() {
        this.b.a().e();
        if (this.c != null) {
            return this.c;
        }
        this.c = new q<>(Comment.class, this.b.b().getLinkList(this.f5731a.k), this.b.a());
        return this.c;
    }

    /* JADX WARN: Type inference failed for: r1v13, types: [io.realm.t] */
    @Override // pl.jbzd.app.model.Comment
    public void realmSet$replies(q<Comment> qVar) {
        if (this.b.g()) {
            if (this.b.c() && !this.b.d().contains("replies")) {
                if (qVar != null && !qVar.b()) {
                    l lVar = (l) this.b.a();
                    q<Comment> qVar2 = new q<>();
                    Iterator<Comment> it = qVar.iterator();
                    while (it.hasNext()) {
                        Comment next = it.next();
                        if (next == null || u.isManaged(next)) {
                            qVar2.a((q<Comment>) next);
                        } else {
                            qVar2.a((q<Comment>) lVar.a((l) next));
                        }
                    }
                    qVar = qVar2;
                }
            } else {
                return;
            }
        }
        this.b.a().e();
        LinkView linkList = this.b.b().getLinkList(this.f5731a.k);
        linkList.a();
        if (qVar != null) {
            Iterator<Comment> it2 = qVar.iterator();
            while (it2.hasNext()) {
                Comment next2 = it2.next();
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

    public static RealmObjectSchema a(RealmSchema realmSchema) {
        if (!realmSchema.c("Comment")) {
            RealmObjectSchema b = realmSchema.b("Comment");
            b.a(new Property("id", RealmFieldType.INTEGER, true, true, true));
            b.a(new Property(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID, RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("parent_id", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("comment", RealmFieldType.STRING, false, false, false));
            b.a(new Property("plus", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("minus", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("reports", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("created_at", RealmFieldType.DATE, false, false, false));
            if (!realmSchema.c("User")) {
                UserRealmProxy.a(realmSchema);
            }
            b.a(new Property("user", RealmFieldType.OBJECT, realmSchema.a("User")));
            b.a(new Property("voted", RealmFieldType.INTEGER, false, false, true));
            if (!realmSchema.c("Comment")) {
                a(realmSchema);
            }
            b.a(new Property("replies", RealmFieldType.LIST, realmSchema.a("Comment")));
            return b;
        }
        return realmSchema.a("Comment");
    }

    public static Table a(SharedRealm sharedRealm) {
        if (!sharedRealm.a("class_Comment")) {
            Table b = sharedRealm.b("class_Comment");
            b.a(RealmFieldType.INTEGER, "id", false);
            b.a(RealmFieldType.INTEGER, MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID, false);
            b.a(RealmFieldType.INTEGER, "parent_id", false);
            b.a(RealmFieldType.STRING, "comment", true);
            b.a(RealmFieldType.INTEGER, "plus", false);
            b.a(RealmFieldType.INTEGER, "minus", false);
            b.a(RealmFieldType.INTEGER, "reports", false);
            b.a(RealmFieldType.DATE, "created_at", true);
            if (!sharedRealm.a("class_User")) {
                UserRealmProxy.a(sharedRealm);
            }
            b.a(RealmFieldType.OBJECT, "user", sharedRealm.b("class_User"));
            b.a(RealmFieldType.INTEGER, "voted", false);
            if (!sharedRealm.a("class_Comment")) {
                a(sharedRealm);
            }
            b.a(RealmFieldType.LIST, "replies", sharedRealm.b("class_Comment"));
            b.i(b.a("id"));
            b.b("id");
            return b;
        }
        return sharedRealm.b("class_Comment");
    }

    public static a a(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.a("class_Comment")) {
            Table b = sharedRealm.b("class_Comment");
            long b2 = b.b();
            if (b2 != 11) {
                if (b2 < 11) {
                    throw new RealmMigrationNeededException(sharedRealm.h(), "Field count is less than expected - expected 11 but was " + b2);
                }
                if (z) {
                    RealmLog.a("Field count is more than expected - expected 11 but was %1$d", Long.valueOf(b2));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.h(), "Field count is more than expected - expected 11 but was " + b2);
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
            if (b.c() != aVar.f5732a) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Primary Key annotation definition was changed, from field " + b.b(b.c()) + " to field id");
            }
            if (!hashMap.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'id' in existing Realm file.");
            }
            if (b.a(aVar.f5732a) && b.k(aVar.f5732a) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            }
            if (!b.j(b.a("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            }
            if (!hashMap.containsKey(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'media_id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get(MediaVariationsIndexDatabase.IndexEntry.COLUMN_NAME_MEDIA_ID) != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'media_id' in existing Realm file.");
            }
            if (b.a(aVar.b)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'media_id' does support null values in the existing Realm file. Use corresponding boxed type for field 'media_id' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("parent_id")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'parent_id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("parent_id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'parent_id' in existing Realm file.");
            }
            if (b.a(aVar.c)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'parent_id' does support null values in the existing Realm file. Use corresponding boxed type for field 'parent_id' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("comment")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'comment' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("comment") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'comment' in existing Realm file.");
            }
            if (!b.a(aVar.d)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'comment' is required. Either set @Required to field 'comment' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("plus")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'plus' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("plus") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'plus' in existing Realm file.");
            }
            if (b.a(aVar.e)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'plus' does support null values in the existing Realm file. Use corresponding boxed type for field 'plus' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("minus")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'minus' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("minus") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'minus' in existing Realm file.");
            }
            if (b.a(aVar.f)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'minus' does support null values in the existing Realm file. Use corresponding boxed type for field 'minus' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("reports")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'reports' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("reports") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'reports' in existing Realm file.");
            }
            if (b.a(aVar.g)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'reports' does support null values in the existing Realm file. Use corresponding boxed type for field 'reports' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("created_at")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'created_at' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("created_at") != RealmFieldType.DATE) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'Date' for field 'created_at' in existing Realm file.");
            }
            if (!b.a(aVar.h)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'created_at' is required. Either set @Required to field 'created_at' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("user")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'user' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("user") != RealmFieldType.OBJECT) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'User' for field 'user'");
            }
            if (!sharedRealm.a("class_User")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing class 'class_User' for field 'user'");
            }
            Table b3 = sharedRealm.b("class_User");
            if (!b.e(aVar.i).a(b3)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid RealmObject for field 'user': '" + b.e(aVar.i).h() + "' expected - was '" + b3.h() + "'");
            }
            if (!hashMap.containsKey("voted")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'voted' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("voted") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'voted' in existing Realm file.");
            }
            if (b.a(aVar.j)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'voted' does support null values in the existing Realm file. Use corresponding boxed type for field 'voted' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("replies")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'replies'");
            }
            if (hashMap.get("replies") != RealmFieldType.LIST) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'Comment' for field 'replies'");
            }
            if (!sharedRealm.a("class_Comment")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing class 'class_Comment' for field 'replies'");
            }
            Table b4 = sharedRealm.b("class_Comment");
            if (!b.e(aVar.k).a(b4)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid RealmList type for field 'replies': '" + b.e(aVar.k).h() + "' expected - was '" + b4.h() + "'");
            }
            return aVar;
        }
        throw new RealmMigrationNeededException(sharedRealm.h(), "The 'Comment' class is missing from the schema for this Realm.");
    }

    public static String b() {
        return "class_Comment";
    }

    public static Comment a(l lVar, Comment comment, boolean z, Map<t, io.realm.internal.l> map) {
        boolean z2;
        CommentRealmProxy commentRealmProxy;
        if ((comment instanceof io.realm.internal.l) && ((io.realm.internal.l) comment).c().a() != null && ((io.realm.internal.l) comment).c().a().c != lVar.c) {
            throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
        }
        if (!(comment instanceof io.realm.internal.l) || ((io.realm.internal.l) comment).c().a() == null || !((io.realm.internal.l) comment).c().a().f().equals(lVar.f())) {
            b.C0593b c0593b = b.g.get();
            io.realm.internal.l lVar2 = map.get(comment);
            if (lVar2 != null) {
                return (Comment) lVar2;
            }
            if (!z) {
                z2 = z;
                commentRealmProxy = null;
            } else {
                Table b = lVar.b(Comment.class);
                long b2 = b.b(b.c(), comment.realmGet$id());
                if (b2 == -1) {
                    z2 = false;
                    commentRealmProxy = null;
                } else {
                    try {
                        c0593b.a(lVar, b.f(b2), lVar.f.a(Comment.class), false, Collections.emptyList());
                        commentRealmProxy = new CommentRealmProxy();
                        map.put(comment, commentRealmProxy);
                        c0593b.f();
                        z2 = z;
                    } catch (Throwable th) {
                        c0593b.f();
                        throw th;
                    }
                }
            }
            if (z2) {
                return a(lVar, commentRealmProxy, comment, map);
            }
            return b(lVar, comment, z, map);
        }
        return comment;
    }

    public static Comment b(l lVar, Comment comment, boolean z, Map<t, io.realm.internal.l> map) {
        io.realm.internal.l lVar2 = map.get(comment);
        if (lVar2 != null) {
            return (Comment) lVar2;
        }
        Comment comment2 = (Comment) lVar.a((Class<t>) Comment.class, (Object) Integer.valueOf(comment.realmGet$id()), false, Collections.emptyList());
        map.put(comment, (io.realm.internal.l) comment2);
        comment2.realmSet$media_id(comment.realmGet$media_id());
        comment2.realmSet$parent_id(comment.realmGet$parent_id());
        comment2.realmSet$comment(comment.realmGet$comment());
        comment2.realmSet$plus(comment.realmGet$plus());
        comment2.realmSet$minus(comment.realmGet$minus());
        comment2.realmSet$reports(comment.realmGet$reports());
        comment2.realmSet$created_at(comment.realmGet$created_at());
        User realmGet$user = comment.realmGet$user();
        if (realmGet$user != null) {
            User user = (User) map.get(realmGet$user);
            if (user != null) {
                comment2.realmSet$user(user);
            } else {
                comment2.realmSet$user(UserRealmProxy.a(lVar, realmGet$user, z, map));
            }
        } else {
            comment2.realmSet$user(null);
        }
        comment2.realmSet$voted(comment.realmGet$voted());
        q<Comment> realmGet$replies = comment.realmGet$replies();
        if (realmGet$replies != null) {
            q<Comment> realmGet$replies2 = comment2.realmGet$replies();
            for (int i = 0; i < realmGet$replies.size(); i++) {
                Comment comment3 = (Comment) map.get(realmGet$replies.get(i));
                if (comment3 != null) {
                    realmGet$replies2.a((q<Comment>) comment3);
                } else {
                    realmGet$replies2.a((q<Comment>) a(lVar, realmGet$replies.get(i), z, map));
                }
            }
            return comment2;
        }
        return comment2;
    }

    static Comment a(l lVar, Comment comment, Comment comment2, Map<t, io.realm.internal.l> map) {
        comment.realmSet$media_id(comment2.realmGet$media_id());
        comment.realmSet$parent_id(comment2.realmGet$parent_id());
        comment.realmSet$comment(comment2.realmGet$comment());
        comment.realmSet$plus(comment2.realmGet$plus());
        comment.realmSet$minus(comment2.realmGet$minus());
        comment.realmSet$reports(comment2.realmGet$reports());
        comment.realmSet$created_at(comment2.realmGet$created_at());
        User realmGet$user = comment2.realmGet$user();
        if (realmGet$user != null) {
            User user = (User) map.get(realmGet$user);
            if (user != null) {
                comment.realmSet$user(user);
            } else {
                comment.realmSet$user(UserRealmProxy.a(lVar, realmGet$user, true, map));
            }
        } else {
            comment.realmSet$user(null);
        }
        comment.realmSet$voted(comment2.realmGet$voted());
        q<Comment> realmGet$replies = comment2.realmGet$replies();
        q<Comment> realmGet$replies2 = comment.realmGet$replies();
        realmGet$replies2.clear();
        if (realmGet$replies != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= realmGet$replies.size()) {
                    break;
                }
                Comment comment3 = (Comment) map.get(realmGet$replies.get(i2));
                if (comment3 != null) {
                    realmGet$replies2.a((q<Comment>) comment3);
                } else {
                    realmGet$replies2.a((q<Comment>) a(lVar, realmGet$replies.get(i2), true, map));
                }
                i = i2 + 1;
            }
        }
        return comment;
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
        CommentRealmProxy commentRealmProxy = (CommentRealmProxy) obj;
        String f = this.b.a().f();
        String f2 = commentRealmProxy.b.a().f();
        if (f == null ? f2 != null : !f.equals(f2)) {
            return false;
        }
        String h = this.b.b().getTable().h();
        String h2 = commentRealmProxy.b.b().getTable().h();
        if (h == null ? h2 != null : !h.equals(h2)) {
            return false;
        }
        return this.b.b().getIndex() == commentRealmProxy.b.b().getIndex();
    }
}
