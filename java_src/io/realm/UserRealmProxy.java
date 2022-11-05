package io.realm;

import com.applovin.sdk.AppLovinEventParameters;
import io.realm.b;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.log.RealmLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pl.jbzd.app.model.User;
/* loaded from: classes3.dex */
public class UserRealmProxy extends User implements io.realm.internal.l, x {
    private static final List<String> c;

    /* renamed from: a  reason: collision with root package name */
    private a f5745a;
    private k<User> b;

    /* loaded from: classes3.dex */
    static final class a extends io.realm.internal.c implements Cloneable {

        /* renamed from: a  reason: collision with root package name */
        public long f5746a;
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
            this.f5746a = a(str, table, "User", "id");
            hashMap.put("id", Long.valueOf(this.f5746a));
            this.b = a(str, table, "User", AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER);
            hashMap.put(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, Long.valueOf(this.b));
            this.c = a(str, table, "User", "avatar");
            hashMap.put("avatar", Long.valueOf(this.c));
            this.d = a(str, table, "User", "media_count");
            hashMap.put("media_count", Long.valueOf(this.d));
            this.e = a(str, table, "User", "media_main_count");
            hashMap.put("media_main_count", Long.valueOf(this.e));
            this.f = a(str, table, "User", "comments_count");
            hashMap.put("comments_count", Long.valueOf(this.f));
            this.g = a(str, table, "User", "comments_marked_count");
            hashMap.put("comments_marked_count", Long.valueOf(this.g));
            this.h = a(str, table, "User", "followers");
            hashMap.put("followers", Long.valueOf(this.h));
            this.i = a(str, table, "User", "following");
            hashMap.put("following", Long.valueOf(this.i));
            this.j = a(str, table, "User", "is_following");
            hashMap.put("is_following", Long.valueOf(this.j));
            this.k = a(str, table, "User", "account_since");
            hashMap.put("account_since", Long.valueOf(this.k));
            a(hashMap);
        }

        @Override // io.realm.internal.c
        public final void a(io.realm.internal.c cVar) {
            a aVar = (a) cVar;
            this.f5746a = aVar.f5746a;
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
        arrayList.add(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER);
        arrayList.add("avatar");
        arrayList.add("media_count");
        arrayList.add("media_main_count");
        arrayList.add("comments_count");
        arrayList.add("comments_marked_count");
        arrayList.add("followers");
        arrayList.add("following");
        arrayList.add("is_following");
        arrayList.add("account_since");
        c = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserRealmProxy() {
        this.b.h();
    }

    @Override // io.realm.internal.l
    public void a() {
        if (this.b == null) {
            b.C0593b c0593b = b.g.get();
            this.f5745a = (a) c0593b.c();
            this.b = new k<>(this);
            this.b.a(c0593b.a());
            this.b.a(c0593b.b());
            this.b.a(c0593b.d());
            this.b.a(c0593b.e());
        }
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public int realmGet$id() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5745a.f5746a);
    }

    @Override // pl.jbzd.app.model.User
    public void realmSet$id(int i) {
        if (this.b.g()) {
            return;
        }
        this.b.a().e();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public String realmGet$username() {
        this.b.a().e();
        return this.b.b().getString(this.f5745a.b);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$username(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5745a.b, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5745a.b, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5745a.b);
        } else {
            this.b.b().setString(this.f5745a.b, str);
        }
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public String realmGet$avatar() {
        this.b.a().e();
        return this.b.b().getString(this.f5745a.c);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$avatar(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5745a.c, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5745a.c, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5745a.c);
        } else {
            this.b.b().setString(this.f5745a.c, str);
        }
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public int realmGet$media_count() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5745a.d);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$media_count(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5745a.d, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5745a.d, i);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public int realmGet$media_main_count() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5745a.e);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$media_main_count(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5745a.e, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5745a.e, i);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public int realmGet$comments_count() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5745a.f);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$comments_count(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5745a.f, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5745a.f, i);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public int realmGet$comments_marked_count() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5745a.g);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$comments_marked_count(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5745a.g, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5745a.g, i);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public int realmGet$followers() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5745a.h);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$followers(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5745a.h, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5745a.h, i);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public int realmGet$following() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5745a.i);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$following(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5745a.i, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5745a.i, i);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public boolean realmGet$is_following() {
        this.b.a().e();
        return this.b.b().getBoolean(this.f5745a.j);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$is_following(boolean z) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5745a.j, b.getIndex(), z, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setBoolean(this.f5745a.j, z);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public String realmGet$account_since() {
        this.b.a().e();
        return this.b.b().getString(this.f5745a.k);
    }

    @Override // pl.jbzd.app.model.User, io.realm.x
    public void realmSet$account_since(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5745a.k, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5745a.k, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5745a.k);
        } else {
            this.b.b().setString(this.f5745a.k, str);
        }
    }

    public static RealmObjectSchema a(RealmSchema realmSchema) {
        if (!realmSchema.c("User")) {
            RealmObjectSchema b = realmSchema.b("User");
            b.a(new Property("id", RealmFieldType.INTEGER, true, true, true));
            b.a(new Property(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, RealmFieldType.STRING, false, false, false));
            b.a(new Property("avatar", RealmFieldType.STRING, false, false, false));
            b.a(new Property("media_count", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("media_main_count", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("comments_count", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("comments_marked_count", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("followers", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("following", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("is_following", RealmFieldType.BOOLEAN, false, false, true));
            b.a(new Property("account_since", RealmFieldType.STRING, false, false, false));
            return b;
        }
        return realmSchema.a("User");
    }

    public static Table a(SharedRealm sharedRealm) {
        if (!sharedRealm.a("class_User")) {
            Table b = sharedRealm.b("class_User");
            b.a(RealmFieldType.INTEGER, "id", false);
            b.a(RealmFieldType.STRING, AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER, true);
            b.a(RealmFieldType.STRING, "avatar", true);
            b.a(RealmFieldType.INTEGER, "media_count", false);
            b.a(RealmFieldType.INTEGER, "media_main_count", false);
            b.a(RealmFieldType.INTEGER, "comments_count", false);
            b.a(RealmFieldType.INTEGER, "comments_marked_count", false);
            b.a(RealmFieldType.INTEGER, "followers", false);
            b.a(RealmFieldType.INTEGER, "following", false);
            b.a(RealmFieldType.BOOLEAN, "is_following", false);
            b.a(RealmFieldType.STRING, "account_since", true);
            b.i(b.a("id"));
            b.b("id");
            return b;
        }
        return sharedRealm.b("class_User");
    }

    public static a a(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.a("class_User")) {
            Table b = sharedRealm.b("class_User");
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
            if (b.c() != aVar.f5746a) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Primary Key annotation definition was changed, from field " + b.b(b.c()) + " to field id");
            }
            if (!hashMap.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'id' in existing Realm file.");
            }
            if (b.a(aVar.f5746a) && b.k(aVar.f5746a) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            }
            if (!b.j(b.a("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            }
            if (!hashMap.containsKey(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'username' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER) != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'username' in existing Realm file.");
            }
            if (!b.a(aVar.b)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'username' is required. Either set @Required to field 'username' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("avatar")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'avatar' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("avatar") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'avatar' in existing Realm file.");
            }
            if (!b.a(aVar.c)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'avatar' is required. Either set @Required to field 'avatar' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("media_count")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'media_count' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("media_count") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'media_count' in existing Realm file.");
            }
            if (b.a(aVar.d)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'media_count' does support null values in the existing Realm file. Use corresponding boxed type for field 'media_count' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("media_main_count")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'media_main_count' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("media_main_count") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'media_main_count' in existing Realm file.");
            }
            if (b.a(aVar.e)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'media_main_count' does support null values in the existing Realm file. Use corresponding boxed type for field 'media_main_count' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("comments_count")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'comments_count' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("comments_count") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'comments_count' in existing Realm file.");
            }
            if (b.a(aVar.f)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'comments_count' does support null values in the existing Realm file. Use corresponding boxed type for field 'comments_count' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("comments_marked_count")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'comments_marked_count' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("comments_marked_count") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'comments_marked_count' in existing Realm file.");
            }
            if (b.a(aVar.g)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'comments_marked_count' does support null values in the existing Realm file. Use corresponding boxed type for field 'comments_marked_count' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("followers")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'followers' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("followers") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'followers' in existing Realm file.");
            }
            if (b.a(aVar.h)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'followers' does support null values in the existing Realm file. Use corresponding boxed type for field 'followers' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("following")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'following' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("following") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'following' in existing Realm file.");
            }
            if (b.a(aVar.i)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'following' does support null values in the existing Realm file. Use corresponding boxed type for field 'following' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("is_following")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'is_following' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("is_following") != RealmFieldType.BOOLEAN) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'boolean' for field 'is_following' in existing Realm file.");
            }
            if (b.a(aVar.j)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'is_following' does support null values in the existing Realm file. Use corresponding boxed type for field 'is_following' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("account_since")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'account_since' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("account_since") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'account_since' in existing Realm file.");
            }
            if (!b.a(aVar.k)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'account_since' is required. Either set @Required to field 'account_since' or migrate using RealmObjectSchema.setNullable().");
            }
            return aVar;
        }
        throw new RealmMigrationNeededException(sharedRealm.h(), "The 'User' class is missing from the schema for this Realm.");
    }

    public static String b() {
        return "class_User";
    }

    public static User a(l lVar, User user, boolean z, Map<t, io.realm.internal.l> map) {
        boolean z2;
        UserRealmProxy userRealmProxy;
        if ((user instanceof io.realm.internal.l) && ((io.realm.internal.l) user).c().a() != null && ((io.realm.internal.l) user).c().a().c != lVar.c) {
            throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
        }
        if (!(user instanceof io.realm.internal.l) || ((io.realm.internal.l) user).c().a() == null || !((io.realm.internal.l) user).c().a().f().equals(lVar.f())) {
            b.C0593b c0593b = b.g.get();
            io.realm.internal.l lVar2 = map.get(user);
            if (lVar2 != null) {
                return (User) lVar2;
            }
            if (!z) {
                z2 = z;
                userRealmProxy = null;
            } else {
                Table b = lVar.b(User.class);
                long b2 = b.b(b.c(), user.realmGet$id());
                if (b2 == -1) {
                    z2 = false;
                    userRealmProxy = null;
                } else {
                    try {
                        c0593b.a(lVar, b.f(b2), lVar.f.a(User.class), false, Collections.emptyList());
                        userRealmProxy = new UserRealmProxy();
                        map.put(user, userRealmProxy);
                        c0593b.f();
                        z2 = z;
                    } catch (Throwable th) {
                        c0593b.f();
                        throw th;
                    }
                }
            }
            if (z2) {
                return a(lVar, userRealmProxy, user, map);
            }
            return b(lVar, user, z, map);
        }
        return user;
    }

    public static User b(l lVar, User user, boolean z, Map<t, io.realm.internal.l> map) {
        io.realm.internal.l lVar2 = map.get(user);
        if (lVar2 != null) {
            return (User) lVar2;
        }
        User user2 = (User) lVar.a((Class<t>) User.class, (Object) Integer.valueOf(user.realmGet$id()), false, Collections.emptyList());
        map.put(user, (io.realm.internal.l) user2);
        user2.realmSet$username(user.realmGet$username());
        user2.realmSet$avatar(user.realmGet$avatar());
        user2.realmSet$media_count(user.realmGet$media_count());
        user2.realmSet$media_main_count(user.realmGet$media_main_count());
        user2.realmSet$comments_count(user.realmGet$comments_count());
        user2.realmSet$comments_marked_count(user.realmGet$comments_marked_count());
        user2.realmSet$followers(user.realmGet$followers());
        user2.realmSet$following(user.realmGet$following());
        user2.realmSet$is_following(user.realmGet$is_following());
        user2.realmSet$account_since(user.realmGet$account_since());
        return user2;
    }

    static User a(l lVar, User user, User user2, Map<t, io.realm.internal.l> map) {
        user.realmSet$username(user2.realmGet$username());
        user.realmSet$avatar(user2.realmGet$avatar());
        user.realmSet$media_count(user2.realmGet$media_count());
        user.realmSet$media_main_count(user2.realmGet$media_main_count());
        user.realmSet$comments_count(user2.realmGet$comments_count());
        user.realmSet$comments_marked_count(user2.realmGet$comments_marked_count());
        user.realmSet$followers(user2.realmGet$followers());
        user.realmSet$following(user2.realmGet$following());
        user.realmSet$is_following(user2.realmGet$is_following());
        user.realmSet$account_since(user2.realmGet$account_since());
        return user;
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
        UserRealmProxy userRealmProxy = (UserRealmProxy) obj;
        String f = this.b.a().f();
        String f2 = userRealmProxy.b.a().f();
        if (f == null ? f2 != null : !f.equals(f2)) {
            return false;
        }
        String h = this.b.b().getTable().h();
        String h2 = userRealmProxy.b.b().getTable().h();
        if (h == null ? h2 != null : !h.equals(h2)) {
            return false;
        }
        return this.b.b().getIndex() == userRealmProxy.b.b().getIndex();
    }
}
