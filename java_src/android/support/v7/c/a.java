package android.support.v7.c;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;
/* compiled from: AllCapsTransformationMethod.java */
@RestrictTo
/* loaded from: classes.dex */
public class a implements TransformationMethod {

    /* renamed from: a  reason: collision with root package name */
    private Locale f637a;

    public a(Context context) {
        this.f637a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f637a);
        }
        return null;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
