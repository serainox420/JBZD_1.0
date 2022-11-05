package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.j;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BackStackRecord.java */
/* loaded from: classes.dex */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: android.support.v4.app.BackStackState.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int[] f200a;
    final int b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;
    final ArrayList<String> j;
    final ArrayList<String> k;
    final boolean l;

    public BackStackState(j jVar) {
        int size = jVar.c.size();
        this.f200a = new int[size * 6];
        if (!jVar.j) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            j.a aVar = jVar.c.get(i2);
            int i3 = i + 1;
            this.f200a[i] = aVar.f258a;
            int i4 = i3 + 1;
            this.f200a[i3] = aVar.b != null ? aVar.b.mIndex : -1;
            int i5 = i4 + 1;
            this.f200a[i4] = aVar.c;
            int i6 = i5 + 1;
            this.f200a[i5] = aVar.d;
            int i7 = i6 + 1;
            this.f200a[i6] = aVar.e;
            i = i7 + 1;
            this.f200a[i7] = aVar.f;
        }
        this.b = jVar.h;
        this.c = jVar.i;
        this.d = jVar.l;
        this.e = jVar.n;
        this.f = jVar.o;
        this.g = jVar.p;
        this.h = jVar.q;
        this.i = jVar.r;
        this.j = jVar.s;
        this.k = jVar.t;
        this.l = jVar.u;
    }

    public BackStackState(Parcel parcel) {
        this.f200a = parcel.createIntArray();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createStringArrayList();
        this.k = parcel.createStringArrayList();
        this.l = parcel.readInt() != 0;
    }

    public j a(v vVar) {
        int i = 0;
        j jVar = new j(vVar);
        int i2 = 0;
        while (i < this.f200a.length) {
            j.a aVar = new j.a();
            int i3 = i + 1;
            aVar.f258a = this.f200a[i];
            if (v.f262a) {
                Log.v("FragmentManager", "Instantiate " + jVar + " op #" + i2 + " base fragment #" + this.f200a[i3]);
            }
            int i4 = i3 + 1;
            int i5 = this.f200a[i3];
            if (i5 >= 0) {
                aVar.b = vVar.e.get(i5);
            } else {
                aVar.b = null;
            }
            int i6 = i4 + 1;
            aVar.c = this.f200a[i4];
            int i7 = i6 + 1;
            aVar.d = this.f200a[i6];
            int i8 = i7 + 1;
            aVar.e = this.f200a[i7];
            aVar.f = this.f200a[i8];
            jVar.d = aVar.c;
            jVar.e = aVar.d;
            jVar.f = aVar.e;
            jVar.g = aVar.f;
            jVar.a(aVar);
            i2++;
            i = i8 + 1;
        }
        jVar.h = this.b;
        jVar.i = this.c;
        jVar.l = this.d;
        jVar.n = this.e;
        jVar.j = true;
        jVar.o = this.f;
        jVar.p = this.g;
        jVar.q = this.h;
        jVar.r = this.i;
        jVar.s = this.j;
        jVar.t = this.k;
        jVar.u = this.l;
        jVar.a(1);
        return jVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 0;
        parcel.writeIntArray(this.f200a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        TextUtils.writeToParcel(this.g, parcel, 0);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeStringList(this.j);
        parcel.writeStringList(this.k);
        if (this.l) {
            i2 = 1;
        }
        parcel.writeInt(i2);
    }
}
