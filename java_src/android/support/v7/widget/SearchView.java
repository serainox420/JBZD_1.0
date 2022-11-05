package android.support.v7.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AbsSavedState;
import android.support.v7.appcompat.R;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.imageutils.JfifUtil;
import com.google.android.gms.drive.DriveFile;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements android.support.v7.view.c {
    static final a i = new a();
    private c A;
    private b B;
    private d C;
    private View.OnClickListener D;
    private boolean E;
    private boolean F;
    private boolean G;
    private CharSequence H;
    private boolean I;
    private boolean J;
    private int K;
    private boolean L;
    private CharSequence M;
    private CharSequence N;
    private boolean O;
    private int P;
    private Bundle Q;
    private Runnable R;
    private final Runnable S;
    private Runnable T;
    private final WeakHashMap<String, Drawable.ConstantState> U;
    private final View.OnClickListener V;
    private final TextView.OnEditorActionListener W;

    /* renamed from: a  reason: collision with root package name */
    final SearchAutoComplete f822a;
    private final AdapterView.OnItemClickListener aa;
    private final AdapterView.OnItemSelectedListener ab;
    private TextWatcher ac;
    final ImageView b;
    final ImageView c;
    final ImageView d;
    final ImageView e;
    View.OnFocusChangeListener f;
    android.support.v4.widget.g g;
    SearchableInfo h;
    View.OnKeyListener j;
    private final View k;
    private final View l;
    private final View m;
    private final View n;
    private e o;
    private Rect p;
    private Rect q;
    private int[] r;
    private int[] s;
    private final ImageView t;
    private final Drawable u;
    private final int v;
    private final int w;
    private final Intent x;
    private final Intent y;
    private final CharSequence z;

    /* loaded from: classes.dex */
    public interface b {
        boolean a();
    }

    /* loaded from: classes.dex */
    public interface c {
        boolean a(String str);

        boolean b(String str);
    }

    /* loaded from: classes.dex */
    public interface d {
        boolean a(int i);

        boolean b(int i);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.p = new Rect();
        this.q = new Rect();
        this.r = new int[2];
        this.s = new int[2];
        this.R = new Runnable() { // from class: android.support.v7.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchView.this.getContext().getSystemService("input_method");
                if (inputMethodManager != null) {
                    SearchView.i.a(inputMethodManager, SearchView.this, 0);
                }
            }
        };
        this.S = new Runnable() { // from class: android.support.v7.widget.SearchView.5
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.d();
            }
        };
        this.T = new Runnable() { // from class: android.support.v7.widget.SearchView.6
            @Override // java.lang.Runnable
            public void run() {
                if (SearchView.this.g != null && (SearchView.this.g instanceof ap)) {
                    SearchView.this.g.a((Cursor) null);
                }
            }
        };
        this.U = new WeakHashMap<>();
        this.V = new View.OnClickListener() { // from class: android.support.v7.widget.SearchView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == SearchView.this.b) {
                    SearchView.this.g();
                } else if (view == SearchView.this.d) {
                    SearchView.this.f();
                } else if (view == SearchView.this.c) {
                    SearchView.this.e();
                } else if (view == SearchView.this.e) {
                    SearchView.this.h();
                } else if (view == SearchView.this.f822a) {
                    SearchView.this.l();
                }
            }
        };
        this.j = new View.OnKeyListener() { // from class: android.support.v7.widget.SearchView.11
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i3, KeyEvent keyEvent) {
                if (SearchView.this.h == null) {
                    return false;
                }
                if (SearchView.this.f822a.isPopupShowing() && SearchView.this.f822a.getListSelection() != -1) {
                    return SearchView.this.a(view, i3, keyEvent);
                }
                if (SearchView.this.f822a.a() || !android.support.v4.view.h.a(keyEvent) || keyEvent.getAction() != 1 || i3 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView.this.a(0, (String) null, SearchView.this.f822a.getText().toString());
                return true;
            }
        };
        this.W = new TextView.OnEditorActionListener() { // from class: android.support.v7.widget.SearchView.12
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                SearchView.this.e();
                return true;
            }
        };
        this.aa = new AdapterView.OnItemClickListener() { // from class: android.support.v7.widget.SearchView.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                SearchView.this.a(i3, 0, (String) null);
            }
        };
        this.ab = new AdapterView.OnItemSelectedListener() { // from class: android.support.v7.widget.SearchView.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i3, long j) {
                SearchView.this.a(i3);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.ac = new TextWatcher() { // from class: android.support.v7.widget.SearchView.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                SearchView.this.b(charSequence);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }
        };
        av a2 = av.a(context, attributeSet, R.styleable.SearchView, i2, 0);
        LayoutInflater.from(context).inflate(a2.g(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        this.f822a = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f822a.setSearchView(this);
        this.k = findViewById(R.id.search_edit_frame);
        this.l = findViewById(R.id.search_plate);
        this.m = findViewById(R.id.submit_area);
        this.b = (ImageView) findViewById(R.id.search_button);
        this.c = (ImageView) findViewById(R.id.search_go_btn);
        this.d = (ImageView) findViewById(R.id.search_close_btn);
        this.e = (ImageView) findViewById(R.id.search_voice_btn);
        this.t = (ImageView) findViewById(R.id.search_mag_icon);
        android.support.v4.view.ai.a(this.l, a2.a(R.styleable.SearchView_queryBackground));
        android.support.v4.view.ai.a(this.m, a2.a(R.styleable.SearchView_submitBackground));
        this.b.setImageDrawable(a2.a(R.styleable.SearchView_searchIcon));
        this.c.setImageDrawable(a2.a(R.styleable.SearchView_goIcon));
        this.d.setImageDrawable(a2.a(R.styleable.SearchView_closeIcon));
        this.e.setImageDrawable(a2.a(R.styleable.SearchView_voiceIcon));
        this.t.setImageDrawable(a2.a(R.styleable.SearchView_searchIcon));
        this.u = a2.a(R.styleable.SearchView_searchHintIcon);
        this.v = a2.g(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.w = a2.g(R.styleable.SearchView_commitIcon, 0);
        this.b.setOnClickListener(this.V);
        this.d.setOnClickListener(this.V);
        this.c.setOnClickListener(this.V);
        this.e.setOnClickListener(this.V);
        this.f822a.setOnClickListener(this.V);
        this.f822a.addTextChangedListener(this.ac);
        this.f822a.setOnEditorActionListener(this.W);
        this.f822a.setOnItemClickListener(this.aa);
        this.f822a.setOnItemSelectedListener(this.ab);
        this.f822a.setOnKeyListener(this.j);
        this.f822a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: android.support.v7.widget.SearchView.7
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.f != null) {
                    SearchView.this.f.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(a2.a(R.styleable.SearchView_iconifiedByDefault, true));
        int e2 = a2.e(R.styleable.SearchView_android_maxWidth, -1);
        if (e2 != -1) {
            setMaxWidth(e2);
        }
        this.z = a2.c(R.styleable.SearchView_defaultQueryHint);
        this.H = a2.c(R.styleable.SearchView_queryHint);
        int a3 = a2.a(R.styleable.SearchView_android_imeOptions, -1);
        if (a3 != -1) {
            setImeOptions(a3);
        }
        int a4 = a2.a(R.styleable.SearchView_android_inputType, -1);
        if (a4 != -1) {
            setInputType(a4);
        }
        setFocusable(a2.a(R.styleable.SearchView_android_focusable, true));
        a2.a();
        this.x = new Intent("android.speech.action.WEB_SEARCH");
        this.x.addFlags(DriveFile.MODE_READ_ONLY);
        this.x.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.y = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.y.addFlags(DriveFile.MODE_READ_ONLY);
        this.n = findViewById(this.f822a.getDropDownAnchor());
        if (this.n != null) {
            if (Build.VERSION.SDK_INT >= 11) {
                m();
            } else {
                n();
            }
        }
        a(this.E);
        t();
    }

    @TargetApi(11)
    private void m() {
        this.n.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: android.support.v7.widget.SearchView.8
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                SearchView.this.k();
            }
        });
    }

    private void n() {
        this.n.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.support.v7.widget.SearchView.9
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SearchView.this.k();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.w;
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.h = searchableInfo;
        if (this.h != null) {
            u();
            t();
        }
        this.L = o();
        if (this.L) {
            this.f822a.setPrivateImeOptions("nm");
        }
        a(c());
    }

    @RestrictTo
    public void setAppSearchData(Bundle bundle) {
        this.Q = bundle;
    }

    public void setImeOptions(int i2) {
        this.f822a.setImeOptions(i2);
    }

    public int getImeOptions() {
        return this.f822a.getImeOptions();
    }

    public void setInputType(int i2) {
        this.f822a.setInputType(i2);
    }

    public int getInputType() {
        return this.f822a.getInputType();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (!this.J && isFocusable()) {
            if (!c()) {
                boolean requestFocus = this.f822a.requestFocus(i2, rect);
                if (requestFocus) {
                    a(false);
                }
                return requestFocus;
            }
            return super.requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.J = true;
        setImeVisibility(false);
        super.clearFocus();
        this.f822a.clearFocus();
        this.J = false;
    }

    public void setOnQueryTextListener(c cVar) {
        this.A = cVar;
    }

    public void setOnCloseListener(b bVar) {
        this.B = bVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f = onFocusChangeListener;
    }

    public void setOnSuggestionListener(d dVar) {
        this.C = dVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.D = onClickListener;
    }

    public CharSequence getQuery() {
        return this.f822a.getText();
    }

    public void a(CharSequence charSequence, boolean z) {
        this.f822a.setText(charSequence);
        if (charSequence != null) {
            this.f822a.setSelection(this.f822a.length());
            this.N = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            e();
        }
    }

    public void setQueryHint(CharSequence charSequence) {
        this.H = charSequence;
        t();
    }

    public CharSequence getQueryHint() {
        if (this.H != null) {
            return this.H;
        }
        if (this.h != null && this.h.getHintId() != 0) {
            return getContext().getText(this.h.getHintId());
        }
        return this.z;
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.E != z) {
            this.E = z;
            a(z);
            t();
        }
    }

    public void setIconified(boolean z) {
        if (z) {
            f();
        } else {
            g();
        }
    }

    public boolean c() {
        return this.F;
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.G = z;
        a(c());
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.I = z;
        if (this.g instanceof ap) {
            ((ap) this.g).a(z ? 2 : 1);
        }
    }

    public void setSuggestionsAdapter(android.support.v4.widget.g gVar) {
        this.g = gVar;
        this.f822a.setAdapter(this.g);
    }

    public android.support.v4.widget.g getSuggestionsAdapter() {
        return this.g;
    }

    public void setMaxWidth(int i2) {
        this.K = i2;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.K;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i2, int i3) {
        if (c()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                if (this.K > 0) {
                    size = Math.min(this.K, size);
                    break;
                } else {
                    size = Math.min(getPreferredWidth(), size);
                    break;
                }
            case 0:
                if (this.K <= 0) {
                    size = getPreferredWidth();
                    break;
                } else {
                    size = this.K;
                    break;
                }
            case 1073741824:
                if (this.K > 0) {
                    size = Math.min(this.K, size);
                    break;
                }
                break;
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        switch (mode2) {
            case Integer.MIN_VALUE:
                size2 = Math.min(getPreferredHeight(), size2);
                break;
            case 0:
                size2 = getPreferredHeight();
                break;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            a(this.f822a, this.p);
            this.q.set(this.p.left, 0, this.p.right, i5 - i3);
            if (this.o == null) {
                this.o = new e(this.q, this.p, this.f822a);
                setTouchDelegate(this.o);
                return;
            }
            this.o.a(this.q, this.p);
        }
    }

    private void a(View view, Rect rect) {
        view.getLocationInWindow(this.r);
        getLocationInWindow(this.s);
        int i2 = this.r[1] - this.s[1];
        int i3 = this.r[0] - this.s[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private void a(boolean z) {
        boolean z2 = true;
        int i2 = 8;
        this.F = z;
        int i3 = z ? 0 : 8;
        boolean z3 = !TextUtils.isEmpty(this.f822a.getText());
        this.b.setVisibility(i3);
        b(z3);
        this.k.setVisibility(z ? 8 : 0);
        if (this.t.getDrawable() != null && !this.E) {
            i2 = 0;
        }
        this.t.setVisibility(i2);
        r();
        if (z3) {
            z2 = false;
        }
        c(z2);
        q();
    }

    private boolean o() {
        if (this.h == null || !this.h.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.h.getVoiceSearchLaunchWebSearch()) {
            intent = this.x;
        } else if (this.h.getVoiceSearchLaunchRecognizer()) {
            intent = this.y;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    private boolean p() {
        return (this.G || this.L) && !c();
    }

    private void b(boolean z) {
        int i2 = 8;
        if (this.G && p() && hasFocus() && (z || !this.L)) {
            i2 = 0;
        }
        this.c.setVisibility(i2);
    }

    private void q() {
        int i2 = 8;
        if (p() && (this.c.getVisibility() == 0 || this.e.getVisibility() == 0)) {
            i2 = 0;
        }
        this.m.setVisibility(i2);
    }

    private void r() {
        boolean z = true;
        int i2 = 0;
        boolean z2 = !TextUtils.isEmpty(this.f822a.getText());
        if (!z2 && (!this.E || this.O)) {
            z = false;
        }
        ImageView imageView = this.d;
        if (!z) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.d.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private void s() {
        post(this.S);
    }

    void d() {
        int[] iArr = this.f822a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.l.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.m.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.S);
        post(this.T);
        super.onDetachedFromWindow();
    }

    void setImeVisibility(boolean z) {
        if (z) {
            post(this.R);
            return;
        }
        removeCallbacks(this.R);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    boolean a(View view, int i2, KeyEvent keyEvent) {
        if (this.h != null && this.g != null && keyEvent.getAction() == 0 && android.support.v4.view.h.a(keyEvent)) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return a(this.f822a.getListSelection(), 0, (String) null);
            }
            if (i2 == 21 || i2 == 22) {
                this.f822a.setSelection(i2 == 21 ? 0 : this.f822a.length());
                this.f822a.setListSelection(0);
                this.f822a.clearListSelection();
                i.a(this.f822a, true);
                return true;
            }
            if (i2 != 19 || this.f822a.getListSelection() != 0) {
            }
            return false;
        }
        return false;
    }

    private CharSequence c(CharSequence charSequence) {
        if (this.E && this.u != null) {
            int textSize = (int) (this.f822a.getTextSize() * 1.25d);
            this.u.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.u), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            return spannableStringBuilder;
        }
        return charSequence;
    }

    private void t() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f822a;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(c(queryHint));
    }

    private void u() {
        int i2 = 1;
        this.f822a.setThreshold(this.h.getSuggestThreshold());
        this.f822a.setImeOptions(this.h.getImeOptions());
        int inputType = this.h.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.h.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f822a.setInputType(inputType);
        if (this.g != null) {
            this.g.a((Cursor) null);
        }
        if (this.h.getSuggestAuthority() != null) {
            this.g = new ap(getContext(), this, this.h, this.U);
            this.f822a.setAdapter(this.g);
            ap apVar = (ap) this.g;
            if (this.I) {
                i2 = 2;
            }
            apVar.a(i2);
        }
    }

    private void c(boolean z) {
        int i2;
        if (!this.L || c() || !z) {
            i2 = 8;
        } else {
            i2 = 0;
            this.c.setVisibility(8);
        }
        this.e.setVisibility(i2);
    }

    void b(CharSequence charSequence) {
        boolean z = true;
        Editable text = this.f822a.getText();
        this.N = text;
        boolean z2 = !TextUtils.isEmpty(text);
        b(z2);
        if (z2) {
            z = false;
        }
        c(z);
        r();
        q();
        if (this.A != null && !TextUtils.equals(charSequence, this.M)) {
            this.A.b(charSequence.toString());
        }
        this.M = charSequence.toString();
    }

    void e() {
        Editable text = this.f822a.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.A == null || !this.A.a(text.toString())) {
                if (this.h != null) {
                    a(0, (String) null, text.toString());
                }
                setImeVisibility(false);
                v();
            }
        }
    }

    private void v() {
        this.f822a.dismissDropDown();
    }

    void f() {
        if (TextUtils.isEmpty(this.f822a.getText())) {
            if (this.E) {
                if (this.B == null || !this.B.a()) {
                    clearFocus();
                    a(true);
                    return;
                }
                return;
            }
            return;
        }
        this.f822a.setText("");
        this.f822a.requestFocus();
        setImeVisibility(true);
    }

    void g() {
        a(false);
        this.f822a.requestFocus();
        setImeVisibility(true);
        if (this.D != null) {
            this.D.onClick(this);
        }
    }

    void h() {
        if (this.h != null) {
            SearchableInfo searchableInfo = this.h;
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(a(this.x, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(b(this.y, searchableInfo));
                }
            } catch (ActivityNotFoundException e2) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    void i() {
        a(c());
        s();
        if (this.f822a.hasFocus()) {
            l();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        s();
    }

    @Override // android.support.v7.view.c
    public void b() {
        a("", false);
        clearFocus();
        a(true);
        this.f822a.setImeOptions(this.P);
        this.O = false;
    }

    @Override // android.support.v7.view.c
    public void a() {
        if (!this.O) {
            this.O = true;
            this.P = this.f822a.getImeOptions();
            this.f822a.setImeOptions(this.P | 33554432);
            this.f822a.setText("");
            setIconified(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = android.support.v4.os.e.a(new android.support.v4.os.f<SavedState>() { // from class: android.support.v7.widget.SearchView.SavedState.1
            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState b(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.support.v4.os.f
            /* renamed from: a */
            public SavedState[] b(int i) {
                return new SavedState[i];
            }
        });

        /* renamed from: a  reason: collision with root package name */
        boolean f835a;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f835a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f835a));
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f835a + "}";
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f835a = c();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        a(savedState.f835a);
        requestLayout();
    }

    void k() {
        int i2;
        int i3;
        if (this.n.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.l.getPaddingLeft();
            Rect rect = new Rect();
            boolean a2 = ba.a(this);
            if (this.E) {
                i2 = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width);
            } else {
                i2 = 0;
            }
            this.f822a.getDropDownBackground().getPadding(rect);
            if (a2) {
                i3 = -rect.left;
            } else {
                i3 = paddingLeft - (rect.left + i2);
            }
            this.f822a.setDropDownHorizontalOffset(i3);
            this.f822a.setDropDownWidth((i2 + ((this.n.getWidth() + rect.left) + rect.right)) - paddingLeft);
        }
    }

    boolean a(int i2, int i3, String str) {
        if (this.C == null || !this.C.b(i2)) {
            b(i2, 0, null);
            setImeVisibility(false);
            v();
            return true;
        }
        return false;
    }

    boolean a(int i2) {
        if (this.C == null || !this.C.a(i2)) {
            e(i2);
            return true;
        }
        return false;
    }

    private void e(int i2) {
        Editable text = this.f822a.getText();
        Cursor a2 = this.g.a();
        if (a2 != null) {
            if (a2.moveToPosition(i2)) {
                CharSequence c2 = this.g.c(a2);
                if (c2 != null) {
                    setQuery(c2);
                    return;
                } else {
                    setQuery(text);
                    return;
                }
            }
            setQuery(text);
        }
    }

    private boolean b(int i2, int i3, String str) {
        Cursor a2 = this.g.a();
        if (a2 == null || !a2.moveToPosition(i2)) {
            return false;
        }
        a(a(a2, i3, str));
        return true;
    }

    private void a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e2) {
                Log.e("SearchView", "Failed launch activity: " + intent, e2);
            }
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.f822a.setText(charSequence);
        this.f822a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    void a(int i2, String str, String str2) {
        getContext().startActivity(a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i2, str));
    }

    private Intent a(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.N);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.Q != null) {
            intent.putExtra("app_data", this.Q);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.h.getSearchActivity());
        return intent;
    }

    private Intent a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private Intent b(Intent intent, SearchableInfo searchableInfo) {
        String str = null;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        if (this.Q != null) {
            bundle.putParcelable("app_data", this.Q);
        }
        Intent intent3 = new Intent(intent);
        String str2 = "free_form";
        int i2 = 1;
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            str2 = resources.getString(searchableInfo.getVoiceLanguageModeId());
        }
        String string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i2 = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str2);
        intent3.putExtra("android.speech.extra.PROMPT", string);
        intent3.putExtra("android.speech.extra.LANGUAGE", string2);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i2);
        if (searchActivity != null) {
            str = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent a(Cursor cursor, int i2, String str) {
        int i3;
        String a2;
        try {
            String a3 = ap.a(cursor, "suggest_intent_action");
            if (a3 == null) {
                a3 = this.h.getSuggestIntentAction();
            }
            if (a3 == null) {
                a3 = "android.intent.action.SEARCH";
            }
            String a4 = ap.a(cursor, "suggest_intent_data");
            if (a4 == null) {
                a4 = this.h.getSuggestIntentData();
            }
            if (a4 != null && (a2 = ap.a(cursor, "suggest_intent_data_id")) != null) {
                a4 = a4 + "/" + Uri.encode(a2);
            }
            return a(a3, a4 == null ? null : Uri.parse(a4), ap.a(cursor, "suggest_intent_extra_data"), ap.a(cursor, "suggest_intent_query"), i2, str);
        } catch (RuntimeException e2) {
            try {
                i3 = cursor.getPosition();
            } catch (RuntimeException e3) {
                i3 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i3 + " returned exception.", e2);
            return null;
        }
    }

    void l() {
        i.a(this.f822a);
        i.b(this.f822a);
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* loaded from: classes.dex */
    private static class e extends TouchDelegate {

        /* renamed from: a  reason: collision with root package name */
        private final View f838a;
        private final Rect b;
        private final Rect c;
        private final Rect d;
        private final int e;
        private boolean f;

        public e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.b = new Rect();
            this.d = new Rect();
            this.c = new Rect();
            a(rect, rect2);
            this.f838a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.b.set(rect);
            this.d.set(rect);
            this.d.inset(-this.e, -this.e);
            this.c.set(rect2);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2 = true;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            switch (motionEvent.getAction()) {
                case 0:
                    if (this.b.contains(x, y)) {
                        this.f = true;
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                case 1:
                case 2:
                    z = this.f;
                    if (z && !this.d.contains(x, y)) {
                        z2 = false;
                        break;
                    }
                    break;
                case 3:
                    z = this.f;
                    this.f = false;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                if (z2 && !this.c.contains(x, y)) {
                    motionEvent.setLocation(this.f838a.getWidth() / 2, this.f838a.getHeight() / 2);
                } else {
                    motionEvent.setLocation(x - this.c.left, y - this.c.top);
                }
                return this.f838a.dispatchTouchEvent(motionEvent);
            }
            return false;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: a  reason: collision with root package name */
        private int f836a;
        private SearchView b;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f836a = getThreshold();
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        void setSearchView(SearchView searchView) {
            this.b = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f836a = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.b.hasFocus() && getVisibility() == 0) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                if (SearchView.a(getContext())) {
                    SearchView.i.a(this, true);
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.b.i();
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f836a <= 0 || super.enoughToFilter();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.b.clearFocus();
                        this.b.setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int b = android.support.v4.content.a.a.b(getResources());
            int a2 = android.support.v4.content.a.a.a(getResources());
            if (b >= 960 && a2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (b >= 600 || (b >= 640 && a2 >= 480)) {
                return JfifUtil.MARKER_SOFn;
            }
            return 160;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Method f837a;
        private Method b;
        private Method c;
        private Method d;

        a() {
            try {
                this.f837a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f837a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                this.c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.c.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
            try {
                this.d = InputMethodManager.class.getMethod("showSoftInputUnchecked", Integer.TYPE, ResultReceiver.class);
                this.d.setAccessible(true);
            } catch (NoSuchMethodException e4) {
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            if (this.f837a != null) {
                try {
                    this.f837a.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            if (this.b != null) {
                try {
                    this.b.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            if (this.c != null) {
                try {
                    this.c.invoke(autoCompleteTextView, Boolean.valueOf(z));
                } catch (Exception e) {
                }
            }
        }

        void a(InputMethodManager inputMethodManager, View view, int i) {
            if (this.d != null) {
                try {
                    this.d.invoke(inputMethodManager, Integer.valueOf(i), null);
                    return;
                } catch (Exception e) {
                }
            }
            inputMethodManager.showSoftInput(view, i);
        }
    }
}
