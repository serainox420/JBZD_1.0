package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import android.widget.TextView;
import java.util.Locale;
/* compiled from: PagerTitleStripIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class ab {
    public static void a(TextView textView) {
        textView.setTransformationMethod(new a(textView.getContext()));
    }

    /* compiled from: PagerTitleStripIcs.java */
    /* loaded from: classes.dex */
    private static class a extends SingleLineTransformationMethod {

        /* renamed from: a  reason: collision with root package name */
        private Locale f432a;

        public a(Context context) {
            this.f432a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.f432a);
            }
            return null;
        }
    }
}
