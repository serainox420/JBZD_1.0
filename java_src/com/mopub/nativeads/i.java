package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.facebook.imagepipeline.common.RotationOptions;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Views;
import com.mopub.mobileads.resource.DrawableConstants;
/* compiled from: SpinningProgressView.java */
/* loaded from: classes3.dex */
class i extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private final ProgressBar f4638a;
    private int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context) {
        super(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        setVisibility(8);
        setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        getBackground().setAlpha(RotationOptions.ROTATE_180);
        this.f4638a = new ProgressBar(context);
        this.b = Dips.asIntPixels(25.0f, getContext());
        this.f4638a.setIndeterminate(true);
        addView(this.f4638a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            int i5 = (i + i3) / 2;
            int i6 = (i2 + i4) / 2;
            this.f4638a.layout(i5 - this.b, i6 - this.b, i5 + this.b, i6 + this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view) {
        Preconditions.checkNotNull(view);
        View rootView = view.getRootView();
        if (rootView == null || !(rootView instanceof ViewGroup)) {
            return false;
        }
        setVisibility(0);
        setMeasuredDimension(rootView.getWidth(), rootView.getHeight());
        ((ViewGroup) rootView).addView(this);
        forceLayout();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        Views.removeFromParent(this);
        setVisibility(8);
        return true;
    }
}
