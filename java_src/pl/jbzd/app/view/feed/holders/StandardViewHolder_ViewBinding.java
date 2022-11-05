package pl.jbzd.app.view.feed.holders;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import butterknife.Unbinder;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.rahatarmanahmed.cpv.CircularProgressView;
import pl.jbzd.R;
import pl.jbzd.core.ui.view.CenteredLikeButton;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class StandardViewHolder_ViewBinding implements Unbinder {
    private StandardViewHolder b;

    public StandardViewHolder_ViewBinding(StandardViewHolder standardViewHolder, View view) {
        this.b = standardViewHolder;
        standardViewHolder.txtComments = (TextView) butterknife.internal.b.b(view, R.id.txtComments, "field 'txtComments'", TextView.class);
        standardViewHolder.btnFavorite = (ImageView) butterknife.internal.b.b(view, R.id.btnFavorite, "field 'btnFavorite'", ImageView.class);
        standardViewHolder.txtTitle = (TextView) butterknife.internal.b.b(view, R.id.txtTitle, "field 'txtTitle'", TextView.class);
        standardViewHolder.btnVoteUp = (TextView) butterknife.internal.b.b(view, R.id.btnVoteUp, "field 'btnVoteUp'", TextView.class);
        standardViewHolder.btnExpand = (TextView) butterknife.internal.b.b(view, R.id.btnExpand, "field 'btnExpand'", TextView.class);
        standardViewHolder.btnMore = (ImageView) butterknife.internal.b.b(view, R.id.btnMore, "field 'btnMore'", ImageView.class);
        standardViewHolder.btnLike = (CenteredLikeButton) butterknife.internal.b.b(view, R.id.btnLike, "field 'btnLike'", CenteredLikeButton.class);
        standardViewHolder.image = (SimpleDraweeView) butterknife.internal.b.b(view, R.id.image, "field 'image'", SimpleDraweeView.class);
        standardViewHolder.imageContainer = (FrameLayout) butterknife.internal.b.b(view, R.id.imageContainer, "field 'imageContainer'", FrameLayout.class);
        standardViewHolder.btnShow = view.findViewById(R.id.btnShow);
        standardViewHolder.progressView = (CircularProgressView) butterknife.internal.b.a(view, R.id.progressView, "field 'progressView'", CircularProgressView.class);
        standardViewHolder.ytVideoPlayerContainer = (FrameLayout) butterknife.internal.b.a(view, R.id.ytVideoPlayerContainer, "field 'ytVideoPlayerContainer'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        StandardViewHolder standardViewHolder = this.b;
        if (standardViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.b = null;
        standardViewHolder.txtComments = null;
        standardViewHolder.btnFavorite = null;
        standardViewHolder.txtTitle = null;
        standardViewHolder.btnVoteUp = null;
        standardViewHolder.btnExpand = null;
        standardViewHolder.btnMore = null;
        standardViewHolder.btnLike = null;
        standardViewHolder.image = null;
        standardViewHolder.imageContainer = null;
        standardViewHolder.btnShow = null;
        standardViewHolder.progressView = null;
        standardViewHolder.ytVideoPlayerContainer = null;
    }
}
