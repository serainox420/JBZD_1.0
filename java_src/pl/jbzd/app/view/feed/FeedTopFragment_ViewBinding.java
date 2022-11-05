package pl.jbzd.app.view.feed;

import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.view.View;
import butterknife.Unbinder;
import pl.jbzd.R;
/* loaded from: classes3.dex */
public class FeedTopFragment_ViewBinding implements Unbinder {
    private FeedTopFragment b;

    public FeedTopFragment_ViewBinding(FeedTopFragment feedTopFragment, View view) {
        this.b = feedTopFragment;
        feedTopFragment.viewPager = (ViewPager) butterknife.internal.b.b(view, R.id.viewPager, "field 'viewPager'", ViewPager.class);
        feedTopFragment.tabLayout = (TabLayout) butterknife.internal.b.b(view, R.id.tabLayout, "field 'tabLayout'", TabLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        FeedTopFragment feedTopFragment = this.b;
        if (feedTopFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        feedTopFragment.viewPager = null;
        feedTopFragment.tabLayout = null;
    }
}
