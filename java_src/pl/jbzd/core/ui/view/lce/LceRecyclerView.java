package pl.jbzd.core.ui.view.lce;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes3.dex */
public class LceRecyclerView extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    private b f6115a;
    private d b;
    private Bundle c;
    private a d;
    private int e;
    private int f;
    private boolean g;
    private long h;

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(LceRecyclerView lceRecyclerView, int i, int i2);
    }

    public LceRecyclerView(Context context) {
        super(context);
        this.b = null;
        this.d = null;
        this.e = 5;
        this.f = 0;
        this.g = true;
        this.h = 0L;
        a(context, null, 0);
    }

    public LceRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = null;
        this.d = null;
        this.e = 5;
        this.f = 0;
        this.g = true;
        this.h = 0L;
        a(context, attributeSet, 0);
    }

    public LceRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = null;
        this.d = null;
        this.e = 5;
        this.f = 0;
        this.g = true;
        this.h = 0L;
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setLayoutManager(RecyclerView.h hVar) {
        this.f6115a = hVar != null ? new b(hVar) : null;
        super.setLayoutManager(hVar);
        if (this.f6115a != null) {
            this.b = new d(this.f6115a);
            this.b.a(this.f);
            this.b.b(this.e);
            this.b.a(this.g);
            if (this.c != null) {
                this.b.a(this.c);
            }
            if (this.d != null) {
                this.b.a(this.d);
            }
            addOnScrollListener(this.b);
        } else if (this.b != null) {
            removeOnScrollListener(this.b);
            this.b = null;
        }
    }

    @Override // android.support.v7.widget.RecyclerView
    public void setAdapter(RecyclerView.a aVar) {
        ((c) aVar).a(this);
        super.setAdapter(aVar);
    }

    public void setOnLoadMoreListener(a aVar) {
        this.d = aVar;
        if (this.b != null) {
            this.b.a(this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d getLceRecyclerViewScrollListener() {
        return this.b;
    }

    public void setStartingPage(int i) {
        this.f = i;
        if (this.b != null) {
            this.b.a(this.f);
        }
    }

    public void setThreshold(int i) {
        this.e = i;
        if (this.b != null) {
            this.b.b(i);
        }
    }

    public void setShouldLoadFirstPage(boolean z) {
        this.g = z;
        if (this.b != null) {
            this.b.a(this.g);
        }
    }

    public long getLastResetTime() {
        return this.h;
    }

    public void a() {
        if (getAdapter() != null) {
            this.h = System.currentTimeMillis();
            ((c) getAdapter()).n();
            this.b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: pl.jbzd.core.ui.view.lce.LceRecyclerView.SavedState.1
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
        private Bundle f6116a;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f6116a = parcel.readBundle(Bundle.class.getClassLoader());
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f6116a);
        }
    }
}
