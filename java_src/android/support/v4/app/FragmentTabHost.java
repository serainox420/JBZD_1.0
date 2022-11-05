package android.support.v4.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabHost;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f210a;
    private Context b;
    private u c;
    private int d;
    private TabHost.OnTabChangeListener e;
    private a f;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f212a;
        final Class<?> b;
        final Bundle c;
        Fragment d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.app.FragmentTabHost.SavedState.1
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
        String f211a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f211a = parcel.readString();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f211a);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f211a + "}";
        }
    }

    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f210a = new ArrayList<>();
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.d = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Override // android.widget.TabHost
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.e = onTabChangeListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        y yVar = null;
        int size = this.f210a.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.f210a.get(i);
            aVar.d = this.c.a(aVar.f212a);
            if (aVar.d != null && !aVar.d.isDetached()) {
                if (aVar.f212a.equals(currentTabTag)) {
                    this.f = aVar;
                } else {
                    if (yVar == null) {
                        yVar = this.c.a();
                    }
                    yVar.d(aVar.d);
                }
            }
        }
        this.g = true;
        y a2 = a(currentTabTag, yVar);
        if (a2 != null) {
            a2.b();
            this.c.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.g = false;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f211a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f211a);
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        y a2;
        if (this.g && (a2 = a(str, (y) null)) != null) {
            a2.b();
        }
        if (this.e != null) {
            this.e.onTabChanged(str);
        }
    }

    private y a(String str, y yVar) {
        a a2 = a(str);
        if (this.f != a2) {
            if (yVar == null) {
                yVar = this.c.a();
            }
            if (this.f != null && this.f.d != null) {
                yVar.d(this.f.d);
            }
            if (a2 != null) {
                if (a2.d == null) {
                    a2.d = Fragment.instantiate(this.b, a2.b.getName(), a2.c);
                    yVar.a(this.d, a2.d, a2.f212a);
                } else {
                    yVar.e(a2.d);
                }
            }
            this.f = a2;
        }
        return yVar;
    }

    private a a(String str) {
        int size = this.f210a.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.f210a.get(i);
            if (aVar.f212a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }
}
