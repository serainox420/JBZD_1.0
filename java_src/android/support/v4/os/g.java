package android.support.v4.os;

import android.annotation.TargetApi;
import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: ParcelableCompatHoneycombMR2.java */
@TargetApi(13)
/* loaded from: classes.dex */
class g<T> implements Parcelable.ClassLoaderCreator<T> {

    /* renamed from: a  reason: collision with root package name */
    private final f<T> f405a;

    public g(f<T> fVar) {
        this.f405a = fVar;
    }

    @Override // android.os.Parcelable.Creator
    public T createFromParcel(Parcel parcel) {
        return this.f405a.b(parcel, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.f405a.b(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public T[] newArray(int i) {
        return this.f405a.b(i);
    }
}
