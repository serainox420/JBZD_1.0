package android.support.v7.media;

import android.content.IntentFilter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* compiled from: MediaRouteSelector.java */
/* loaded from: classes.dex */
public final class f {
    public static final f b = new f(new Bundle(), null);

    /* renamed from: a  reason: collision with root package name */
    List<String> f652a;
    private final Bundle c;

    f(Bundle bundle, List<String> list) {
        this.c = bundle;
        this.f652a = list;
    }

    public List<String> a() {
        b();
        return this.f652a;
    }

    void b() {
        if (this.f652a == null) {
            this.f652a = this.c.getStringArrayList("controlCategories");
            if (this.f652a == null || this.f652a.isEmpty()) {
                this.f652a = Collections.emptyList();
            }
        }
    }

    public boolean a(List<IntentFilter> list) {
        if (list != null) {
            b();
            int size = this.f652a.size();
            if (size != 0) {
                int size2 = list.size();
                for (int i = 0; i < size2; i++) {
                    IntentFilter intentFilter = list.get(i);
                    if (intentFilter != null) {
                        for (int i2 = 0; i2 < size; i2++) {
                            if (intentFilter.hasCategory(this.f652a.get(i2))) {
                                return true;
                            }
                        }
                        continue;
                    }
                }
            }
        }
        return false;
    }

    public boolean a(f fVar) {
        if (fVar != null) {
            b();
            fVar.b();
            return this.f652a.containsAll(fVar.f652a);
        }
        return false;
    }

    public boolean c() {
        b();
        return this.f652a.isEmpty();
    }

    public boolean d() {
        b();
        return !this.f652a.contains(null);
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            b();
            fVar.b();
            return this.f652a.equals(fVar.f652a);
        }
        return false;
    }

    public int hashCode() {
        b();
        return this.f652a.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MediaRouteSelector{ ");
        sb.append("controlCategories=").append(Arrays.toString(a().toArray()));
        sb.append(" }");
        return sb.toString();
    }

    public Bundle e() {
        return this.c;
    }

    public static f a(Bundle bundle) {
        if (bundle != null) {
            return new f(bundle, null);
        }
        return null;
    }

    /* compiled from: MediaRouteSelector.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<String> f653a;

        public a() {
        }

        public a(f fVar) {
            if (fVar == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            fVar.b();
            if (!fVar.f652a.isEmpty()) {
                this.f653a = new ArrayList<>(fVar.f652a);
            }
        }

        public a a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("category must not be null");
            }
            if (this.f653a == null) {
                this.f653a = new ArrayList<>();
            }
            if (!this.f653a.contains(str)) {
                this.f653a.add(str);
            }
            return this;
        }

        public a a(Collection<String> collection) {
            if (collection == null) {
                throw new IllegalArgumentException("categories must not be null");
            }
            if (!collection.isEmpty()) {
                for (String str : collection) {
                    a(str);
                }
            }
            return this;
        }

        public a a(f fVar) {
            if (fVar == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            a(fVar.a());
            return this;
        }

        public f a() {
            if (this.f653a == null) {
                return f.b;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("controlCategories", this.f653a);
            return new f(bundle, this.f653a);
        }
    }
}
