package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentManager.java */
/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Parcelable.Creator<FragmentManagerState>() { // from class: android.support.v4.app.FragmentManagerState.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    FragmentState[] f208a;
    int[] b;
    BackStackState[] c;

    public FragmentManagerState() {
    }

    public FragmentManagerState(Parcel parcel) {
        this.f208a = (FragmentState[]) parcel.createTypedArray(FragmentState.CREATOR);
        this.b = parcel.createIntArray();
        this.c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f208a, i);
        parcel.writeIntArray(this.b);
        parcel.writeTypedArray(this.c, i);
    }
}
