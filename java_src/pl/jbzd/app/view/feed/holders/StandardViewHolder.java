package pl.jbzd.app.view.feed.holders;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import butterknife.BindView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.share.widget.LikeView;
import com.github.rahatarmanahmed.cpv.CircularProgressView;
import pl.jbzd.R;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.view.feed.FeedAdapter;
import pl.jbzd.app.view.feed.a.a;
import pl.jbzd.core.ui.view.CenteredLikeButton;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class StandardViewHolder<T extends pl.jbzd.app.view.feed.a.a> extends pl.jbzd.core.ui.view.a<T> {
    @BindView
    public TextView btnExpand;
    @BindView
    public ImageView btnFavorite;
    @BindView
    public CenteredLikeButton btnLike;
    @BindView
    public ImageView btnMore;
    @BindView
    public View btnShow;
    @BindView
    public TextView btnVoteUp;
    @BindView
    public SimpleDraweeView image;
    @BindView
    public FrameLayout imageContainer;
    @BindView
    public CircularProgressView progressView;
    @BindView
    public TextView txtComments;
    @BindView
    public TextView txtTitle;
    @BindView
    public FrameLayout ytVideoPlayerContainer;

    public StandardViewHolder(View view) {
        super(view);
    }

    @SuppressLint({"SetTextI18n"})
    public void a(T t) {
        t.c = this;
        Media media = (Media) t.f6023a;
        pl.jbzd.app.c.a.a(this.itemView.getContext(), media, this.imageContainer, this.image, this.ytVideoPlayerContainer, FeedAdapter.f5980a);
        if (media.realmGet$image() != null) {
            this.image.setImageURI(Uri.parse(media.realmGet$image()));
        }
        this.btnLike.a(media.realmGet$url(), LikeView.ObjectType.OPEN_GRAPH);
        this.txtTitle.setText(media.realmGet$title());
        this.txtComments.setText("" + media.realmGet$comments_counter());
        this.btnVoteUp.setText("" + (media.realmGet$vote_score() < 0 ? 0 : media.realmGet$vote_score()));
        if (media.realmGet$is_favorite()) {
            this.btnFavorite.setImageDrawable(pl.jbzd.core.a.a.a(R.drawable.icon_favorite_on, this.btnFavorite.getContext()));
        } else {
            this.btnFavorite.setImageDrawable(pl.jbzd.core.a.a.a(R.drawable.icon_favorite_off, this.btnFavorite.getContext()));
        }
        if (media.realmGet$voted() == 1) {
            this.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_voted_up_background, this.btnVoteUp.getContext()));
        } else if (media.realmGet$voted() == -1) {
            this.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_light_background, this.btnVoteUp.getContext()));
        } else {
            this.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_light_background, this.btnVoteUp.getContext()));
        }
        if (this.image.getVisibility() != 0) {
            this.image.setVisibility(0);
        }
        if (this.btnShow != null && this.btnShow.getVisibility() != 0) {
            this.btnShow.setVisibility(0);
        }
        if (media.realmGet$height() > FeedAdapter.b && !media.isExpand) {
            this.imageContainer.getLayoutParams().height = FeedAdapter.c;
            this.btnExpand.setVisibility(0);
            return;
        }
        this.imageContainer.getLayoutParams().height = media.maxHeight;
        this.btnExpand.setVisibility(8);
    }
}
