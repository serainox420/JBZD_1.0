package pl.jbzd.app.view.comments;

import android.support.v7.widget.Toolbar;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.b;
import pl.jbzd.R;
import pl.jbzd.app.ui.view.comment.CommentsView;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class CommentsActivity_ViewBinding implements Unbinder {
    private CommentsActivity b;

    public CommentsActivity_ViewBinding(CommentsActivity commentsActivity, View view) {
        this.b = commentsActivity;
        commentsActivity.toolbar = (Toolbar) b.b(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        commentsActivity.txtToolbarTitle = (TextView) b.b(view, R.id.txtToolbarTitle, "field 'txtToolbarTitle'", TextView.class);
        commentsActivity.commentView = (CommentsView) b.b(view, R.id.commentView, "field 'commentView'", CommentsView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        CommentsActivity commentsActivity = this.b;
        if (commentsActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        commentsActivity.toolbar = null;
        commentsActivity.txtToolbarTitle = null;
        commentsActivity.commentView = null;
    }
}
