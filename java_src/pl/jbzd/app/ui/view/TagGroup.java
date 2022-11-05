package pl.jbzd.app.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.ArrowKeyMovementMethod;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public class TagGroup extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5887a;
    private CharSequence b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private float n;
    private float o;
    private int p;
    private int q;
    private int r;
    private int s;
    private b t;
    private c u;
    private final a v;

    /* loaded from: classes3.dex */
    public interface b {
        void a(TagGroup tagGroup, String str);

        void b(TagGroup tagGroup, String str);
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(String str);
    }

    public TagGroup(Context context) {
        this(context, null);
    }

    public TagGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TagGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.v = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TagGroup, i, R.style.TagGroup);
        try {
            this.f5887a = obtainStyledAttributes.getBoolean(0, false);
            this.b = obtainStyledAttributes.getText(1);
            this.c = obtainStyledAttributes.getColor(2, Color.rgb(73, 193, 32));
            this.d = obtainStyledAttributes.getColor(3, Color.rgb(73, 193, 32));
            this.e = obtainStyledAttributes.getColor(4, -1);
            this.f = obtainStyledAttributes.getColor(5, Color.rgb(170, 170, 170));
            this.g = obtainStyledAttributes.getColor(6, Color.argb(128, 0, 0, 0));
            this.h = obtainStyledAttributes.getColor(7, Color.argb(222, 0, 0, 0));
            this.i = obtainStyledAttributes.getColor(8, Color.rgb(73, 193, 32));
            this.j = obtainStyledAttributes.getColor(9, -1);
            this.k = obtainStyledAttributes.getColor(10, -1);
            this.l = obtainStyledAttributes.getColor(11, Color.rgb(73, 193, 32));
            this.m = obtainStyledAttributes.getColor(12, Color.rgb(237, 237, 237));
            this.n = obtainStyledAttributes.getDimension(13, a(0.5f));
            this.o = obtainStyledAttributes.getDimension(14, b(12.0f));
            this.p = (int) obtainStyledAttributes.getDimension(15, a(8.0f));
            this.q = (int) obtainStyledAttributes.getDimension(16, a(4.0f));
            this.r = (int) obtainStyledAttributes.getDimension(17, a(12.0f));
            this.s = (int) obtainStyledAttributes.getDimension(18, a(3.0f));
            obtainStyledAttributes.recycle();
            if (this.f5887a) {
                b();
                setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.TagGroup.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TagGroup.this.a();
                    }
                });
            }
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void a() {
        d inputTag = getInputTag();
        if (inputTag != null && inputTag.b()) {
            inputTag.a();
            if (this.t != null) {
                this.t.a(this, inputTag.getText().toString());
            }
            b();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        measureChildren(i, i2);
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int childCount = getChildCount();
        int i10 = 0;
        while (i10 < childCount) {
            View childAt = getChildAt(i10);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                int i11 = i8 + measuredWidth;
                if (i11 > size) {
                    i4 = i7 + 1;
                    i5 = i6 + this.q + i9;
                } else {
                    measuredHeight = Math.max(i9, measuredHeight);
                    measuredWidth = i11;
                    i4 = i7;
                    i5 = i6;
                }
                i3 = measuredWidth + this.p;
            } else {
                measuredHeight = i9;
                i3 = i8;
                i4 = i7;
                i5 = i6;
            }
            i10++;
            i9 = measuredHeight;
            i6 = i5;
            i7 = i4;
            i8 = i3;
        }
        int paddingTop = i6 + i9 + getPaddingTop() + getPaddingBottom();
        int paddingLeft = i7 == 0 ? getPaddingLeft() + getPaddingRight() + i8 : size;
        if (mode == 1073741824) {
            paddingLeft = size;
        }
        if (mode2 == 1073741824) {
            paddingTop = size2;
        }
        setMeasuredDimension(paddingLeft, paddingTop);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = (i3 - i) - getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int i5 = paddingLeft;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            if (childAt.getVisibility() != 8) {
                if (i5 + measuredWidth > paddingRight) {
                    paddingTop = i6 + this.q + paddingTop;
                    i5 = paddingLeft;
                    i6 = measuredHeight;
                } else {
                    i6 = Math.max(i6, measuredHeight);
                }
                childAt.layout(i5, paddingTop, i5 + measuredWidth, measuredHeight + paddingTop);
                i5 += this.p + measuredWidth;
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = getTags();
        savedState.c = getCheckedTagIndex();
        if (getInputTag() != null) {
            savedState.d = getInputTag().getText().toString();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setTags(savedState.b);
        d a2 = a(savedState.c);
        if (a2 != null) {
            a2.a(true);
        }
        if (getInputTag() != null) {
            getInputTag().setText(savedState.d);
        }
    }

    protected d getInputTag() {
        if (this.f5887a) {
            d a2 = a(getChildCount() - 1);
            if (a2 != null && a2.b == 2) {
                return a2;
            }
            return null;
        }
        return null;
    }

    public String getInputTagText() {
        d inputTag = getInputTag();
        if (inputTag != null) {
            return inputTag.getText().toString();
        }
        return null;
    }

    protected d getLastNormalTagView() {
        return a(this.f5887a ? getChildCount() - 2 : getChildCount() - 1);
    }

    public String[] getTags() {
        int childCount = getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < childCount; i++) {
            d a2 = a(i);
            if (a2.b == 1) {
                arrayList.add(a2.getText().toString());
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public void setTags(List<String> list) {
        setTags((String[]) list.toArray(new String[list.size()]));
    }

    public void setTags(String... strArr) {
        removeAllViews();
        for (String str : strArr) {
            a((CharSequence) str);
        }
        if (this.f5887a) {
            b();
        }
    }

    protected d a(int i) {
        return (d) getChildAt(i);
    }

    protected d getCheckedTag() {
        int checkedTagIndex = getCheckedTagIndex();
        if (checkedTagIndex != -1) {
            return a(checkedTagIndex);
        }
        return null;
    }

    protected int getCheckedTagIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (a(i).c) {
                return i;
            }
        }
        return -1;
    }

    public void setOnTagChangeListener(b bVar) {
        this.t = bVar;
    }

    protected void b() {
        a((String) null);
    }

    protected void a(String str) {
        if (getInputTag() != null) {
            throw new IllegalStateException("Already has a INPUT tag in group.");
        }
        d dVar = new d(this, getContext(), 2, str);
        dVar.setOnClickListener(this.v);
        addView(dVar);
    }

    protected void a(CharSequence charSequence) {
        d dVar = new d(this, getContext(), 1, charSequence);
        dVar.setOnClickListener(this.v);
        addView(dVar);
    }

    public float a(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    public float b(float f) {
        return TypedValue.applyDimension(2, f, getResources().getDisplayMetrics());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void setOnTagClickListener(c cVar) {
        this.u = cVar;
    }

    protected void a(d dVar) {
        removeView(dVar);
        if (this.t != null) {
            this.t.b(this, dVar.getText().toString());
        }
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: pl.jbzd.app.ui.view.TagGroup.SavedState.1
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
        int f5889a;
        String[] b;
        int c;
        String d;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f5889a = parcel.readInt();
            this.b = new String[this.f5889a];
            parcel.readStringArray(this.b);
            this.c = parcel.readInt();
            this.d = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            this.f5889a = this.b.length;
            parcel.writeInt(this.f5889a);
            parcel.writeStringArray(this.b);
            parcel.writeInt(this.c);
            parcel.writeString(this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d dVar = (d) view;
            if (!TagGroup.this.f5887a) {
                if (TagGroup.this.u != null) {
                    TagGroup.this.u.a(dVar.getText().toString());
                }
            } else if (dVar.b == 2) {
                d checkedTag = TagGroup.this.getCheckedTag();
                if (checkedTag != null) {
                    checkedTag.a(false);
                }
            } else if (dVar.c) {
                TagGroup.this.a(dVar);
            } else {
                d checkedTag2 = TagGroup.this.getCheckedTag();
                if (checkedTag2 != null) {
                    checkedTag2.a(false);
                }
                dVar.a(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"AppCompatCustomView"})
    /* loaded from: classes3.dex */
    public class d extends TextView {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TagGroup f5891a;
        private int b;
        private boolean c;
        private boolean d;
        private final Paint e;
        private final Paint f;
        private final Paint g;
        private RectF h;
        private RectF i;
        private final RectF j;
        private final RectF k;
        private final RectF l;
        private final Rect m;
        private final Path n;
        private final PathEffect o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(final TagGroup tagGroup, Context context, final int i, CharSequence charSequence) {
            super(context);
            MovementMethod movementMethod = null;
            boolean z = true;
            this.f5891a = tagGroup;
            this.c = false;
            this.d = false;
            this.e = new Paint(1);
            this.f = new Paint(1);
            this.g = new Paint(1);
            this.h = new RectF();
            this.i = new RectF();
            this.j = new RectF();
            this.k = new RectF();
            this.l = new RectF();
            this.m = new Rect();
            this.n = new Path();
            this.o = new DashPathEffect(new float[]{10.0f, 5.0f}, BitmapDescriptorFactory.HUE_RED);
            this.e.setStyle(Paint.Style.STROKE);
            this.e.setStrokeWidth(this.f5891a.n);
            this.f.setStyle(Paint.Style.FILL);
            this.g.setStyle(Paint.Style.FILL);
            this.g.setStrokeWidth(4.0f);
            this.g.setColor(this.f5891a.k);
            setPadding(tagGroup.r, tagGroup.s, tagGroup.r, tagGroup.s);
            setLayoutParams(new LayoutParams(-2, -2));
            setGravity(17);
            setText(charSequence);
            setTextSize(0, tagGroup.o);
            setInputType(524288);
            this.b = i;
            setClickable(tagGroup.f5887a);
            setFocusable(i == 2);
            setFocusableInTouchMode(i != 2 ? false : z);
            setHint(i == 2 ? tagGroup.b : null);
            setMovementMethod(i == 2 ? ArrowKeyMovementMethod.getInstance() : movementMethod);
            setOnLongClickListener(new View.OnLongClickListener() { // from class: pl.jbzd.app.ui.view.TagGroup.d.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    return i != 2;
                }
            });
            if (i == 2) {
                requestFocus();
                setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: pl.jbzd.app.ui.view.TagGroup.d.2
                    @Override // android.widget.TextView.OnEditorActionListener
                    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                        if (i2 == 0 && keyEvent != null && keyEvent.getKeyCode() == 66 && keyEvent.getAction() == 0) {
                            if (d.this.b()) {
                                d.this.a();
                                if (d.this.f5891a.t != null) {
                                    d.this.f5891a.t.a(d.this.f5891a, d.this.getText().toString());
                                }
                                d.this.f5891a.b();
                            }
                            return true;
                        }
                        return false;
                    }
                });
                setOnKeyListener(new View.OnKeyListener() { // from class: pl.jbzd.app.ui.view.TagGroup.d.3
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                        d lastNormalTagView;
                        if (i2 != 67 || keyEvent.getAction() != 0 || !TextUtils.isEmpty(d.this.getText().toString()) || (lastNormalTagView = d.this.f5891a.getLastNormalTagView()) == null) {
                            return false;
                        }
                        if (lastNormalTagView.c) {
                            d.this.f5891a.removeView(lastNormalTagView);
                            if (d.this.f5891a.t == null) {
                                return true;
                            }
                            d.this.f5891a.t.b(d.this.f5891a, lastNormalTagView.getText().toString());
                            return true;
                        }
                        d checkedTag = d.this.f5891a.getCheckedTag();
                        if (checkedTag != null) {
                            checkedTag.a(false);
                        }
                        lastNormalTagView.a(true);
                        return true;
                    }
                });
                addTextChangedListener(new TextWatcher() { // from class: pl.jbzd.app.ui.view.TagGroup.d.4
                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence2, int i2, int i3, int i4) {
                        d checkedTag = d.this.f5891a.getCheckedTag();
                        if (checkedTag != null) {
                            checkedTag.a(false);
                        }
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence2, int i2, int i3, int i4) {
                    }

                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }
                });
            }
            c();
            setBackgroundColor(tagGroup.e);
        }

        public void a(boolean z) {
            this.c = z;
            setPadding(this.f5891a.r, this.f5891a.s, this.c ? (int) (this.f5891a.r + (getHeight() / 2.5f) + 3.0f) : this.f5891a.r, this.f5891a.s);
            c();
        }

        public void a() {
            setFocusable(false);
            setFocusableInTouchMode(false);
            setHint((CharSequence) null);
            setMovementMethod(null);
            this.b = 1;
            c();
            requestLayout();
        }

        @Override // android.widget.TextView
        protected boolean getDefaultEditable() {
            return true;
        }

        public boolean b() {
            return getText() != null && getText().length() > 0;
        }

        private void c() {
            if (!this.f5891a.f5887a) {
                this.e.setColor(this.f5891a.c);
                this.f.setColor(this.f5891a.e);
                setTextColor(this.f5891a.d);
            } else if (this.b == 2) {
                this.e.setColor(this.f5891a.f);
                this.e.setPathEffect(this.o);
                this.f.setColor(this.f5891a.e);
                setHintTextColor(this.f5891a.g);
                setTextColor(this.f5891a.h);
            } else {
                this.e.setPathEffect(null);
                if (this.c) {
                    this.e.setColor(this.f5891a.i);
                    this.f.setColor(this.f5891a.l);
                    setTextColor(this.f5891a.j);
                } else {
                    this.e.setColor(this.f5891a.c);
                    this.f.setColor(this.f5891a.e);
                    setTextColor(this.f5891a.d);
                }
            }
            if (this.d) {
                this.f.setColor(this.f5891a.m);
            }
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            canvas.drawRect(this.j, this.f);
            canvas.drawRect(this.k, this.f);
            if (this.c) {
                canvas.save();
                canvas.rotate(45.0f, this.l.centerX(), this.l.centerY());
                canvas.drawLine(this.l.left, this.l.centerY(), this.l.right, this.l.centerY(), this.g);
                canvas.drawLine(this.l.centerX(), this.l.top, this.l.centerX(), this.l.bottom, this.g);
                canvas.restore();
            }
            canvas.drawPath(this.n, this.e);
            super.onDraw(canvas);
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            int i5 = (int) this.f5891a.n;
            int i6 = (int) this.f5891a.n;
            int i7 = (int) ((i5 + i) - (this.f5891a.n * 2.0f));
            int i8 = (int) ((i6 + i2) - (this.f5891a.n * 2.0f));
            this.n.reset();
            this.j.set(i5, i6, i7, i8);
            this.k.set(i5, i6, i7, i8);
            int i9 = (int) (i2 / 2.5f);
            int i10 = i8 - i6;
            this.l.set(((i7 - i9) - this.f5891a.r) + 3, (i6 + (i10 / 2)) - (i9 / 2), (i7 - this.f5891a.r) + 3, (i9 / 2) + (i8 - (i10 / 2)));
            if (this.c) {
                setPadding(this.f5891a.r, this.f5891a.s, (int) (this.f5891a.r + (i10 / 2.5f) + 3.0f), this.f5891a.s);
            }
        }

        @Override // android.widget.TextView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (this.b == 2) {
                return super.onTouchEvent(motionEvent);
            }
            switch (motionEvent.getAction()) {
                case 0:
                    getDrawingRect(this.m);
                    this.d = true;
                    c();
                    invalidate();
                    break;
                case 1:
                    this.d = false;
                    c();
                    invalidate();
                    break;
                case 2:
                    if (!this.m.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                        this.d = false;
                        c();
                        invalidate();
                        break;
                    }
                    break;
            }
            return super.onTouchEvent(motionEvent);
        }

        @Override // android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            return new a(super.onCreateInputConnection(editorInfo), true);
        }

        /* loaded from: classes3.dex */
        private class a extends InputConnectionWrapper {
            public a(InputConnection inputConnection, boolean z) {
                super(inputConnection, z);
            }

            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public boolean deleteSurroundingText(int i, int i2) {
                if (i == 1 && i2 == 0) {
                    return sendKeyEvent(new KeyEvent(0, 67)) && sendKeyEvent(new KeyEvent(1, 67));
                }
                return super.deleteSurroundingText(i, i2);
            }
        }
    }
}
