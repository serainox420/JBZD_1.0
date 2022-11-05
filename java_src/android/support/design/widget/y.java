package android.support.design.widget;

import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: ViewUtilsLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class y {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f144a = {16843848};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f144a, i, i2);
        try {
            if (obtainStyledAttributes.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, obtainStyledAttributes.getResourceId(0, 0)));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, float f) {
        int integer = view.getResources().getInteger(R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(new int[]{16842766, R.attr.state_collapsible, -R.attr.state_collapsed}, ObjectAnimator.ofFloat(view, "elevation", BitmapDescriptorFactory.HUE_RED).setDuration(integer));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(integer));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", BitmapDescriptorFactory.HUE_RED).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
