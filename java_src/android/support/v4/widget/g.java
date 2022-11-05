package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.support.annotation.RestrictTo;
import android.support.v4.widget.h;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
/* compiled from: CursorAdapter.java */
/* loaded from: classes.dex */
public abstract class g extends BaseAdapter implements h.a, Filterable {
    @RestrictTo

    /* renamed from: a  reason: collision with root package name */
    protected boolean f511a;
    @RestrictTo
    protected boolean b;
    @RestrictTo
    protected Cursor c;
    @RestrictTo
    protected Context d;
    @RestrictTo
    protected int e;
    @RestrictTo
    protected a f;
    @RestrictTo
    protected DataSetObserver g;
    @RestrictTo
    protected h h;
    @RestrictTo
    protected FilterQueryProvider i;

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract void a(View view, Context context, Cursor cursor);

    public g(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    void a(Context context, Cursor cursor, int i) {
        boolean z = true;
        if ((i & 1) == 1) {
            i |= 2;
            this.b = true;
        } else {
            this.b = false;
        }
        if (cursor == null) {
            z = false;
        }
        this.c = cursor;
        this.f511a = z;
        this.d = context;
        this.e = z ? cursor.getColumnIndexOrThrow(AnalyticsSQLiteHelper.GENERAL_ID) : -1;
        if ((i & 2) == 2) {
            this.f = new a();
            this.g = new b();
        } else {
            this.f = null;
            this.g = null;
        }
        if (z) {
            if (this.f != null) {
                cursor.registerContentObserver(this.f);
            }
            if (this.g != null) {
                cursor.registerDataSetObserver(this.g);
            }
        }
    }

    @Override // android.support.v4.widget.h.a
    public Cursor a() {
        return this.c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (!this.f511a || this.c == null) {
            return 0;
        }
        return this.c.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (!this.f511a || this.c == null) {
            return null;
        }
        this.c.moveToPosition(i);
        return this.c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (!this.f511a || this.c == null || !this.c.moveToPosition(i)) {
            return 0L;
        }
        return this.c.getLong(this.e);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f511a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.c.moveToPosition(i)) {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
        if (view == null) {
            view = a(this.d, this.c, viewGroup);
        }
        a(view, this.d, this.c);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f511a) {
            this.c.moveToPosition(i);
            if (view == null) {
                view = b(this.d, this.c, viewGroup);
            }
            a(view, this.d, this.c);
            return view;
        }
        return null;
    }

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, cursor, viewGroup);
    }

    @Override // android.support.v4.widget.h.a
    public void a(Cursor cursor) {
        Cursor b2 = b(cursor);
        if (b2 != null) {
            b2.close();
        }
    }

    public Cursor b(Cursor cursor) {
        if (cursor == this.c) {
            return null;
        }
        Cursor cursor2 = this.c;
        if (cursor2 != null) {
            if (this.f != null) {
                cursor2.unregisterContentObserver(this.f);
            }
            if (this.g != null) {
                cursor2.unregisterDataSetObserver(this.g);
            }
        }
        this.c = cursor;
        if (cursor != null) {
            if (this.f != null) {
                cursor.registerContentObserver(this.f);
            }
            if (this.g != null) {
                cursor.registerDataSetObserver(this.g);
            }
            this.e = cursor.getColumnIndexOrThrow(AnalyticsSQLiteHelper.GENERAL_ID);
            this.f511a = true;
            notifyDataSetChanged();
            return cursor2;
        }
        this.e = -1;
        this.f511a = false;
        notifyDataSetInvalidated();
        return cursor2;
    }

    @Override // android.support.v4.widget.h.a
    public CharSequence c(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    @Override // android.support.v4.widget.h.a
    public Cursor a(CharSequence charSequence) {
        return this.i != null ? this.i.runQuery(charSequence) : this.c;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.h == null) {
            this.h = new h(this);
        }
        return this.h;
    }

    protected void b() {
        if (this.b && this.c != null && !this.c.isClosed()) {
            this.f511a = this.c.requery();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CursorAdapter.java */
    /* loaded from: classes.dex */
    public class a extends ContentObserver {
        a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            g.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CursorAdapter.java */
    /* loaded from: classes.dex */
    public class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            g.this.f511a = true;
            g.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            g.this.f511a = false;
            g.this.notifyDataSetInvalidated();
        }
    }
}
