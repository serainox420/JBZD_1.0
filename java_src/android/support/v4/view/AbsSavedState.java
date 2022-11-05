package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public abstract class AbsSavedState implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    private final Parcelable f406a;
    public static final AbsSavedState d = new AbsSavedState() { // from class: android.support.v4.view.AbsSavedState.1
    };
    public static final Parcelable.Creator<AbsSavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<AbsSavedState>() { // from class: android.support.v4.view.AbsSavedState.2
        @Override // android.support.v4.os.f
        /* renamed from: a */
        public AbsSavedState b(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) != null) {
                throw new IllegalStateException("superState must be null");
            }
            return AbsSavedState.d;
        }

        @Override // android.support.v4.os.f
        /* renamed from: a */
        public AbsSavedState[] b(int i) {
            return new AbsSavedState[i];
        }
    });

    private AbsSavedState() {
        this.f406a = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbsSavedState(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.f406a = parcelable == d ? null : parcelable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f406a = readParcelable == null ? d : readParcelable;
    }

    public final Parcelable a() {
        return this.f406a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f406a, i);
    }
}
