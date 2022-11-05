package android.support.v4.os;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: ParcelableCompat.java */
/* loaded from: classes.dex */
public final class e {
    public static <T> Parcelable.Creator<T> a(f<T> fVar) {
        return Build.VERSION.SDK_INT >= 13 ? h.a(fVar) : new a(fVar);
    }

    /* compiled from: ParcelableCompat.java */
    /* loaded from: classes.dex */
    static class a<T> implements Parcelable.Creator<T> {

        /* renamed from: a  reason: collision with root package name */
        final f<T> f404a;

        public a(f<T> fVar) {
            this.f404a = fVar;
        }

        @Override // android.os.Parcelable.Creator
        public T createFromParcel(Parcel parcel) {
            return this.f404a.b(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public T[] newArray(int i) {
            return this.f404a.b(i);
        }
    }
}
