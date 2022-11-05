package pl.jbzd.core.ui.view;

import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.util.AttributeSet;
/* loaded from: classes3.dex */
public class HtmlTextView extends TextView {
    public HtmlTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    public HtmlTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public void setHtml(String str) {
        Spanned fromHtml;
        if (Build.VERSION.SDK_INT >= 24) {
            fromHtml = Html.fromHtml(str, 0);
        } else {
            fromHtml = Html.fromHtml(str);
        }
        setText(fromHtml);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        setHtml(getText().toString());
    }
}
