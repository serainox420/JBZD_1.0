package android.support.transition;

import android.animation.TypeEvaluator;
import android.annotation.TargetApi;
import android.graphics.Rect;
/* compiled from: RectEvaluator.java */
@TargetApi(14)
/* loaded from: classes.dex */
class k implements TypeEvaluator<Rect> {

    /* renamed from: a  reason: collision with root package name */
    private Rect f183a;

    @Override // android.animation.TypeEvaluator
    /* renamed from: a */
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        int i = ((int) ((rect2.left - rect.left) * f)) + rect.left;
        int i2 = ((int) ((rect2.top - rect.top) * f)) + rect.top;
        int i3 = ((int) ((rect2.right - rect.right) * f)) + rect.right;
        int i4 = ((int) ((rect2.bottom - rect.bottom) * f)) + rect.bottom;
        if (this.f183a == null) {
            return new Rect(i, i2, i3, i4);
        }
        this.f183a.set(i, i2, i3, i4);
        return this.f183a;
    }
}
