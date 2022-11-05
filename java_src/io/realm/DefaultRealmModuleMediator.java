package io.realm;

import io.realm.annotations.RealmModule;
import io.realm.b;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import pl.jbzd.app.model.BaseMedia;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.Picture;
import pl.jbzd.app.model.User;
@RealmModule
/* loaded from: classes.dex */
class DefaultRealmModuleMediator extends io.realm.internal.m {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<Class<? extends t>> f5733a;

    @Override // io.realm.internal.m
    public boolean b() {
        return true;
    }

    DefaultRealmModuleMediator() {
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(Comment.class);
        hashSet.add(Media.class);
        hashSet.add(BaseMedia.class);
        hashSet.add(Picture.class);
        hashSet.add(User.class);
        f5733a = Collections.unmodifiableSet(hashSet);
    }

    @Override // io.realm.internal.m
    public Table a(Class<? extends t> cls, SharedRealm sharedRealm) {
        b(cls);
        if (cls.equals(Comment.class)) {
            return CommentRealmProxy.a(sharedRealm);
        }
        if (cls.equals(Media.class)) {
            return MediaRealmProxy.a(sharedRealm);
        }
        if (cls.equals(BaseMedia.class)) {
            return BaseMediaRealmProxy.a(sharedRealm);
        }
        if (cls.equals(Picture.class)) {
            return PictureRealmProxy.a(sharedRealm);
        }
        if (cls.equals(User.class)) {
            return UserRealmProxy.a(sharedRealm);
        }
        throw c(cls);
    }

    @Override // io.realm.internal.m
    public RealmObjectSchema a(Class<? extends t> cls, RealmSchema realmSchema) {
        b(cls);
        if (cls.equals(Comment.class)) {
            return CommentRealmProxy.a(realmSchema);
        }
        if (cls.equals(Media.class)) {
            return MediaRealmProxy.a(realmSchema);
        }
        if (cls.equals(BaseMedia.class)) {
            return BaseMediaRealmProxy.a(realmSchema);
        }
        if (cls.equals(Picture.class)) {
            return PictureRealmProxy.a(realmSchema);
        }
        if (cls.equals(User.class)) {
            return UserRealmProxy.a(realmSchema);
        }
        throw c(cls);
    }

    @Override // io.realm.internal.m
    public io.realm.internal.c a(Class<? extends t> cls, SharedRealm sharedRealm, boolean z) {
        b(cls);
        if (cls.equals(Comment.class)) {
            return CommentRealmProxy.a(sharedRealm, z);
        }
        if (cls.equals(Media.class)) {
            return MediaRealmProxy.a(sharedRealm, z);
        }
        if (cls.equals(BaseMedia.class)) {
            return BaseMediaRealmProxy.a(sharedRealm, z);
        }
        if (cls.equals(Picture.class)) {
            return PictureRealmProxy.a(sharedRealm, z);
        }
        if (cls.equals(User.class)) {
            return UserRealmProxy.a(sharedRealm, z);
        }
        throw c(cls);
    }

    @Override // io.realm.internal.m
    public String a(Class<? extends t> cls) {
        b(cls);
        if (cls.equals(Comment.class)) {
            return CommentRealmProxy.b();
        }
        if (cls.equals(Media.class)) {
            return MediaRealmProxy.b();
        }
        if (cls.equals(BaseMedia.class)) {
            return BaseMediaRealmProxy.b();
        }
        if (cls.equals(Picture.class)) {
            return PictureRealmProxy.b();
        }
        if (cls.equals(User.class)) {
            return UserRealmProxy.b();
        }
        throw c(cls);
    }

    @Override // io.realm.internal.m
    public <E extends t> E a(Class<E> cls, Object obj, io.realm.internal.n nVar, io.realm.internal.c cVar, boolean z, List<String> list) {
        E cast;
        b.C0593b c0593b = b.g.get();
        try {
            c0593b.a((b) obj, nVar, cVar, z, list);
            b(cls);
            if (cls.equals(Comment.class)) {
                cast = cls.cast(new CommentRealmProxy());
            } else if (cls.equals(Media.class)) {
                cast = cls.cast(new MediaRealmProxy());
            } else if (cls.equals(BaseMedia.class)) {
                cast = cls.cast(new BaseMediaRealmProxy());
            } else if (cls.equals(Picture.class)) {
                cast = cls.cast(new PictureRealmProxy());
            } else if (!cls.equals(User.class)) {
                throw c(cls);
            } else {
                cast = cls.cast(new UserRealmProxy());
            }
            return cast;
        } finally {
            c0593b.f();
        }
    }

    @Override // io.realm.internal.m
    public Set<Class<? extends t>> a() {
        return f5733a;
    }

    @Override // io.realm.internal.m
    public <E extends t> E a(l lVar, E e, boolean z, Map<t, io.realm.internal.l> map) {
        Class<?> superclass = e instanceof io.realm.internal.l ? e.getClass().getSuperclass() : e.getClass();
        if (superclass.equals(Comment.class)) {
            return (E) superclass.cast(CommentRealmProxy.a(lVar, (Comment) e, z, map));
        }
        if (superclass.equals(Media.class)) {
            return (E) superclass.cast(MediaRealmProxy.a(lVar, (Media) e, z, map));
        }
        if (superclass.equals(BaseMedia.class)) {
            return (E) superclass.cast(BaseMediaRealmProxy.a(lVar, (BaseMedia) e, z, map));
        }
        if (superclass.equals(Picture.class)) {
            return (E) superclass.cast(PictureRealmProxy.a(lVar, (Picture) e, z, map));
        }
        if (superclass.equals(User.class)) {
            return (E) superclass.cast(UserRealmProxy.a(lVar, (User) e, z, map));
        }
        throw c(superclass);
    }
}
