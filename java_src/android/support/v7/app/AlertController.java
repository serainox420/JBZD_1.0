package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ai;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.appcompat.R;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AlertController {
    private CharSequence B;
    private CharSequence C;
    private CharSequence D;
    private Drawable F;
    private ImageView G;
    private TextView H;
    private TextView I;
    private View J;
    private int K;
    private int L;
    private boolean M;

    /* renamed from: a  reason: collision with root package name */
    final k f531a;
    ListView b;
    Button c;
    Message d;
    Button e;
    Message f;
    Button g;
    Message h;
    NestedScrollView i;
    ListAdapter j;
    int l;
    int m;
    int n;
    int o;
    Handler p;
    private final Context q;
    private final Window r;
    private CharSequence s;
    private CharSequence t;
    private View u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;
    private boolean A = false;
    private int E = 0;
    int k = -1;
    private int N = 0;
    private final View.OnClickListener O = new View.OnClickListener() { // from class: android.support.v7.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            if (view == AlertController.this.c && AlertController.this.d != null) {
                message = Message.obtain(AlertController.this.d);
            } else if (view == AlertController.this.e && AlertController.this.f != null) {
                message = Message.obtain(AlertController.this.f);
            } else if (view == AlertController.this.g && AlertController.this.h != null) {
                message = Message.obtain(AlertController.this.h);
            } else {
                message = null;
            }
            if (message != null) {
                message.sendToTarget();
            }
            AlertController.this.p.obtainMessage(1, AlertController.this.f531a).sendToTarget();
        }
    };

    /* loaded from: classes.dex */
    private static final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<DialogInterface> f543a;

        public b(DialogInterface dialogInterface) {
            this.f543a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case -3:
                case -2:
                case -1:
                    ((DialogInterface.OnClickListener) message.obj).onClick(this.f543a.get(), message.what);
                    return;
                case 0:
                default:
                    return;
                case 1:
                    ((DialogInterface) message.obj).dismiss();
                    return;
            }
        }
    }

    private static boolean a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public AlertController(Context context, k kVar, Window window) {
        this.q = context;
        this.f531a = kVar;
        this.r = window;
        this.p = new b(kVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
        this.K = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_android_layout, 0);
        this.L = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.l = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listLayout, 0);
        this.m = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.n = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.o = obtainStyledAttributes.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
        this.M = obtainStyledAttributes.getBoolean(R.styleable.AlertDialog_showTitle, true);
        obtainStyledAttributes.recycle();
        kVar.a(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        this.f531a.setContentView(b());
        c();
    }

    private int b() {
        if (this.L == 0) {
            return this.K;
        }
        if (this.N == 1) {
            return this.L;
        }
        return this.K;
    }

    public void a(CharSequence charSequence) {
        this.s = charSequence;
        if (this.H != null) {
            this.H.setText(charSequence);
        }
    }

    public void b(View view) {
        this.J = view;
    }

    public void b(CharSequence charSequence) {
        this.t = charSequence;
        if (this.I != null) {
            this.I.setText(charSequence);
        }
    }

    public void a(int i) {
        this.u = null;
        this.v = i;
        this.A = false;
    }

    public void c(View view) {
        this.u = view;
        this.v = 0;
        this.A = false;
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.u = view;
        this.v = 0;
        this.A = true;
        this.w = i;
        this.x = i2;
        this.y = i3;
        this.z = i4;
    }

    public void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (message == null && onClickListener != null) {
            message = this.p.obtainMessage(i, onClickListener);
        }
        switch (i) {
            case -3:
                this.D = charSequence;
                this.h = message;
                return;
            case -2:
                this.C = charSequence;
                this.f = message;
                return;
            case -1:
                this.B = charSequence;
                this.d = message;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void b(int i) {
        this.F = null;
        this.E = i;
        if (this.G != null) {
            if (i != 0) {
                this.G.setVisibility(0);
                this.G.setImageResource(this.E);
                return;
            }
            this.G.setVisibility(8);
        }
    }

    public void a(Drawable drawable) {
        this.F = drawable;
        this.E = 0;
        if (this.G != null) {
            if (drawable != null) {
                this.G.setVisibility(0);
                this.G.setImageDrawable(drawable);
                return;
            }
            this.G.setVisibility(8);
        }
    }

    public int c(int i) {
        TypedValue typedValue = new TypedValue();
        this.q.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public boolean a(int i, KeyEvent keyEvent) {
        return this.i != null && this.i.a(keyEvent);
    }

    public boolean b(int i, KeyEvent keyEvent) {
        return this.i != null && this.i.a(keyEvent);
    }

    private ViewGroup a(View view, View view2) {
        if (view == null) {
            return (ViewGroup) (view2 instanceof ViewStub ? ((ViewStub) view2).inflate() : view2);
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        return (ViewGroup) (view instanceof ViewStub ? ((ViewStub) view).inflate() : view);
    }

    private void c() {
        View findViewById;
        View findViewById2;
        View findViewById3 = this.r.findViewById(R.id.parentPanel);
        View findViewById4 = findViewById3.findViewById(R.id.topPanel);
        View findViewById5 = findViewById3.findViewById(R.id.contentPanel);
        View findViewById6 = findViewById3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(R.id.customPanel);
        a(viewGroup);
        View findViewById7 = viewGroup.findViewById(R.id.topPanel);
        View findViewById8 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById9 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup a2 = a(findViewById7, findViewById4);
        ViewGroup a3 = a(findViewById8, findViewById5);
        ViewGroup a4 = a(findViewById9, findViewById6);
        c(a3);
        d(a4);
        b(a2);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (a2 == null || a2.getVisibility() == 8) ? false : true;
        boolean z3 = (a4 == null || a4.getVisibility() == 8) ? false : true;
        if (!z3 && a3 != null && (findViewById2 = a3.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            if (this.i != null) {
                this.i.setClipToPadding(true);
            }
            View view = null;
            if ((this.t != null || this.b != null || z) && !z) {
                view = a2.findViewById(R.id.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (a3 != null && (findViewById = a3.findViewById(R.id.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        if (this.b instanceof RecycleListView) {
            ((RecycleListView) this.b).a(z2, z3);
        }
        if (!z) {
            ListView listView = this.b != null ? this.b : this.i;
            if (listView != null) {
                a(a3, listView, (z3 ? 2 : 0) | (z2 ? 1 : 0), 3);
            }
        }
        ListView listView2 = this.b;
        if (listView2 != null && this.j != null) {
            listView2.setAdapter(this.j);
            int i = this.k;
            if (i > -1) {
                listView2.setItemChecked(i, true);
                listView2.setSelection(i);
            }
        }
    }

    private void a(ViewGroup viewGroup, View view, int i, int i2) {
        final View view2 = null;
        final View findViewById = this.r.findViewById(R.id.scrollIndicatorUp);
        View findViewById2 = this.r.findViewById(R.id.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            ai.a(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        if (findViewById != null && (i & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 == null || (i & 2) != 0) {
            view2 = findViewById2;
        } else {
            viewGroup.removeView(findViewById2);
        }
        if (findViewById != null || view2 != null) {
            if (this.t != null) {
                this.i.setOnScrollChangeListener(new NestedScrollView.b() { // from class: android.support.v7.app.AlertController.2
                    @Override // android.support.v4.widget.NestedScrollView.b
                    public void a(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                        AlertController.a(nestedScrollView, findViewById, view2);
                    }
                });
                this.i.post(new Runnable() { // from class: android.support.v7.app.AlertController.3
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertController.a(AlertController.this.i, findViewById, view2);
                    }
                });
            } else if (this.b != null) {
                this.b.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: android.support.v7.app.AlertController.4
                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScrollStateChanged(AbsListView absListView, int i3) {
                    }

                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                        AlertController.a(absListView, findViewById, view2);
                    }
                });
                this.b.post(new Runnable() { // from class: android.support.v7.app.AlertController.5
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertController.a(AlertController.this.b, findViewById, view2);
                    }
                });
            } else {
                if (findViewById != null) {
                    viewGroup.removeView(findViewById);
                }
                if (view2 != null) {
                    viewGroup.removeView(view2);
                }
            }
        }
    }

    private void a(ViewGroup viewGroup) {
        View view;
        boolean z = false;
        if (this.u != null) {
            view = this.u;
        } else if (this.v != 0) {
            view = LayoutInflater.from(this.q).inflate(this.v, viewGroup, false);
        } else {
            view = null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !a(view)) {
            this.r.setFlags(MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES, MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.r.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.A) {
                frameLayout.setPadding(this.w, this.x, this.y, this.z);
            }
            if (this.b != null) {
                ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).weight = BitmapDescriptorFactory.HUE_RED;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void b(ViewGroup viewGroup) {
        if (this.J != null) {
            viewGroup.addView(this.J, 0, new ViewGroup.LayoutParams(-1, -2));
            this.r.findViewById(R.id.title_template).setVisibility(8);
            return;
        }
        this.G = (ImageView) this.r.findViewById(16908294);
        if ((!TextUtils.isEmpty(this.s)) && this.M) {
            this.H = (TextView) this.r.findViewById(R.id.alertTitle);
            this.H.setText(this.s);
            if (this.E != 0) {
                this.G.setImageResource(this.E);
                return;
            } else if (this.F != null) {
                this.G.setImageDrawable(this.F);
                return;
            } else {
                this.H.setPadding(this.G.getPaddingLeft(), this.G.getPaddingTop(), this.G.getPaddingRight(), this.G.getPaddingBottom());
                this.G.setVisibility(8);
                return;
            }
        }
        this.r.findViewById(R.id.title_template).setVisibility(8);
        this.G.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    private void c(ViewGroup viewGroup) {
        this.i = (NestedScrollView) this.r.findViewById(R.id.scrollView);
        this.i.setFocusable(false);
        this.i.setNestedScrollingEnabled(false);
        this.I = (TextView) viewGroup.findViewById(16908299);
        if (this.I != null) {
            if (this.t != null) {
                this.I.setText(this.t);
                return;
            }
            this.I.setVisibility(8);
            this.i.removeView(this.I);
            if (this.b != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.i.getParent();
                int indexOfChild = viewGroup2.indexOfChild(this.i);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(this.b, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    static void a(View view, View view2, View view3) {
        int i = 0;
        if (view2 != null) {
            view2.setVisibility(ai.b(view, -1) ? 0 : 4);
        }
        if (view3 != null) {
            if (!ai.b(view, 1)) {
                i = 4;
            }
            view3.setVisibility(i);
        }
    }

    private void d(ViewGroup viewGroup) {
        boolean z;
        boolean z2 = true;
        this.c = (Button) viewGroup.findViewById(16908313);
        this.c.setOnClickListener(this.O);
        if (TextUtils.isEmpty(this.B)) {
            this.c.setVisibility(8);
            z = false;
        } else {
            this.c.setText(this.B);
            this.c.setVisibility(0);
            z = true;
        }
        this.e = (Button) viewGroup.findViewById(16908314);
        this.e.setOnClickListener(this.O);
        if (TextUtils.isEmpty(this.C)) {
            this.e.setVisibility(8);
        } else {
            this.e.setText(this.C);
            this.e.setVisibility(0);
            z |= true;
        }
        this.g = (Button) viewGroup.findViewById(16908315);
        this.g.setOnClickListener(this.O);
        if (TextUtils.isEmpty(this.D)) {
            this.g.setVisibility(8);
        } else {
            this.g.setText(this.D);
            this.g.setVisibility(0);
            z |= true;
        }
        if (a(this.q)) {
            if (z) {
                a(this.c);
            } else if (z) {
                a(this.e);
            } else if (z) {
                a(this.g);
            }
        }
        if (!z) {
            z2 = false;
        }
        if (!z2) {
            viewGroup.setVisibility(8);
        }
    }

    private void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: a  reason: collision with root package name */
        private final int f537a;
        private final int b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
            this.b = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f537a = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        public void a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f537a, getPaddingRight(), z2 ? getPaddingBottom() : this.b);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class a {
        public int A;
        public boolean[] C;
        public boolean D;
        public boolean E;
        public DialogInterface.OnMultiChoiceClickListener G;
        public Cursor H;
        public String I;
        public String J;
        public AdapterView.OnItemSelectedListener K;
        public InterfaceC0034a L;

        /* renamed from: a  reason: collision with root package name */
        public final Context f538a;
        public final LayoutInflater b;
        public Drawable d;
        public CharSequence f;
        public View g;
        public CharSequence h;
        public CharSequence i;
        public DialogInterface.OnClickListener j;
        public CharSequence k;
        public DialogInterface.OnClickListener l;
        public CharSequence m;
        public DialogInterface.OnClickListener n;
        public DialogInterface.OnCancelListener p;
        public DialogInterface.OnDismissListener q;
        public DialogInterface.OnKeyListener r;
        public CharSequence[] s;
        public ListAdapter t;
        public DialogInterface.OnClickListener u;
        public int v;
        public View w;
        public int x;
        public int y;
        public int z;
        public int c = 0;
        public int e = 0;
        public boolean B = false;
        public int F = -1;
        public boolean M = true;
        public boolean o = true;

        /* renamed from: android.support.v7.app.AlertController$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0034a {
            void a(ListView listView);
        }

        public a(Context context) {
            this.f538a = context;
            this.b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void a(AlertController alertController) {
            if (this.g != null) {
                alertController.b(this.g);
            } else {
                if (this.f != null) {
                    alertController.a(this.f);
                }
                if (this.d != null) {
                    alertController.a(this.d);
                }
                if (this.c != 0) {
                    alertController.b(this.c);
                }
                if (this.e != 0) {
                    alertController.b(alertController.c(this.e));
                }
            }
            if (this.h != null) {
                alertController.b(this.h);
            }
            if (this.i != null) {
                alertController.a(-1, this.i, this.j, (Message) null);
            }
            if (this.k != null) {
                alertController.a(-2, this.k, this.l, (Message) null);
            }
            if (this.m != null) {
                alertController.a(-3, this.m, this.n, (Message) null);
            }
            if (this.s != null || this.H != null || this.t != null) {
                b(alertController);
            }
            if (this.w != null) {
                if (this.B) {
                    alertController.a(this.w, this.x, this.y, this.z, this.A);
                } else {
                    alertController.c(this.w);
                }
            } else if (this.v != 0) {
                alertController.a(this.v);
            }
        }

        private void b(final AlertController alertController) {
            int i;
            ListAdapter cVar;
            final RecycleListView recycleListView = (RecycleListView) this.b.inflate(alertController.l, (ViewGroup) null);
            if (this.D) {
                if (this.H == null) {
                    cVar = new ArrayAdapter<CharSequence>(this.f538a, alertController.m, 16908308, this.s) { // from class: android.support.v7.app.AlertController.a.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public View getView(int i2, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i2, view, viewGroup);
                            if (a.this.C != null && a.this.C[i2]) {
                                recycleListView.setItemChecked(i2, true);
                            }
                            return view2;
                        }
                    };
                } else {
                    cVar = new CursorAdapter(this.f538a, this.H, false) { // from class: android.support.v7.app.AlertController.a.2
                        private final int d;
                        private final int e;

                        {
                            Cursor cursor = getCursor();
                            this.d = cursor.getColumnIndexOrThrow(a.this.I);
                            this.e = cursor.getColumnIndexOrThrow(a.this.J);
                        }

                        @Override // android.widget.CursorAdapter
                        public void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.d));
                            recycleListView.setItemChecked(cursor.getPosition(), cursor.getInt(this.e) == 1);
                        }

                        @Override // android.widget.CursorAdapter
                        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return a.this.b.inflate(alertController.m, viewGroup, false);
                        }
                    };
                }
            } else {
                if (this.E) {
                    i = alertController.n;
                } else {
                    i = alertController.o;
                }
                if (this.H != null) {
                    cVar = new SimpleCursorAdapter(this.f538a, i, this.H, new String[]{this.I}, new int[]{16908308});
                } else if (this.t != null) {
                    cVar = this.t;
                } else {
                    cVar = new c(this.f538a, i, 16908308, this.s);
                }
            }
            if (this.L != null) {
                this.L.a(recycleListView);
            }
            alertController.j = cVar;
            alertController.k = this.F;
            if (this.u != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.a.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        a.this.u.onClick(alertController.f531a, i2);
                        if (!a.this.E) {
                            alertController.f531a.dismiss();
                        }
                    }
                });
            } else if (this.G != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.support.v7.app.AlertController.a.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        if (a.this.C != null) {
                            a.this.C[i2] = recycleListView.isItemChecked(i2);
                        }
                        a.this.G.onClick(alertController.f531a, i2, recycleListView.isItemChecked(i2));
                    }
                });
            }
            if (this.K != null) {
                recycleListView.setOnItemSelectedListener(this.K);
            }
            if (this.E) {
                recycleListView.setChoiceMode(1);
            } else if (this.D) {
                recycleListView.setChoiceMode(2);
            }
            alertController.b = recycleListView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c extends ArrayAdapter<CharSequence> {
        public c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }
    }
}
