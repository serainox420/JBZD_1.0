package pl.jbzd.core.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.github.rahatarmanahmed.cpv.CircularProgressView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public class LoaderLayout extends LinearLayout {
    @BindView
    public CircularProgressView progressWheel;
    @BindView
    public TextView text;

    public LoaderLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    public LoaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public LoaderLayout(Context context) {
        super(context);
        a(context, null, 0);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        LayoutInflater.from(context).inflate(R.layout.view_loader_layout, (ViewGroup) this, true);
        ButterKnife.a(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setGravity(17);
        setOrientation(1);
        setClickable(true);
        Drawable drawable = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        boolean z = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.LoaderLayout);
            try {
                drawable = obtainStyledAttributes.getDrawable(0);
                i2 = obtainStyledAttributes.getColor(1, 0);
                i3 = obtainStyledAttributes.getColor(2, 0);
                i4 = obtainStyledAttributes.getColor(3, 0);
                i5 = obtainStyledAttributes.getDimensionPixelSize(4, 0);
                i6 = obtainStyledAttributes.getDimensionPixelSize(5, 0);
                f = obtainStyledAttributes.getDimensionPixelSize(6, 0);
                i7 = obtainStyledAttributes.getDimensionPixelSize(7, 0);
                i8 = obtainStyledAttributes.getDimensionPixelSize(8, 0);
                i9 = obtainStyledAttributes.getDimensionPixelSize(9, 0);
                i10 = obtainStyledAttributes.getDimensionPixelSize(10, 0);
                str = obtainStyledAttributes.getString(11);
                str2 = obtainStyledAttributes.getString(13);
                str3 = obtainStyledAttributes.getString(15);
                str4 = obtainStyledAttributes.getString(17);
                i11 = obtainStyledAttributes.getInt(12, -1);
                i12 = obtainStyledAttributes.getInt(14, -1);
                i13 = obtainStyledAttributes.getInt(16, -1);
                z = obtainStyledAttributes.getBoolean(18, false);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        if (i2 != 0) {
            setBackgroundColor(i2);
        } else if (drawable != null) {
            if (Build.VERSION.SDK_INT < 16) {
                setBackgroundDrawable(drawable);
            } else {
                setBackground(drawable);
            }
        }
        if (z) {
            this.text.setVisibility(8);
        } else {
            this.text.setVisibility(0);
            if (f != BitmapDescriptorFactory.HUE_RED) {
                this.text.setTextSize(0, f);
            }
            if (i7 != 0) {
                ((ViewGroup.MarginLayoutParams) this.text.getLayoutParams()).leftMargin = i7;
            }
            if (i8 != 0) {
                ((ViewGroup.MarginLayoutParams) this.text.getLayoutParams()).topMargin = i8;
            }
            if (i9 != 0) {
                ((ViewGroup.MarginLayoutParams) this.text.getLayoutParams()).rightMargin = i9;
            }
            if (i10 != 0) {
                ((ViewGroup.MarginLayoutParams) this.text.getLayoutParams()).bottomMargin = i10;
            }
            if (i3 != 0) {
                this.text.setTextColor(i3);
            }
            if (str != null) {
                this.text.setText(str);
            }
            if (str2 != null && i11 > 0) {
                a(str2, i11);
            }
            if (str3 != null && i12 > 0) {
                a(str3, i12);
            }
            if (str4 != null && i13 > 0) {
                a(str4, i13);
            }
        }
        if (i4 != 0) {
            this.progressWheel.setColor(i4);
        }
        if (i6 > 0) {
            this.progressWheel.setThickness(i6);
        }
        if (i5 > 0) {
            ViewGroup.LayoutParams layoutParams2 = this.progressWheel.getLayoutParams();
            layoutParams2.width = i5;
            layoutParams2.height = i5;
            this.progressWheel.setLayoutParams(layoutParams2);
        }
    }

    public void a(final String str, int i) {
        if (i == 0) {
            TextView textView = this.text;
            if (str == null) {
                str = "";
            }
            textView.setText(str);
        } else if (i > 0) {
            try {
                new Handler().postDelayed(new Runnable() { // from class: pl.jbzd.core.ui.view.LoaderLayout.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (LoaderLayout.this.text != null && str != null) {
                            LoaderLayout.this.text.setText(str);
                        }
                    }
                }, i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setText(String str) {
        a(str, 0);
    }
}
