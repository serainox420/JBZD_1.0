package pl.jbzd.app.ui.view.comment;

import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class CommentsView_ViewBinding implements Unbinder {
    private CommentsView b;

    public CommentsView_ViewBinding(CommentsView commentsView, View view) {
        this.b = commentsView;
        commentsView.title = (TextView) b.b(view, R.id.title, "field 'title'", TextView.class);
        commentsView.latest = (TextView) b.b(view, R.id.latest, "field 'latest'", TextView.class);
        commentsView.popular = (TextView) b.b(view, R.id.popular, "field 'popular'", TextView.class);
        commentsView.swipeContainer = (SwipeRefreshLayout) b.b(view, R.id.swipeContainer, "field 'swipeContainer'", SwipeRefreshLayout.class);
        commentsView.rvList = (RecyclerView) b.b(view, R.id.rvList, "field 'rvList'", RecyclerView.class);
        commentsView.editComment = (EditText) b.b(view, R.id.editComment, "field 'editComment'", EditText.class);
        commentsView.send = (LinearLayout) b.b(view, R.id.send, "field 'send'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        CommentsView commentsView = this.b;
        if (commentsView == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        commentsView.title = null;
        commentsView.latest = null;
        commentsView.popular = null;
        commentsView.swipeContainer = null;
        commentsView.rvList = null;
        commentsView.editComment = null;
        commentsView.send = null;
    }
}
