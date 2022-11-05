package android.support.v7.media;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* compiled from: MediaRouteProviderDescriptor.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    final Bundle f650a;
    List<android.support.v7.media.a> b;

    d(Bundle bundle, List<android.support.v7.media.a> list) {
        this.f650a = bundle;
        this.b = list;
    }

    public List<android.support.v7.media.a> a() {
        b();
        return this.b;
    }

    void b() {
        if (this.b == null) {
            ArrayList parcelableArrayList = this.f650a.getParcelableArrayList("routes");
            if (parcelableArrayList == null || parcelableArrayList.isEmpty()) {
                this.b = Collections.emptyList();
                return;
            }
            int size = parcelableArrayList.size();
            this.b = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                this.b.add(android.support.v7.media.a.a((Bundle) parcelableArrayList.get(i)));
            }
        }
    }

    public boolean c() {
        b();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            android.support.v7.media.a aVar = this.b.get(i);
            if (aVar == null || !aVar.w()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MediaRouteProviderDescriptor{ ");
        sb.append("routes=").append(Arrays.toString(a().toArray()));
        sb.append(", isValid=").append(c());
        sb.append(" }");
        return sb.toString();
    }

    public Bundle d() {
        return this.f650a;
    }

    public static d a(Bundle bundle) {
        if (bundle != null) {
            return new d(bundle, null);
        }
        return null;
    }

    /* compiled from: MediaRouteProviderDescriptor.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f651a;
        private ArrayList<android.support.v7.media.a> b;

        public a() {
            this.f651a = new Bundle();
        }

        public a(d dVar) {
            if (dVar == null) {
                throw new IllegalArgumentException("descriptor must not be null");
            }
            this.f651a = new Bundle(dVar.f650a);
            dVar.b();
            if (!dVar.b.isEmpty()) {
                this.b = new ArrayList<>(dVar.b);
            }
        }

        public a a(android.support.v7.media.a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("route must not be null");
            }
            if (this.b == null) {
                this.b = new ArrayList<>();
            } else if (this.b.contains(aVar)) {
                throw new IllegalArgumentException("route descriptor already added");
            }
            this.b.add(aVar);
            return this;
        }

        public a a(Collection<android.support.v7.media.a> collection) {
            if (collection == null) {
                throw new IllegalArgumentException("routes must not be null");
            }
            if (!collection.isEmpty()) {
                for (android.support.v7.media.a aVar : collection) {
                    a(aVar);
                }
            }
            return this;
        }

        public d a() {
            if (this.b != null) {
                int size = this.b.size();
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(size);
                for (int i = 0; i < size; i++) {
                    arrayList.add(this.b.get(i).x());
                }
                this.f651a.putParcelableArrayList("routes", arrayList);
            }
            return new d(this.f651a, this.b);
        }
    }
}
