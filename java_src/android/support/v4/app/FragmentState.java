package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Fragment.java */
/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: android.support.v4.app.FragmentState.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final String f209a;
    final int b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    final boolean j;
    Bundle k;
    Fragment l;

    public FragmentState(Fragment fragment) {
        this.f209a = fragment.getClass().getName();
        this.b = fragment.mIndex;
        this.c = fragment.mFromLayout;
        this.d = fragment.mFragmentId;
        this.e = fragment.mContainerId;
        this.f = fragment.mTag;
        this.g = fragment.mRetainInstance;
        this.h = fragment.mDetached;
        this.i = fragment.mArguments;
        this.j = fragment.mHidden;
    }

    public FragmentState(Parcel parcel) {
        boolean z = true;
        this.f209a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readInt() != 0;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readBundle();
        this.j = parcel.readInt() == 0 ? false : z;
        this.k = parcel.readBundle();
    }

    public Fragment a(t tVar, Fragment fragment, w wVar) {
        if (this.l == null) {
            Context i = tVar.i();
            if (this.i != null) {
                this.i.setClassLoader(i.getClassLoader());
            }
            this.l = Fragment.instantiate(i, this.f209a, this.i);
            if (this.k != null) {
                this.k.setClassLoader(i.getClassLoader());
                this.l.mSavedFragmentState = this.k;
            }
            this.l.setIndex(this.b, fragment);
            this.l.mFromLayout = this.c;
            this.l.mRestored = true;
            this.l.mFragmentId = this.d;
            this.l.mContainerId = this.e;
            this.l.mTag = this.f;
            this.l.mRetainInstance = this.g;
            this.l.mDetached = this.h;
            this.l.mHidden = this.j;
            this.l.mFragmentManager = tVar.d;
            if (v.f262a) {
                Log.v("FragmentManager", "Instantiated fragment " + this.l);
            }
        }
        this.l.mChildNonConfig = wVar;
        return this.l;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeString(this.f209a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeBundle(this.i);
        if (!this.j) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeBundle(this.k);
    }
}
