package android.support.design.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.support.transition.ae;
import android.support.transition.m;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;
/* compiled from: TextScale.java */
@TargetApi(14)
/* loaded from: classes.dex */
public class g extends m {
    @Override // android.support.transition.q
    public void a(ae aeVar) {
        c(aeVar);
    }

    @Override // android.support.transition.q
    public void b(ae aeVar) {
        c(aeVar);
    }

    private void c(ae aeVar) {
        if (aeVar.b instanceof TextView) {
            aeVar.f165a.put("android:textscale:scale", Float.valueOf(((TextView) aeVar.b).getScaleX()));
        }
    }

    @Override // android.support.transition.m, android.support.transition.q
    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        float f = 1.0f;
        if (aeVar == null || aeVar2 == null || !(aeVar.b instanceof TextView) || !(aeVar2.b instanceof TextView)) {
            return null;
        }
        final TextView textView = (TextView) aeVar2.b;
        Map<String, Object> map = aeVar.f165a;
        Map<String, Object> map2 = aeVar2.f165a;
        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        if (map2.get("android:textscale:scale") != null) {
            f = ((Float) map2.get("android:textscale:scale")).floatValue();
        }
        if (floatValue == f) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(floatValue, f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.internal.g.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                textView.setScaleX(floatValue2);
                textView.setScaleY(floatValue2);
            }
        });
        return ofFloat;
    }
}
