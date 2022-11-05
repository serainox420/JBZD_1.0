package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
@RestrictTo
/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    final a f750a;
    final FrameLayout b;
    final FrameLayout c;
    android.support.v4.view.d d;
    final DataSetObserver e;
    PopupWindow.OnDismissListener f;
    boolean g;
    int h;
    private final b i;
    private final LinearLayoutCompat j;
    private final Drawable k;
    private final ImageView l;
    private final ImageView m;
    private final int n;
    private final ViewTreeObserver.OnGlobalLayoutListener o;
    private ListPopupWindow p;
    private boolean q;
    private int r;

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new DataSetObserver() { // from class: android.support.v7.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.f750a.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.f750a.notifyDataSetInvalidated();
            }
        };
        this.o = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (ActivityChooserView.this.c()) {
                    if (!ActivityChooserView.this.isShown()) {
                        ActivityChooserView.this.getListPopupWindow().e();
                        return;
                    }
                    ActivityChooserView.this.getListPopupWindow().d();
                    if (ActivityChooserView.this.d != null) {
                        ActivityChooserView.this.d.a(true);
                    }
                }
            }
        };
        this.h = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActivityChooserView, i, 0);
        this.h = obtainStyledAttributes.getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        this.i = new b();
        this.j = (LinearLayoutCompat) findViewById(R.id.activity_chooser_view_content);
        this.k = this.j.getBackground();
        this.c = (FrameLayout) findViewById(R.id.default_activity_button);
        this.c.setOnClickListener(this.i);
        this.c.setOnLongClickListener(this.i);
        this.m = (ImageView) this.c.findViewById(R.id.image);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.expand_activities_button);
        frameLayout.setOnClickListener(this.i);
        frameLayout.setOnTouchListener(new z(frameLayout) { // from class: android.support.v7.widget.ActivityChooserView.3
            @Override // android.support.v7.widget.z
            public android.support.v7.view.menu.s a() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            @Override // android.support.v7.widget.z
            protected boolean b() {
                ActivityChooserView.this.a();
                return true;
            }

            @Override // android.support.v7.widget.z
            protected boolean c() {
                ActivityChooserView.this.b();
                return true;
            }
        });
        this.b = frameLayout;
        this.l = (ImageView) frameLayout.findViewById(R.id.image);
        this.l.setImageDrawable(drawable);
        this.f750a = new a();
        this.f750a.registerDataSetObserver(new DataSetObserver() { // from class: android.support.v7.widget.ActivityChooserView.4
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.d();
            }
        });
        Resources resources = context.getResources();
        this.n = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    }

    public void setActivityChooserModel(d dVar) {
        this.f750a.a(dVar);
        if (c()) {
            b();
            a();
        }
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.l.setImageDrawable(drawable);
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.l.setContentDescription(getContext().getString(i));
    }

    @RestrictTo
    public void setProvider(android.support.v4.view.d dVar) {
        this.d = dVar;
    }

    public boolean a() {
        if (c() || !this.q) {
            return false;
        }
        this.g = false;
        a(this.h);
        return true;
    }

    void a(int i) {
        if (this.f750a.e() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.o);
        boolean z = this.c.getVisibility() == 0;
        int c = this.f750a.c();
        int i2 = z ? 1 : 0;
        if (i != Integer.MAX_VALUE && c > i2 + i) {
            this.f750a.a(true);
            this.f750a.a(i - 1);
        } else {
            this.f750a.a(false);
            this.f750a.a(i);
        }
        ListPopupWindow listPopupWindow = getListPopupWindow();
        if (!listPopupWindow.f()) {
            if (this.g || !z) {
                this.f750a.a(true, z);
            } else {
                this.f750a.a(false, false);
            }
            listPopupWindow.g(Math.min(this.f750a.a(), this.n));
            listPopupWindow.d();
            if (this.d != null) {
                this.d.a(true);
            }
            listPopupWindow.g().setContentDescription(getContext().getString(R.string.abc_activitychooserview_choose_application));
        }
    }

    public boolean b() {
        if (c()) {
            getListPopupWindow().e();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.o);
                return true;
            }
            return true;
        }
        return true;
    }

    public boolean c() {
        return getListPopupWindow().f();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d e = this.f750a.e();
        if (e != null) {
            e.registerObserver(this.e);
        }
        this.q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d e = this.f750a.e();
        if (e != null) {
            e.unregisterObserver(this.e);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.o);
        }
        if (c()) {
            b();
        }
        this.q = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        LinearLayoutCompat linearLayoutCompat = this.j;
        if (this.c.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(linearLayoutCompat, i, i2);
        setMeasuredDimension(linearLayoutCompat.getMeasuredWidth(), linearLayoutCompat.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.j.layout(0, 0, i3 - i, i4 - i2);
        if (!c()) {
            b();
        }
    }

    public d getDataModel() {
        return this.f750a.e();
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f = onDismissListener;
    }

    public void setInitialActivityCount(int i) {
        this.h = i;
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.r = i;
    }

    ListPopupWindow getListPopupWindow() {
        if (this.p == null) {
            this.p = new ListPopupWindow(getContext());
            this.p.a(this.f750a);
            this.p.b(this);
            this.p.a(true);
            this.p.a((AdapterView.OnItemClickListener) this.i);
            this.p.a((PopupWindow.OnDismissListener) this.i);
        }
        return this.p;
    }

    void d() {
        if (this.f750a.getCount() > 0) {
            this.b.setEnabled(true);
        } else {
            this.b.setEnabled(false);
        }
        int c = this.f750a.c();
        int d = this.f750a.d();
        if (c == 1 || (c > 1 && d > 0)) {
            this.c.setVisibility(0);
            ResolveInfo b2 = this.f750a.b();
            PackageManager packageManager = getContext().getPackageManager();
            this.m.setImageDrawable(b2.loadIcon(packageManager));
            if (this.r != 0) {
                this.c.setContentDescription(getContext().getString(this.r, b2.loadLabel(packageManager)));
            }
        } else {
            this.c.setVisibility(8);
        }
        if (this.c.getVisibility() == 0) {
            this.j.setBackgroundDrawable(this.k);
        } else {
            this.j.setBackgroundDrawable(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (((a) adapterView.getAdapter()).getItemViewType(i)) {
                case 0:
                    ActivityChooserView.this.b();
                    if (ActivityChooserView.this.g) {
                        if (i > 0) {
                            ActivityChooserView.this.f750a.e().c(i);
                            return;
                        }
                        return;
                    }
                    if (!ActivityChooserView.this.f750a.f()) {
                        i++;
                    }
                    Intent b = ActivityChooserView.this.f750a.e().b(i);
                    if (b != null) {
                        b.addFlags(524288);
                        ActivityChooserView.this.getContext().startActivity(b);
                        return;
                    }
                    return;
                case 1:
                    ActivityChooserView.this.a(Integer.MAX_VALUE);
                    return;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == ActivityChooserView.this.c) {
                ActivityChooserView.this.b();
                Intent b = ActivityChooserView.this.f750a.e().b(ActivityChooserView.this.f750a.e().a(ActivityChooserView.this.f750a.b()));
                if (b != null) {
                    b.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(b);
                }
            } else if (view == ActivityChooserView.this.b) {
                ActivityChooserView.this.g = false;
                ActivityChooserView.this.a(ActivityChooserView.this.h);
            } else {
                throw new IllegalArgumentException();
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (view == ActivityChooserView.this.c) {
                if (ActivityChooserView.this.f750a.getCount() > 0) {
                    ActivityChooserView.this.g = true;
                    ActivityChooserView.this.a(ActivityChooserView.this.h);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            a();
            if (ActivityChooserView.this.d != null) {
                ActivityChooserView.this.d.a(false);
            }
        }

        private void a() {
            if (ActivityChooserView.this.f != null) {
                ActivityChooserView.this.f.onDismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private d b;
        private int c = 4;
        private boolean d;
        private boolean e;
        private boolean f;

        a() {
        }

        public void a(d dVar) {
            d e = ActivityChooserView.this.f750a.e();
            if (e != null && ActivityChooserView.this.isShown()) {
                e.unregisterObserver(ActivityChooserView.this.e);
            }
            this.b = dVar;
            if (dVar != null && ActivityChooserView.this.isShown()) {
                dVar.registerObserver(ActivityChooserView.this.e);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (!this.f || i != getCount() + (-1)) ? 0 : 1;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int a2 = this.b.a();
            if (!this.d && this.b.b() != null) {
                a2--;
            }
            int min = Math.min(a2, this.c);
            if (this.f) {
                return min + 1;
            }
            return min;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            switch (getItemViewType(i)) {
                case 0:
                    if (!this.d && this.b.b() != null) {
                        i++;
                    }
                    return this.b.a(i);
                case 1:
                    return null;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            switch (getItemViewType(i)) {
                case 0:
                    if (view == null || view.getId() != R.id.list_item) {
                        view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                    }
                    PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
                    ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                    ((ImageView) view.findViewById(R.id.icon)).setImageDrawable(resolveInfo.loadIcon(packageManager));
                    ((TextView) view.findViewById(R.id.title)).setText(resolveInfo.loadLabel(packageManager));
                    if (this.d && i == 0 && this.e) {
                        android.support.v4.view.ai.c(view, true);
                        return view;
                    }
                    android.support.v4.view.ai.c(view, false);
                    return view;
                case 1:
                    if (view == null || view.getId() != 1) {
                        View inflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                        inflate.setId(1);
                        ((TextView) inflate.findViewById(R.id.title)).setText(ActivityChooserView.this.getContext().getString(R.string.abc_activity_chooser_view_see_all));
                        return inflate;
                    }
                    return view;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public int a() {
            int i = this.c;
            this.c = Integer.MAX_VALUE;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int i2 = 0;
            for (int i3 = 0; i3 < count; i3++) {
                view = getView(i3, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i2 = Math.max(i2, view.getMeasuredWidth());
            }
            this.c = i;
            return i2;
        }

        public void a(int i) {
            if (this.c != i) {
                this.c = i;
                notifyDataSetChanged();
            }
        }

        public ResolveInfo b() {
            return this.b.b();
        }

        public void a(boolean z) {
            if (this.f != z) {
                this.f = z;
                notifyDataSetChanged();
            }
        }

        public int c() {
            return this.b.a();
        }

        public int d() {
            return this.b.c();
        }

        public d e() {
            return this.b;
        }

        public void a(boolean z, boolean z2) {
            if (this.d != z || this.e != z2) {
                this.d = z;
                this.e = z2;
                notifyDataSetChanged();
            }
        }

        public boolean f() {
            return this.d;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class InnerLayout extends LinearLayoutCompat {

        /* renamed from: a  reason: collision with root package name */
        private static final int[] f755a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            av a2 = av.a(context, attributeSet, f755a);
            setBackgroundDrawable(a2.a(0));
            a2.a();
        }
    }
}
