package pl.jbzd.core.ui.view.toggleswitch;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.support.v4.content.b;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public abstract class BaseToggleSwitch extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private a f6128a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private float h;
    private float i;
    private LayoutInflater j;
    private LinearLayout k;
    private ArrayList<String> l;
    private Context m;

    /* loaded from: classes3.dex */
    public static abstract class a {
        public abstract void a(int i, boolean z);
    }

    protected abstract boolean c(int i);

    protected abstract void e(int i);

    public BaseToggleSwitch(Context context) {
        this(context, null);
    }

    public BaseToggleSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6128a = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ToggleSwitchOptions, 0, 0);
            try {
                this.m = context;
                this.j = (LayoutInflater) context.getSystemService("layout_inflater");
                this.j.inflate(R.layout.view_toggle_switch, (ViewGroup) this, true);
                this.k = (LinearLayout) findViewById(R.id.toggle_switches_container);
                String string = obtainStyledAttributes.getString(2);
                String string2 = obtainStyledAttributes.getString(3);
                String string3 = obtainStyledAttributes.getString(4);
                this.b = obtainStyledAttributes.getColor(5, b.c(context, 17170451));
                this.c = obtainStyledAttributes.getColor(6, b.c(context, 17170443));
                this.d = obtainStyledAttributes.getColor(7, b.c(context, 17170443));
                this.e = obtainStyledAttributes.getColor(8, b.c(context, 17170444));
                this.f = obtainStyledAttributes.getColor(9, b.c(context, 17170444));
                this.g = obtainStyledAttributes.getDimensionPixelSize(0, pl.jbzd.core.a.a.a(12));
                this.i = obtainStyledAttributes.getDimension(1, pl.jbzd.core.a.a.a(64));
                this.h = obtainStyledAttributes.getDimensionPixelSize(10, pl.jbzd.core.a.a.a(4));
                if (string2 != null && !string2.isEmpty() && string3 != null && !string3.isEmpty()) {
                    this.l = new ArrayList<>();
                    this.l.add(string2);
                    if (string != null && !string.isEmpty()) {
                        this.l.add(string);
                    }
                    this.l.add(string3);
                    a();
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    public int getActiveBgColor() {
        return this.b;
    }

    public void setActiveBgColor(int i) {
        this.b = i;
    }

    public int getActiveTextColor() {
        return this.c;
    }

    public void setActiveTextColor(int i) {
        this.c = i;
    }

    public int getInactiveBgColor() {
        return this.d;
    }

    public void setInactiveBgColor(int i) {
        this.d = i;
    }

    public int getInactiveTextColor() {
        return this.e;
    }

    public void setInactiveTextColor(int i) {
        this.e = i;
    }

    public int getSeparatorColor() {
        return this.f;
    }

    public void setSeparatorColor(int i) {
        this.f = i;
    }

    public int getTextSize() {
        return this.g;
    }

    public void setTextSize(int i) {
        this.g = i;
    }

    public float getCornerRadius() {
        return this.h;
    }

    public void setCornerRadius(float f) {
        this.h = f;
    }

    public float getToggleWidth() {
        return this.i;
    }

    public void setToggleWidth(float f) {
        this.i = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        a(d(i), this.b, this.c);
    }

    private void a(String str) {
        pl.jbzd.core.ui.view.toggleswitch.a aVar = new pl.jbzd.core.ui.view.toggleswitch.a(this.m);
        TextView b = aVar.b();
        b.setText(str);
        b.setTextSize(0, this.g);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.i, -2);
        if (this.i == BitmapDescriptorFactory.HUE_RED) {
            layoutParams.weight = 1.0f;
        }
        b.setLayoutParams(layoutParams);
        aVar.c().setBackgroundColor(this.f);
        aVar.b().setOnClickListener(this);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) this.i, -1);
        if (this.i == BitmapDescriptorFactory.HUE_RED) {
            layoutParams2.weight = 1.0f;
        }
        this.k.addView(aVar.a(), layoutParams2);
        b(this.k.getChildCount() - 1);
    }

    private RoundRectShape a(pl.jbzd.core.ui.view.toggleswitch.a aVar) {
        if (b(aVar)) {
            return new RoundRectShape(new float[]{this.h, this.h, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.h, this.h}, null, null);
        }
        if (c(aVar)) {
            return new RoundRectShape(new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.h, this.h, this.h, this.h, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED}, null, null);
        }
        return new RoundRectShape(new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED}, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        Iterator<String> it = this.l.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    protected void b(int i) {
        a(d(i), this.d, this.e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        for (int i = 0; i < this.k.getChildCount(); i++) {
            b(i);
        }
    }

    protected int getNumButtons() {
        return getToggleSwitchesContainer().getChildCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LinearLayout getToggleSwitchesContainer() {
        return this.k;
    }

    protected pl.jbzd.core.ui.view.toggleswitch.a d(int i) {
        return new pl.jbzd.core.ui.view.toggleswitch.a(this.k.getChildAt(i));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        e(this.k.indexOfChild((LinearLayout) view.getParent()));
    }

    protected void a(pl.jbzd.core.ui.view.toggleswitch.a aVar, int i, int i2) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(a(aVar));
        shapeDrawable.getPaint().setColor(i);
        aVar.a().setBackground(shapeDrawable);
        aVar.b().setTextColor(i2);
    }

    public void setLabels(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            throw new RuntimeException("The list of labels must contains at least 2 elements");
        }
        this.l = arrayList;
        this.k.removeAllViews();
        a();
    }

    public void setOnToggleSwitchChangeListener(a aVar) {
        this.f6128a = aVar;
    }

    public void f(int i) {
        if (this.f6128a != null) {
            this.f6128a.a(i, c(i));
        }
    }

    private boolean b(pl.jbzd.core.ui.view.toggleswitch.a aVar) {
        return this.k.indexOfChild(aVar.a()) == 0;
    }

    private boolean c(pl.jbzd.core.ui.view.toggleswitch.a aVar) {
        return this.k.indexOfChild(aVar.a()) == this.k.getChildCount() + (-1);
    }
}
