package pl.jbzd.app.view.feed.holders;

import android.view.View;
import android.widget.FrameLayout;
import butterknife.Unbinder;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public class NativeAdViewHolder_ViewBinding implements Unbinder {
    private NativeAdViewHolder b;

    public NativeAdViewHolder_ViewBinding(NativeAdViewHolder nativeAdViewHolder, View view) {
        this.b = nativeAdViewHolder;
        nativeAdViewHolder.layout = (FrameLayout) butterknife.internal.b.b(view, R.id.layout, "field 'layout'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        NativeAdViewHolder nativeAdViewHolder = this.b;
        if (nativeAdViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        nativeAdViewHolder.layout = null;
    }
}
