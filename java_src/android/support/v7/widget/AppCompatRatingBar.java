package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.RatingBar;
/* loaded from: classes.dex */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: a  reason: collision with root package name */
    private j f769a;

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f769a = new j(this);
        this.f769a.a(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap a2 = this.f769a.a();
        if (a2 != null) {
            setMeasuredDimension(android.support.v4.view.ai.a(a2.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }
}
