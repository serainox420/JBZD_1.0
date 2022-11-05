package io.realm;

import com.madsdk.AdView;
import io.realm.b;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import io.realm.log.RealmLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pl.jbzd.app.model.Picture;
/* loaded from: classes3.dex */
public class PictureRealmProxy extends Picture implements io.realm.internal.l, j {
    private static final List<String> c;

    /* renamed from: a  reason: collision with root package name */
    private a f5737a;
    private k<Picture> b;

    /* loaded from: classes3.dex */
    static final class a extends io.realm.internal.c implements Cloneable {

        /* renamed from: a  reason: collision with root package name */
        public long f5738a;
        public long b;
        public long c;
        public long d;
        public long e;
        public long f;
        public long g;
        public long h;
        public long i;

        a(String str, Table table) {
            HashMap hashMap = new HashMap(9);
            this.f5738a = a(str, table, "Picture", "id");
            hashMap.put("id", Long.valueOf(this.f5738a));
            this.b = a(str, table, "Picture", AdView.DEFAULT_IMAGE_NAME);
            hashMap.put(AdView.DEFAULT_IMAGE_NAME, Long.valueOf(this.b));
            this.c = a(str, table, "Picture", "mp4");
            hashMap.put("mp4", Long.valueOf(this.c));
            this.d = a(str, table, "Picture", "width");
            hashMap.put("width", Long.valueOf(this.d));
            this.e = a(str, table, "Picture", "height");
            hashMap.put("height", Long.valueOf(this.e));
            this.f = a(str, table, "Picture", "added");
            hashMap.put("added", Long.valueOf(this.f));
            this.g = a(str, table, "Picture", "type");
            hashMap.put("type", Long.valueOf(this.g));
            this.h = a(str, table, "Picture", "share_image");
            hashMap.put("share_image", Long.valueOf(this.h));
            this.i = a(str, table, "Picture", "youtube");
            hashMap.put("youtube", Long.valueOf(this.i));
            a(hashMap);
        }

        @Override // io.realm.internal.c
        public final void a(io.realm.internal.c cVar) {
            a aVar = (a) cVar;
            this.f5738a = aVar.f5738a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            this.g = aVar.g;
            this.h = aVar.h;
            this.i = aVar.i;
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
        arrayList.add(AdView.DEFAULT_IMAGE_NAME);
        arrayList.add("mp4");
        arrayList.add("width");
        arrayList.add("height");
        arrayList.add("added");
        arrayList.add("type");
        arrayList.add("share_image");
        arrayList.add("youtube");
        c = Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PictureRealmProxy() {
        this.b.h();
    }

    @Override // io.realm.internal.l
    public void a() {
        if (this.b == null) {
            b.C0593b c0593b = b.g.get();
            this.f5737a = (a) c0593b.c();
            this.b = new k<>(this);
            this.b.a(c0593b.a());
            this.b.a(c0593b.b());
            this.b.a(c0593b.d());
            this.b.a(c0593b.e());
        }
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public int realmGet$id() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5737a.f5738a);
    }

    @Override // pl.jbzd.app.model.Picture
    public void realmSet$id(int i) {
        if (this.b.g()) {
            return;
        }
        this.b.a().e();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public String realmGet$image() {
        this.b.a().e();
        return this.b.b().getString(this.f5737a.b);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$image(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5737a.b, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5737a.b, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5737a.b);
        } else {
            this.b.b().setString(this.f5737a.b, str);
        }
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public String realmGet$mp4() {
        this.b.a().e();
        return this.b.b().getString(this.f5737a.c);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$mp4(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5737a.c, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5737a.c, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5737a.c);
        } else {
            this.b.b().setString(this.f5737a.c, str);
        }
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public int realmGet$width() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5737a.d);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$width(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5737a.d, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5737a.d, i);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public int realmGet$height() {
        this.b.a().e();
        return (int) this.b.b().getLong(this.f5737a.e);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$height(int i) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                b.getTable().a(this.f5737a.e, b.getIndex(), i, true);
                return;
            }
            return;
        }
        this.b.a().e();
        this.b.b().setLong(this.f5737a.e, i);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public Date realmGet$added() {
        this.b.a().e();
        if (this.b.b().isNull(this.f5737a.f)) {
            return null;
        }
        return this.b.b().getDate(this.f5737a.f);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$added(Date date) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (date == null) {
                    b.getTable().a(this.f5737a.f, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5737a.f, b.getIndex(), date, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (date == null) {
            this.b.b().setNull(this.f5737a.f);
        } else {
            this.b.b().setDate(this.f5737a.f, date);
        }
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public String realmGet$type() {
        this.b.a().e();
        return this.b.b().getString(this.f5737a.g);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$type(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5737a.g, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5737a.g, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5737a.g);
        } else {
            this.b.b().setString(this.f5737a.g, str);
        }
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public String realmGet$share_image() {
        this.b.a().e();
        return this.b.b().getString(this.f5737a.h);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$share_image(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5737a.h, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5737a.h, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5737a.h);
        } else {
            this.b.b().setString(this.f5737a.h, str);
        }
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public String realmGet$youtube() {
        this.b.a().e();
        return this.b.b().getString(this.f5737a.i);
    }

    @Override // pl.jbzd.app.model.Picture, io.realm.j
    public void realmSet$youtube(String str) {
        if (this.b.g()) {
            if (this.b.c()) {
                io.realm.internal.n b = this.b.b();
                if (str == null) {
                    b.getTable().a(this.f5737a.i, b.getIndex(), true);
                    return;
                } else {
                    b.getTable().a(this.f5737a.i, b.getIndex(), str, true);
                    return;
                }
            }
            return;
        }
        this.b.a().e();
        if (str == null) {
            this.b.b().setNull(this.f5737a.i);
        } else {
            this.b.b().setString(this.f5737a.i, str);
        }
    }

    public static RealmObjectSchema a(RealmSchema realmSchema) {
        if (!realmSchema.c("Picture")) {
            RealmObjectSchema b = realmSchema.b("Picture");
            b.a(new Property("id", RealmFieldType.INTEGER, true, true, true));
            b.a(new Property(AdView.DEFAULT_IMAGE_NAME, RealmFieldType.STRING, false, false, false));
            b.a(new Property("mp4", RealmFieldType.STRING, false, false, false));
            b.a(new Property("width", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("height", RealmFieldType.INTEGER, false, false, true));
            b.a(new Property("added", RealmFieldType.DATE, false, false, false));
            b.a(new Property("type", RealmFieldType.STRING, false, false, false));
            b.a(new Property("share_image", RealmFieldType.STRING, false, false, false));
            b.a(new Property("youtube", RealmFieldType.STRING, false, false, false));
            return b;
        }
        return realmSchema.a("Picture");
    }

    public static Table a(SharedRealm sharedRealm) {
        if (!sharedRealm.a("class_Picture")) {
            Table b = sharedRealm.b("class_Picture");
            b.a(RealmFieldType.INTEGER, "id", false);
            b.a(RealmFieldType.STRING, AdView.DEFAULT_IMAGE_NAME, true);
            b.a(RealmFieldType.STRING, "mp4", true);
            b.a(RealmFieldType.INTEGER, "width", false);
            b.a(RealmFieldType.INTEGER, "height", false);
            b.a(RealmFieldType.DATE, "added", true);
            b.a(RealmFieldType.STRING, "type", true);
            b.a(RealmFieldType.STRING, "share_image", true);
            b.a(RealmFieldType.STRING, "youtube", true);
            b.i(b.a("id"));
            b.b("id");
            return b;
        }
        return sharedRealm.b("class_Picture");
    }

    public static a a(SharedRealm sharedRealm, boolean z) {
        if (sharedRealm.a("class_Picture")) {
            Table b = sharedRealm.b("class_Picture");
            long b2 = b.b();
            if (b2 != 9) {
                if (b2 < 9) {
                    throw new RealmMigrationNeededException(sharedRealm.h(), "Field count is less than expected - expected 9 but was " + b2);
                }
                if (z) {
                    RealmLog.a("Field count is more than expected - expected 9 but was %1$d", Long.valueOf(b2));
                } else {
                    throw new RealmMigrationNeededException(sharedRealm.h(), "Field count is more than expected - expected 9 but was " + b2);
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
            if (b.c() != aVar.f5738a) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Primary Key annotation definition was changed, from field " + b.b(b.c()) + " to field id");
            }
            if (!hashMap.containsKey("id")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'id' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("id") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'id' in existing Realm file.");
            }
            if (b.a(aVar.f5738a) && b.k(aVar.f5738a) != -1) {
                throw new IllegalStateException("Cannot migrate an object with null value in field 'id'. Either maintain the same type for primary key field 'id', or remove the object with null value before migration.");
            }
            if (!b.j(b.a("id"))) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Index not defined for field 'id' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex().");
            }
            if (!hashMap.containsKey(AdView.DEFAULT_IMAGE_NAME)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'image' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get(AdView.DEFAULT_IMAGE_NAME) != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'image' in existing Realm file.");
            }
            if (!b.a(aVar.b)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'image' is required. Either set @Required to field 'image' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("mp4")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'mp4' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("mp4") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'mp4' in existing Realm file.");
            }
            if (!b.a(aVar.c)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'mp4' is required. Either set @Required to field 'mp4' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("width")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'width' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("width") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'width' in existing Realm file.");
            }
            if (b.a(aVar.d)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'width' does support null values in the existing Realm file. Use corresponding boxed type for field 'width' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("height")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'height' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("height") != RealmFieldType.INTEGER) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'int' for field 'height' in existing Realm file.");
            }
            if (b.a(aVar.e)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'height' does support null values in the existing Realm file. Use corresponding boxed type for field 'height' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("added")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'added' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("added") != RealmFieldType.DATE) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'Date' for field 'added' in existing Realm file.");
            }
            if (!b.a(aVar.f)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'added' is required. Either set @Required to field 'added' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("type")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'type' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("type") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'type' in existing Realm file.");
            }
            if (!b.a(aVar.g)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'type' is required. Either set @Required to field 'type' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("share_image")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'share_image' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("share_image") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'share_image' in existing Realm file.");
            }
            if (!b.a(aVar.h)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'share_image' is required. Either set @Required to field 'share_image' or migrate using RealmObjectSchema.setNullable().");
            }
            if (!hashMap.containsKey("youtube")) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Missing field 'youtube' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn().");
            }
            if (hashMap.get("youtube") != RealmFieldType.STRING) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Invalid type 'String' for field 'youtube' in existing Realm file.");
            }
            if (!b.a(aVar.i)) {
                throw new RealmMigrationNeededException(sharedRealm.h(), "Field 'youtube' is required. Either set @Required to field 'youtube' or migrate using RealmObjectSchema.setNullable().");
            }
            return aVar;
        }
        throw new RealmMigrationNeededException(sharedRealm.h(), "The 'Picture' class is missing from the schema for this Realm.");
    }

    public static String b() {
        return "class_Picture";
    }

    public static Picture a(l lVar, Picture picture, boolean z, Map<t, io.realm.internal.l> map) {
        boolean z2;
        PictureRealmProxy pictureRealmProxy;
        if ((picture instanceof io.realm.internal.l) && ((io.realm.internal.l) picture).c().a() != null && ((io.realm.internal.l) picture).c().a().c != lVar.c) {
            throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
        }
        if (!(picture instanceof io.realm.internal.l) || ((io.realm.internal.l) picture).c().a() == null || !((io.realm.internal.l) picture).c().a().f().equals(lVar.f())) {
            b.C0593b c0593b = b.g.get();
            io.realm.internal.l lVar2 = map.get(picture);
            if (lVar2 != null) {
                return (Picture) lVar2;
            }
            if (!z) {
                z2 = z;
                pictureRealmProxy = null;
            } else {
                Table b = lVar.b(Picture.class);
                long b2 = b.b(b.c(), picture.realmGet$id());
                if (b2 == -1) {
                    z2 = false;
                    pictureRealmProxy = null;
                } else {
                    try {
                        c0593b.a(lVar, b.f(b2), lVar.f.a(Picture.class), false, Collections.emptyList());
                        pictureRealmProxy = new PictureRealmProxy();
                        map.put(picture, pictureRealmProxy);
                        c0593b.f();
                        z2 = z;
                    } catch (Throwable th) {
                        c0593b.f();
                        throw th;
                    }
                }
            }
            if (z2) {
                return a(lVar, pictureRealmProxy, picture, map);
            }
            return b(lVar, picture, z, map);
        }
        return picture;
    }

    public static Picture b(l lVar, Picture picture, boolean z, Map<t, io.realm.internal.l> map) {
        io.realm.internal.l lVar2 = map.get(picture);
        if (lVar2 != null) {
            return (Picture) lVar2;
        }
        Picture picture2 = (Picture) lVar.a((Class<t>) Picture.class, (Object) Integer.valueOf(picture.realmGet$id()), false, Collections.emptyList());
        map.put(picture, (io.realm.internal.l) picture2);
        picture2.realmSet$image(picture.realmGet$image());
        picture2.realmSet$mp4(picture.realmGet$mp4());
        picture2.realmSet$width(picture.realmGet$width());
        picture2.realmSet$height(picture.realmGet$height());
        picture2.realmSet$added(picture.realmGet$added());
        picture2.realmSet$type(picture.realmGet$type());
        picture2.realmSet$share_image(picture.realmGet$share_image());
        picture2.realmSet$youtube(picture.realmGet$youtube());
        return picture2;
    }

    static Picture a(l lVar, Picture picture, Picture picture2, Map<t, io.realm.internal.l> map) {
        picture.realmSet$image(picture2.realmGet$image());
        picture.realmSet$mp4(picture2.realmGet$mp4());
        picture.realmSet$width(picture2.realmGet$width());
        picture.realmSet$height(picture2.realmGet$height());
        picture.realmSet$added(picture2.realmGet$added());
        picture.realmSet$type(picture2.realmGet$type());
        picture.realmSet$share_image(picture2.realmGet$share_image());
        picture.realmSet$youtube(picture2.realmGet$youtube());
        return picture;
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
        PictureRealmProxy pictureRealmProxy = (PictureRealmProxy) obj;
        String f = this.b.a().f();
        String f2 = pictureRealmProxy.b.a().f();
        if (f == null ? f2 != null : !f.equals(f2)) {
            return false;
        }
        String h = this.b.b().getTable().h();
        String h2 = pictureRealmProxy.b.b().getTable().h();
        if (h == null ? h2 != null : !h.equals(h2)) {
            return false;
        }
        return this.b.b().getIndex() == pictureRealmProxy.b.b().getIndex();
    }
}
