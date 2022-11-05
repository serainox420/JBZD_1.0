package pl.jbzd.app.view.feed;

import android.support.v4.widget.SwipeRefreshLayout;
import android.view.View;
import butterknife.Unbinder;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.TextView;
import pl.jbzd.core.ui.view.lce.LceRecyclerView;
/* loaded from: classes3.dex */
public class FeedFragment_ViewBinding implements Unbinder {
    private FeedFragment b;

    public FeedFragment_ViewBinding(FeedFragment feedFragment, View view) {
        this.b = feedFragment;
        feedFragment.swipeContainer = (SwipeRefreshLayout) butterknife.internal.b.b(view, R.id.swipeContainer, "field 'swipeContainer'", SwipeRefreshLayout.class);
        feedFragment.rvFeed = (LceRecyclerView) butterknife.internal.b.b(view, R.id.rvFeed, "field 'rvFeed'", LceRecyclerView.class);
        feedFragment.btnAddedNew = (TextView) butterknife.internal.b.b(view, R.id.btnAddedNew, "field 'btnAddedNew'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        FeedFragment feedFragment = this.b;
        if (feedFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        feedFragment.swipeContainer = null;
        feedFragment.rvFeed = null;
        feedFragment.btnAddedNew = null;
    }
}
