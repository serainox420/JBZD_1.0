package android.support.design.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.u;
@RestrictTo
/* loaded from: classes.dex */
public class BottomNavigationPresenter implements o {

    /* renamed from: a  reason: collision with root package name */
    private h f24a;
    private BottomNavigationMenuView b;
    private boolean c = false;
    private int d;

    public void a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.b = bottomNavigationMenuView;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Context context, h hVar) {
        this.b.a(this.f24a);
        this.f24a = hVar;
    }

    @Override // android.support.v7.view.menu.o
    public void a(boolean z) {
        if (!this.c) {
            if (z) {
                this.b.a();
            } else {
                this.b.b();
            }
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
    }

    @Override // android.support.v7.view.menu.o
    public boolean a() {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(h hVar, j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean b(h hVar, j jVar) {
        return false;
    }

    public void a(int i) {
        this.d = i;
    }

    @Override // android.support.v7.view.menu.o
    public int b() {
        return this.d;
    }

    @Override // android.support.v7.view.menu.o
    public Parcelable c() {
        SavedState savedState = new SavedState();
        savedState.f25a = this.b.getSelectedItemId();
        return savedState;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.b.a(((SavedState) parcelable).f25a);
        }
    }

    public void b(boolean z) {
        this.c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.design.internal.BottomNavigationPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f25a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f25a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f25a);
        }
    }
}
