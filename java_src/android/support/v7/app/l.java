package android.support.v7.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.view.ai;
import android.support.v7.appcompat.R;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatImageButton;
import android.support.v7.widget.AppCompatImageView;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatRatingBar;
import android.support.v7.widget.AppCompatSeekBar;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.as;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppCompatViewInflater.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?>[] f583a = {Context.class, AttributeSet.class};
    private static final int[] b = {16843375};
    private static final String[] c = {"android.widget.", "android.view.", "android.webkit."};
    private static final Map<String, Constructor<? extends View>> d = new android.support.v4.f.a();
    private final Object[] e = new Object[2];

    public final View a(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = a(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = as.a(context2);
        }
        View view2 = null;
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c2 = 11;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c2 = '\b';
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c2 = '\n';
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c2 = 0;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c2 = 5;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c2 = '\f';
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c2 = 4;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c2 = 3;
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                view2 = new AppCompatTextView(context2, attributeSet);
                break;
            case 1:
                view2 = new AppCompatImageView(context2, attributeSet);
                break;
            case 2:
                view2 = new AppCompatButton(context2, attributeSet);
                break;
            case 3:
                view2 = new AppCompatEditText(context2, attributeSet);
                break;
            case 4:
                view2 = new AppCompatSpinner(context2, attributeSet);
                break;
            case 5:
                view2 = new AppCompatImageButton(context2, attributeSet);
                break;
            case 6:
                view2 = new AppCompatCheckBox(context2, attributeSet);
                break;
            case 7:
                view2 = new AppCompatRadioButton(context2, attributeSet);
                break;
            case '\b':
                view2 = new AppCompatCheckedTextView(context2, attributeSet);
                break;
            case '\t':
                view2 = new AppCompatAutoCompleteTextView(context2, attributeSet);
                break;
            case '\n':
                view2 = new AppCompatMultiAutoCompleteTextView(context2, attributeSet);
                break;
            case 11:
                view2 = new AppCompatRatingBar(context2, attributeSet);
                break;
            case '\f':
                view2 = new AppCompatSeekBar(context2, attributeSet);
                break;
        }
        View a2 = (view2 != null || context == context2) ? view2 : a(context2, str, attributeSet);
        if (a2 != null) {
            a(a2, attributeSet);
        }
        return a2;
    }

    private View a(Context context, String str, AttributeSet attributeSet) {
        if (str.equals(Promotion.ACTION_VIEW)) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.e[0] = context;
            this.e[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return a(context, str, (String) null);
            }
            for (int i = 0; i < c.length; i++) {
                View a2 = a(context, str, c[i]);
                if (a2 != null) {
                    return a2;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        } finally {
            this.e[0] = null;
            this.e[1] = null;
        }
    }

    private void a(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || ai.I(view)) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b);
                String string = obtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new a(view, string));
                }
                obtainStyledAttributes.recycle();
            }
        }
    }

    private View a(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        Constructor<? extends View> constructor = d.get(str);
        if (constructor == null) {
            try {
                constructor = context.getClassLoader().loadClass(str2 != null ? str2 + str : str).asSubclass(View.class).getConstructor(f583a);
                d.put(str, constructor);
            } catch (Exception e) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.e);
    }

    private static Context a(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.View, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.View_theme, 0)) != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        int i = resourceId;
        obtainStyledAttributes.recycle();
        if (i != 0) {
            if (!(context instanceof android.support.v7.view.d) || ((android.support.v7.view.d) context).a() != i) {
                return new android.support.v7.view.d(context, i);
            }
            return context;
        }
        return context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppCompatViewInflater.java */
    /* loaded from: classes.dex */
    public static class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final View f584a;
        private final String b;
        private Method c;
        private Context d;

        public a(View view, String str) {
            this.f584a = view;
            this.b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.c == null) {
                a(this.f584a.getContext(), this.b);
            }
            try {
                this.c.invoke(this.d, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }

        private void a(Context context, String str) {
            Method method;
            Context context2 = context;
            while (context2 != null) {
                try {
                    if (!context2.isRestricted() && (method = context2.getClass().getMethod(this.b, View.class)) != null) {
                        this.c = method;
                        this.d = context2;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                if (context2 instanceof ContextWrapper) {
                    context2 = ((ContextWrapper) context2).getBaseContext();
                } else {
                    context2 = null;
                }
            }
            int id = this.f584a.getId();
            throw new IllegalStateException("Could not find method " + this.b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f584a.getClass() + (id == -1 ? "" : " with id '" + this.f584a.getContext().getResources().getResourceEntryName(id) + "'"));
        }
    }
}
