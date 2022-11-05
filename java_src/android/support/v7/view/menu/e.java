package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.ai;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.o;
import android.support.v7.widget.ad;
import android.support.v7.widget.ae;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* compiled from: CascadingMenuPopup.java */
/* loaded from: classes.dex */
final class e extends m implements o, View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: a  reason: collision with root package name */
    final Handler f711a;
    View c;
    boolean d;
    private final Context e;
    private final int f;
    private final int g;
    private final int h;
    private final boolean i;
    private View o;
    private boolean q;
    private boolean r;
    private int s;
    private int t;
    private boolean v;
    private o.a w;
    private ViewTreeObserver x;
    private PopupWindow.OnDismissListener y;
    private final List<h> j = new LinkedList();
    final List<a> b = new ArrayList();
    private final ViewTreeObserver.OnGlobalLayoutListener k = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.view.menu.e.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (e.this.f() && e.this.b.size() > 0 && !e.this.b.get(0).f715a.c()) {
                View view = e.this.c;
                if (view == null || !view.isShown()) {
                    e.this.e();
                    return;
                }
                for (a aVar : e.this.b) {
                    aVar.f715a.d();
                }
            }
        }
    };
    private final ad l = new ad() { // from class: android.support.v7.view.menu.e.2
        @Override // android.support.v7.widget.ad
        public void a(h hVar, MenuItem menuItem) {
            e.this.f711a.removeCallbacksAndMessages(hVar);
        }

        @Override // android.support.v7.widget.ad
        public void b(final h hVar, final MenuItem menuItem) {
            int i;
            e.this.f711a.removeCallbacksAndMessages(null);
            int i2 = 0;
            int size = e.this.b.size();
            while (true) {
                if (i2 >= size) {
                    i = -1;
                    break;
                } else if (hVar == e.this.b.get(i2).b) {
                    i = i2;
                    break;
                } else {
                    i2++;
                }
            }
            if (i != -1) {
                int i3 = i + 1;
                final a aVar = i3 < e.this.b.size() ? e.this.b.get(i3) : null;
                e.this.f711a.postAtTime(new Runnable() { // from class: android.support.v7.view.menu.e.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (aVar != null) {
                            e.this.d = true;
                            aVar.b.b(false);
                            e.this.d = false;
                        }
                        if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                            hVar.a(menuItem, 4);
                        }
                    }
                }, hVar, SystemClock.uptimeMillis() + 200);
            }
        }
    };
    private int m = 0;
    private int n = 0;
    private boolean u = false;
    private int p = k();

    public e(Context context, View view, int i, int i2, boolean z) {
        this.e = context;
        this.o = view;
        this.g = i;
        this.h = i2;
        this.i = z;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f711a = new Handler();
    }

    @Override // android.support.v7.view.menu.m
    public void b(boolean z) {
        this.u = z;
    }

    private ae j() {
        ae aeVar = new ae(this.e, null, this.g, this.h);
        aeVar.a(this.l);
        aeVar.a((AdapterView.OnItemClickListener) this);
        aeVar.a((PopupWindow.OnDismissListener) this);
        aeVar.b(this.o);
        aeVar.e(this.n);
        aeVar.a(true);
        return aeVar;
    }

    @Override // android.support.v7.view.menu.s
    public void d() {
        if (!f()) {
            for (h hVar : this.j) {
                c(hVar);
            }
            this.j.clear();
            this.c = this.o;
            if (this.c != null) {
                boolean z = this.x == null;
                this.x = this.c.getViewTreeObserver();
                if (z) {
                    this.x.addOnGlobalLayoutListener(this.k);
                }
            }
        }
    }

    @Override // android.support.v7.view.menu.s
    public void e() {
        int size = this.b.size();
        if (size > 0) {
            a[] aVarArr = (a[]) this.b.toArray(new a[size]);
            for (int i = size - 1; i >= 0; i--) {
                a aVar = aVarArr[i];
                if (aVar.f715a.f()) {
                    aVar.f715a.e();
                }
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i == 82) {
            e();
            return true;
        }
        return false;
    }

    private int k() {
        return ai.g(this.o) == 1 ? 0 : 1;
    }

    private int d(int i) {
        ListView a2 = this.b.get(this.b.size() - 1).a();
        int[] iArr = new int[2];
        a2.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.c.getWindowVisibleDisplayFrame(rect);
        if (this.p == 1) {
            return (a2.getWidth() + iArr[0]) + i > rect.right ? 0 : 1;
        }
        return iArr[0] - i < 0 ? 1 : 0;
    }

    @Override // android.support.v7.view.menu.m
    public void a(h hVar) {
        hVar.a(this, this.e);
        if (f()) {
            c(hVar);
        } else {
            this.j.add(hVar);
        }
    }

    private void c(h hVar) {
        View view;
        a aVar;
        int i;
        LayoutInflater from = LayoutInflater.from(this.e);
        g gVar = new g(hVar, from, this.i);
        if (!f() && this.u) {
            gVar.a(true);
        } else if (f()) {
            gVar.a(m.b(hVar));
        }
        int a2 = a(gVar, null, this.e, this.f);
        ae j = j();
        j.a((ListAdapter) gVar);
        j.g(a2);
        j.e(this.n);
        if (this.b.size() > 0) {
            a aVar2 = this.b.get(this.b.size() - 1);
            view = a(aVar2, hVar);
            aVar = aVar2;
        } else {
            view = null;
            aVar = null;
        }
        if (view != null) {
            j.b(false);
            j.a((Object) null);
            int d = d(a2);
            boolean z = d == 1;
            this.p = d;
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            int j2 = aVar.f715a.j() + iArr[0];
            int k = iArr[1] + aVar.f715a.k();
            if ((this.n & 5) == 5) {
                if (z) {
                    i = j2 + a2;
                } else {
                    i = j2 - view.getWidth();
                }
            } else if (z) {
                i = view.getWidth() + j2;
            } else {
                i = j2 - a2;
            }
            j.c(i);
            j.d(k);
        } else {
            if (this.q) {
                j.c(this.s);
            }
            if (this.r) {
                j.d(this.t);
            }
            j.a(i());
        }
        this.b.add(new a(j, hVar, this.p));
        j.d();
        if (aVar == null && this.v && hVar.m() != null) {
            ListView g = j.g();
            FrameLayout frameLayout = (FrameLayout) from.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) g, false);
            frameLayout.setEnabled(false);
            ((TextView) frameLayout.findViewById(16908310)).setText(hVar.m());
            g.addHeaderView(frameLayout, null, false);
            j.d();
        }
    }

    private MenuItem a(h hVar, h hVar2) {
        int size = hVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = hVar.getItem(i);
            if (item.hasSubMenu() && hVar2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    private View a(a aVar, h hVar) {
        g gVar;
        int i;
        int i2;
        int i3 = 0;
        MenuItem a2 = a(aVar.b, hVar);
        if (a2 == null) {
            return null;
        }
        ListView a3 = aVar.a();
        ListAdapter adapter = a3.getAdapter();
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            gVar = (g) headerViewListAdapter.getWrappedAdapter();
        } else {
            gVar = (g) adapter;
            i = 0;
        }
        int count = gVar.getCount();
        while (true) {
            if (i3 >= count) {
                i2 = -1;
                break;
            } else if (a2 == gVar.getItem(i3)) {
                i2 = i3;
                break;
            } else {
                i3++;
            }
        }
        if (i2 == -1) {
            return null;
        }
        int firstVisiblePosition = (i2 + i) - a3.getFirstVisiblePosition();
        if (firstVisiblePosition >= 0 && firstVisiblePosition < a3.getChildCount()) {
            return a3.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    @Override // android.support.v7.view.menu.s
    public boolean f() {
        return this.b.size() > 0 && this.b.get(0).f715a.f();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        a aVar;
        int size = this.b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.b.get(i);
            if (!aVar.f715a.f()) {
                break;
            }
            i++;
        }
        if (aVar != null) {
            aVar.b.b(false);
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(boolean z) {
        for (a aVar : this.b) {
            a(aVar.a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.w = aVar;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        for (a aVar : this.b) {
            if (uVar == aVar.b) {
                aVar.a().requestFocus();
                return true;
            }
        }
        if (uVar.hasVisibleItems()) {
            a((h) uVar);
            if (this.w != null) {
                this.w.a(uVar);
            }
            return true;
        }
        return false;
    }

    private int d(h hVar) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            if (hVar == this.b.get(i).b) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        int d = d(hVar);
        if (d >= 0) {
            int i = d + 1;
            if (i < this.b.size()) {
                this.b.get(i).b.b(false);
            }
            a remove = this.b.remove(d);
            remove.b.b(this);
            if (this.d) {
                remove.f715a.b((Object) null);
                remove.f715a.b(0);
            }
            remove.f715a.e();
            int size = this.b.size();
            if (size > 0) {
                this.p = this.b.get(size - 1).c;
            } else {
                this.p = k();
            }
            if (size == 0) {
                e();
                if (this.w != null) {
                    this.w.a(hVar, true);
                }
                if (this.x != null) {
                    if (this.x.isAlive()) {
                        this.x.removeGlobalOnLayoutListener(this.k);
                    }
                    this.x = null;
                }
                this.y.onDismiss();
            } else if (z) {
                this.b.get(0).b.b(false);
            }
        }
    }

    @Override // android.support.v7.view.menu.o
    public boolean a() {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public Parcelable c() {
        return null;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Parcelable parcelable) {
    }

    @Override // android.support.v7.view.menu.m
    public void a(int i) {
        if (this.m != i) {
            this.m = i;
            this.n = android.support.v4.view.f.a(i, ai.g(this.o));
        }
    }

    @Override // android.support.v7.view.menu.m
    public void a(View view) {
        if (this.o != view) {
            this.o = view;
            this.n = android.support.v4.view.f.a(this.m, ai.g(this.o));
        }
    }

    @Override // android.support.v7.view.menu.m
    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.y = onDismissListener;
    }

    @Override // android.support.v7.view.menu.s
    public ListView g() {
        if (this.b.isEmpty()) {
            return null;
        }
        return this.b.get(this.b.size() - 1).a();
    }

    @Override // android.support.v7.view.menu.m
    public void b(int i) {
        this.q = true;
        this.s = i;
    }

    @Override // android.support.v7.view.menu.m
    public void c(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // android.support.v7.view.menu.m
    public void c(boolean z) {
        this.v = z;
    }

    @Override // android.support.v7.view.menu.m
    protected boolean h() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CascadingMenuPopup.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final ae f715a;
        public final h b;
        public final int c;

        public a(ae aeVar, h hVar, int i) {
            this.f715a = aeVar;
            this.b = hVar;
            this.c = i;
        }

        public ListView a() {
            return this.f715a.g();
        }
    }
}
