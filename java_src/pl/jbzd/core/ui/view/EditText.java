package pl.jbzd.core.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.Map;
import pl.jbzd.R;
import pl.jbzd.core.a.g;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class EditText extends android.widget.EditText {

    /* loaded from: classes3.dex */
    public enum Font {
        RobotoCondensedBold(0, "Roboto_Condensed/RobotoCondensed-Bold.ttf"),
        RobotoCondensedRegular(1, "Roboto_Condensed/RobotoCondensed-Regular.ttf"),
        RobotoBold(2, "Roboto/Roboto-Bold.ttf"),
        RobotoLight(3, "Roboto/Roboto-Light.ttf"),
        RobotoMedium(4, "Roboto/Roboto-Medium.ttf"),
        RobotoRegular(5, "Roboto/Roboto-Regular.ttf"),
        BitterRegular(6, "Bitter/Bitter-Regular.ttf"),
        BitterBold(7, "Bitter/Bitter-Bold.ttf");
        

        /* renamed from: a  reason: collision with root package name */
        private static final Map<Integer, Font> f6111a = new HashMap();
        public int id;
        public String src;

        static {
            Font[] values;
            for (Font font : values()) {
                if (f6111a.put(Integer.valueOf(font.id), font) != null) {
                    throw new IllegalArgumentException("duplicate id: " + font.id);
                }
            }
        }

        Font(int i, String str) {
            this.id = i;
            this.src = str;
        }

        public static Font getById(int i) {
            return f6111a.containsKey(Integer.valueOf(i)) ? f6111a.get(Integer.valueOf(i)) : f6111a.get(5);
        }
    }

    public EditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    public EditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public EditText(Context context) {
        this(context, null, 0);
    }

    private void a(Context context, AttributeSet attributeSet) {
        int i = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MyTextView);
            try {
                i = obtainStyledAttributes.getInt(0, -1);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        setFont(Font.getById(i));
    }

    public void setFont(Font font) {
        if (font != null) {
            setTypeface(g.a().a(getContext(), "fonts/" + font.src));
            if (getText().length() > 0) {
                requestLayout();
                invalidate();
            }
        }
    }
}
