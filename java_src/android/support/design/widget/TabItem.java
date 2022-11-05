package android.support.design.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.design.R;
import android.support.v7.widget.av;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public final class TabItem extends View {

    /* renamed from: a  reason: collision with root package name */
    final CharSequence f75a;
    final Drawable b;
    final int c;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        av a2 = av.a(context, attributeSet, R.styleable.TabItem);
        this.f75a = a2.c(R.styleable.TabItem_android_text);
        this.b = a2.a(R.styleable.TabItem_android_icon);
        this.c = a2.g(R.styleable.TabItem_android_layout, 0);
        a2.a();
    }
}
