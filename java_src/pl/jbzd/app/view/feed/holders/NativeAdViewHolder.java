package pl.jbzd.app.view.feed.holders;

import android.view.View;
import android.widget.FrameLayout;
import butterknife.BindView;
/* loaded from: classes3.dex */
public class NativeAdViewHolder extends pl.jbzd.core.ui.view.a<View> {
    @BindView
    public FrameLayout layout;

    public NativeAdViewHolder(View view) {
        super(view);
    }

    public void a(View view) {
        view.getLayoutParams().width = -2;
    }
}
