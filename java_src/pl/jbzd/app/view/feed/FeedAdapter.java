package pl.jbzd.app.view.feed;

import android.net.Uri;
import android.os.SystemClock;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.Unbinder;
import com.commit451.youtubeextractor.YouTubeExtractionException;
import com.commit451.youtubeextractor.YouTubeExtractionResult;
import com.commit451.youtubeextractor.e;
import io.realm.l;
import java.util.ArrayList;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.EmptyApiCallback;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.User;
import pl.jbzd.app.ui.view.comment.CommentsAdapter;
import pl.jbzd.app.view.BaseActivity;
import pl.jbzd.app.view.feed.holders.EmptyViewHolder;
import pl.jbzd.app.view.feed.holders.GalleryViewHolder;
import pl.jbzd.app.view.feed.holders.NativeAdViewHolder;
import pl.jbzd.app.view.feed.holders.StandardViewHolder;
import pl.jbzd.app.view.feed.holders.UserViewHolder;
import pl.jbzd.app.view.feed.holders.d;
import pl.jbzd.b.b;
import pl.jbzd.core.ui.view.CenteredLikeButton;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes3.dex */
public class FeedAdapter extends pl.jbzd.core.ui.view.lce.c<pl.jbzd.app.view.feed.a.a, RecyclerView.u> {

    /* renamed from: a  reason: collision with root package name */
    public static int f5980a = -1;
    public static int b = -1;
    public static int c = -1;
    public BaseActivity d;
    private a g;
    private final b h;
    private long i;
    private UserViewHolder j;
    private int k;
    private int l;
    private int m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum a {
        MEDIA,
        COMMENTS
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(int i, int i2, int i3);

        void a(View view, Comment comment, int i);

        void a(View view, Media media, int i);

        void a(View view, Media media, int i, int i2);

        void a(View view, Media media, int i, boolean z);

        void a(View view, GalleryViewHolder galleryViewHolder, Media media, int i);

        void a(View view, StandardViewHolder<? extends pl.jbzd.app.view.feed.a.a> standardViewHolder, pl.jbzd.app.view.feed.a.c cVar, Media media, int i);

        void a(View view, pl.jbzd.app.view.feed.holders.a aVar, Media media, int i);

        void a(View view, pl.jbzd.app.view.feed.holders.b bVar, Media media, int i);

        void a(View view, d dVar, Media media, int i);

        boolean a(View view, Comment comment);

        void b(View view, Media media, int i);

        void c(View view, Media media, int i);
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(String str);
    }

    /* loaded from: classes3.dex */
    public class ErrorFirstViewHolder_ViewBinding implements Unbinder {
        private ErrorFirstViewHolder b;

        public ErrorFirstViewHolder_ViewBinding(ErrorFirstViewHolder errorFirstViewHolder, View view) {
            this.b = errorFirstViewHolder;
            errorFirstViewHolder.txt = (TextView) butterknife.internal.b.b(view, R.id.txt, "field 'txt'", TextView.class);
            errorFirstViewHolder.btn = (TextView) butterknife.internal.b.b(view, R.id.btn, "field 'btn'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            ErrorFirstViewHolder errorFirstViewHolder = this.b;
            if (errorFirstViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            errorFirstViewHolder.txt = null;
            errorFirstViewHolder.btn = null;
        }
    }

    /* loaded from: classes3.dex */
    public class ErrorPageViewHolder_ViewBinding implements Unbinder {
        private ErrorPageViewHolder b;

        public ErrorPageViewHolder_ViewBinding(ErrorPageViewHolder errorPageViewHolder, View view) {
            this.b = errorPageViewHolder;
            errorPageViewHolder.btn = (TextView) butterknife.internal.b.b(view, R.id.btn, "field 'btn'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            ErrorPageViewHolder errorPageViewHolder = this.b;
            if (errorPageViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            errorPageViewHolder.btn = null;
        }
    }

    /* loaded from: classes3.dex */
    public class LoadingFirstViewHolder_ViewBinding implements Unbinder {
        private LoadingFirstViewHolder b;

        public LoadingFirstViewHolder_ViewBinding(LoadingFirstViewHolder loadingFirstViewHolder, View view) {
            this.b = loadingFirstViewHolder;
            loadingFirstViewHolder.loader = (LoaderLayout) butterknife.internal.b.b(view, R.id.loader, "field 'loader'", LoaderLayout.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            LoadingFirstViewHolder loadingFirstViewHolder = this.b;
            if (loadingFirstViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            loadingFirstViewHolder.loader = null;
        }
    }

    /* loaded from: classes3.dex */
    public class LoadingPageViewHolder_ViewBinding implements Unbinder {
        private LoadingPageViewHolder b;

        public LoadingPageViewHolder_ViewBinding(LoadingPageViewHolder loadingPageViewHolder, View view) {
            this.b = loadingPageViewHolder;
            loadingPageViewHolder.loader = (LoaderLayout) butterknife.internal.b.b(view, R.id.loader, "field 'loader'", LoaderLayout.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            LoadingPageViewHolder loadingPageViewHolder = this.b;
            if (loadingPageViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            loadingPageViewHolder.loader = null;
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadingFirstViewHolder extends pl.jbzd.core.b {
        @BindView
        LoaderLayout loader;

        public LoadingFirstViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadingPageViewHolder extends pl.jbzd.core.b {
        @BindView
        LoaderLayout loader;

        public LoadingPageViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class ErrorFirstViewHolder extends pl.jbzd.core.b {
        @BindView
        TextView btn;
        @BindView
        TextView txt;

        public ErrorFirstViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes3.dex */
    public static class ErrorPageViewHolder extends pl.jbzd.core.b {
        @BindView
        TextView btn;

        public ErrorPageViewHolder(View view) {
            super(view);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedAdapter(BaseActivity baseActivity, RecyclerView recyclerView, pl.jbzd.core.ui.b.a aVar, b bVar, ArrayList<pl.jbzd.app.view.feed.a.a> arrayList, int i, int i2) {
        super(arrayList);
        int i3 = 0;
        this.i = 0L;
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.d = baseActivity;
        setHasStableIds(true);
        this.h = bVar;
        this.k = i;
        this.l = i2 >= 1 ? i2 : i3;
        this.g = a.MEDIA;
        this.m = ((i2 - 1) / 8) + 1;
        if (this.m < 1) {
            this.m = 1;
        }
        if (bVar == null) {
            throw new IllegalArgumentException("OnItemClickListener cannot be null");
        }
        b = (int) Math.max(pl.jbzd.core.a.a.a(baseActivity) * 0.8d, 800.0d);
        c = b;
        f5980a = pl.jbzd.core.a.a.b(baseActivity) - FeedFragment.b;
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public long getItemId(int i) {
        pl.jbzd.app.view.feed.a.a aVar = (this.f == null || i >= this.f.size()) ? null : (pl.jbzd.app.view.feed.a.a) this.f.get(i);
        if (aVar != null) {
            if (aVar.f6023a instanceof Media) {
                if (FeedViewType.getIdByName(((Media) aVar.f6023a).realmGet$type()) == FeedViewType.AD.id) {
                    return (-FeedViewType.FIRST_AD.id) - i;
                }
                return ((Media) aVar.f6023a).realmGet$id();
            } else if (aVar.f6023a instanceof Comment) {
                return ((Comment) aVar.f6023a).realmGet$id();
            } else {
                if (aVar.f6023a instanceof User) {
                    return (-FeedViewType.UNKNOWN.id) - ((User) aVar.f6023a).realmGet$id();
                }
            }
        }
        return -FeedViewType.UNKNOWN.id;
    }

    @Override // pl.jbzd.core.ui.view.lce.c
    public int a(int i) {
        pl.jbzd.app.view.feed.a.a aVar = (this.f == null || i >= this.f.size()) ? null : (pl.jbzd.app.view.feed.a.a) this.f.get(i);
        if (aVar != null) {
            if (aVar.f6023a instanceof Media) {
                return FeedViewType.getIdByName(((Media) ((pl.jbzd.app.view.feed.a.a) this.f.get(i)).f6023a).realmGet$type());
            }
            if (aVar.f6023a instanceof Comment) {
                return FeedViewType.COMMENT.id;
            }
            if (aVar.f6023a instanceof User) {
                return FeedViewType.USER_PROFILE.id;
            }
        }
        return FeedViewType.UNKNOWN.id;
    }

    @Override // pl.jbzd.core.ui.view.lce.c
    public RecyclerView.u a(ViewGroup viewGroup, int i) {
        if (i == FeedViewType.PICTURE.id) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_picture, viewGroup, false);
            pl.jbzd.app.view.feed.holders.b bVar = new pl.jbzd.app.view.feed.holders.b(inflate);
            a(inflate, bVar);
            return bVar;
        } else if (i == FeedViewType.GIF.id) {
            View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_gif, viewGroup, false);
            pl.jbzd.app.view.feed.holders.a aVar = new pl.jbzd.app.view.feed.holders.a(inflate2);
            a(inflate2, aVar);
            return aVar;
        } else if (i == FeedViewType.VIDEO.id) {
            View inflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_video, viewGroup, false);
            d dVar = new d(inflate3);
            a(inflate3, dVar);
            return dVar;
        } else if (i == FeedViewType.GALLERY.id) {
            View inflate4 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_gallery, viewGroup, false);
            GalleryViewHolder galleryViewHolder = new GalleryViewHolder(inflate4);
            a(inflate4, galleryViewHolder);
            return galleryViewHolder;
        } else if (i == FeedViewType.COMMENT.id) {
            View inflate5 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_comments_row, viewGroup, false);
            CommentsAdapter.CommentViewHolder commentViewHolder = new CommentsAdapter.CommentViewHolder(inflate5);
            a(inflate5, commentViewHolder);
            commentViewHolder.a();
            return commentViewHolder;
        } else if (i == FeedViewType.USER_PROFILE.id) {
            View inflate6 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_user_profile, viewGroup, false);
            UserViewHolder userViewHolder = new UserViewHolder(inflate6);
            a(inflate6, userViewHolder);
            return userViewHolder;
        } else if (i == FeedViewType.AD.id) {
            return new NativeAdViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_ad_default, viewGroup, false));
        } else {
            if (i == FeedViewType.EMPTY.id) {
                View inflate7 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_empty, viewGroup, false);
                ((TextView) inflate7.findViewById(R.id.txt)).setText(R.string.loading_kwejki);
                return new EmptyViewHolder(inflate7);
            }
            return new pl.jbzd.app.view.feed.holders.c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_item_unknown, viewGroup, false));
        }
    }

    @Override // pl.jbzd.core.ui.view.lce.c
    public void a(RecyclerView.u uVar, int i, int i2) {
        if (uVar instanceof StandardViewHolder) {
            ((StandardViewHolder) uVar).a((pl.jbzd.app.view.feed.a.a) this.f.get(i2));
            if (this.k < i2) {
                this.k = i2;
                this.l++;
                int i3 = ((this.l - 1) / 8) + 1;
                if (i3 < 1) {
                    i3 = 1;
                }
                if (this.m < i3 && this.h != null) {
                    this.m = i3;
                    this.h.a(this.k, this.l, this.m);
                }
            }
        } else if (i == FeedViewType.COMMENT.id) {
            ((CommentsAdapter.CommentViewHolder) uVar).a((Comment) ((pl.jbzd.app.view.feed.a.a) this.f.get(i2)).f6023a);
        } else if (i == FeedViewType.USER_PROFILE.id) {
            ((UserViewHolder) uVar).a((User) ((pl.jbzd.app.view.feed.a.a) this.f.get(i2)).f6023a);
        } else if (i == FeedViewType.EMPTY.id) {
            if (((pl.jbzd.app.view.feed.a.a) this.f.get(i2)).f6023a instanceof Media) {
                Media media = (Media) ((pl.jbzd.app.view.feed.a.a) this.f.get(i2)).f6023a;
                if (media.realmGet$title() != null && !media.realmGet$title().isEmpty()) {
                    ((EmptyViewHolder) uVar).txt.setText(media.realmGet$title());
                }
            }
        } else if (i == FeedViewType.AD.id) {
            FrameLayout frameLayout = ((NativeAdViewHolder) uVar).layout;
            View b2 = pl.jbzd.a.b.a().b();
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (b2 != null) {
                if (b2.getParent() != null) {
                    ((ViewGroup) b2.getParent()).removeView(b2);
                }
                frameLayout.addView(b2);
                ((NativeAdViewHolder) uVar).a(b2);
            }
        }
    }

    public void a(User user) {
        User user2 = (this.f.isEmpty() || this.f.get(0) == null || ((pl.jbzd.app.view.feed.a.a) this.f.get(0)).f6023a == null || !(((pl.jbzd.app.view.feed.a.a) this.f.get(0)).f6023a instanceof User)) ? null : (User) ((pl.jbzd.app.view.feed.a.a) this.f.get(0)).f6023a;
        if (user2 == null) {
            this.f.add(0, new pl.jbzd.app.view.feed.a.a(user));
            notifyItemInserted(0);
        } else if (user2.realmGet$id() != user.realmGet$id()) {
            this.f.set(0, new pl.jbzd.app.view.feed.a.a(user));
            notifyItemChanged(0);
        }
    }

    public boolean a() {
        return ((this.f.isEmpty() || this.f.get(0) == null || ((pl.jbzd.app.view.feed.a.a) this.f.get(0)).f6023a == null || !(((pl.jbzd.app.view.feed.a.a) this.f.get(0)).f6023a instanceof User)) ? null : (User) ((pl.jbzd.app.view.feed.a.a) this.f.get(0)).f6023a) != null;
    }

    public a b() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(int i) {
        int size = this.f.size();
        return size > 0 && i < size && i >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        if (SystemClock.elapsedRealtime() - this.i < 1000) {
            return false;
        }
        this.i = SystemClock.elapsedRealtime();
        return true;
    }

    private void a(View view, final StandardViewHolder standardViewHolder) {
        standardViewHolder.txtComments.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(standardViewHolder.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.a(view2, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(standardViewHolder.getAdapterPosition())).f6023a, standardViewHolder.getAdapterPosition());
                }
            }
        });
        standardViewHolder.btnFavorite.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Media media;
                boolean z = false;
                if (pl.jbzd.core.a.a.c(view2.getContext())) {
                    if (FeedAdapter.this.c(standardViewHolder.getAdapterPosition()) && FeedAdapter.this.o() && (media = (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(standardViewHolder.getAdapterPosition())).f6023a) != null) {
                        if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
                            FeedAdapter.this.h.b(view2, media, standardViewHolder.getAdapterPosition());
                            return;
                        }
                        Media media2 = (Media) l.k().a(Media.class).a("id", Integer.valueOf(media.realmGet$id())).c();
                        l.k().b();
                        if (!media.realmGet$is_favorite()) {
                            z = true;
                        }
                        media.realmSet$is_favorite(z);
                        media2.setIs_favorite(media.realmGet$is_favorite());
                        l.k().c();
                        if (media.realmGet$is_favorite()) {
                            standardViewHolder.btnFavorite.setImageDrawable(pl.jbzd.core.a.a.a(R.drawable.icon_favorite_on, standardViewHolder.btnFavorite.getContext()));
                        } else {
                            standardViewHolder.btnFavorite.setImageDrawable(pl.jbzd.core.a.a.a(R.drawable.icon_favorite_off, standardViewHolder.btnFavorite.getContext()));
                        }
                        FeedAdapter.this.h.b(view2, media, standardViewHolder.getAdapterPosition());
                        return;
                    }
                    return;
                }
                Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
            }
        });
        standardViewHolder.btnVoteUp.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Media media;
                if (pl.jbzd.core.a.a.c(view2.getContext())) {
                    if (FeedAdapter.this.c(standardViewHolder.getAdapterPosition()) && (media = (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(standardViewHolder.getAdapterPosition())).f6023a) != null && media.realmGet$voted() != 1) {
                        Media media2 = (Media) l.k().a(Media.class).a("id", Integer.valueOf(media.realmGet$id())).c();
                        l.k().b();
                        media2.setVote_score(media2.realmGet$vote_score() + 1);
                        media2.setVoted(1);
                        media.realmSet$vote_score(media2.realmGet$vote_score());
                        media.realmSet$voted(media2.realmGet$voted());
                        l.k().c();
                        standardViewHolder.btnVoteUp.setText("" + (media.realmGet$vote_score() < 0 ? 0 : media.realmGet$vote_score()));
                        standardViewHolder.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_voted_up_background, standardViewHolder.btnVoteUp.getContext()));
                        FeedAdapter.this.h.a(view2, media, standardViewHolder.getAdapterPosition(), 1);
                        return;
                    }
                    return;
                }
                Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
            }
        });
        standardViewHolder.btnMore.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(standardViewHolder.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.c(view2, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(standardViewHolder.getAdapterPosition())).f6023a, standardViewHolder.getAdapterPosition());
                }
            }
        });
        standardViewHolder.btnExpand.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(standardViewHolder.getAdapterPosition()) && FeedAdapter.this.o()) {
                    Media media = (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(standardViewHolder.getAdapterPosition())).f6023a;
                    media.isExpand = true;
                    standardViewHolder.imageContainer.getLayoutParams().height = media.maxHeight;
                    standardViewHolder.btnExpand.setVisibility(8);
                }
            }
        });
        standardViewHolder.btnLike.setOnLikeClickListener(new CenteredLikeButton.c() { // from class: pl.jbzd.app.view.feed.FeedAdapter.15
            @Override // pl.jbzd.core.ui.view.CenteredLikeButton.c
            public void a(View view2, boolean z) {
                if (FeedAdapter.this.c(standardViewHolder.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.a(view2, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(standardViewHolder.getAdapterPosition())).f6023a, standardViewHolder.getAdapterPosition(), z);
                }
            }
        });
    }

    private void a(View view, final pl.jbzd.app.view.feed.holders.b bVar) {
        a(view, (StandardViewHolder) bVar);
        bVar.image.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(bVar.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.a(view2, bVar, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(bVar.getAdapterPosition())).f6023a, bVar.getAdapterPosition());
                }
            }
        });
    }

    private void a(final View view, final pl.jbzd.app.view.feed.holders.a aVar) {
        a(view, (StandardViewHolder) aVar);
        final b.a aVar2 = new b.a() { // from class: pl.jbzd.app.view.feed.FeedAdapter.17
            @Override // pl.jbzd.b.b.a
            public void a(View view2, String str) {
                aVar.image.setVisibility(8);
                if (aVar.btnShow != null) {
                    aVar.btnShow.setVisibility(8);
                }
                if (aVar.progressView != null) {
                    aVar.progressView.setVisibility(8);
                }
                if (aVar.ytVideoPlayerContainer != null) {
                    aVar.ytVideoPlayerContainer.setVisibility(0);
                }
            }

            @Override // pl.jbzd.b.b.a
            public void b(View view2, String str) {
                aVar.image.setVisibility(0);
                if (aVar.btnShow != null) {
                    aVar.btnShow.setVisibility(0);
                }
                if (aVar.progressView != null) {
                    aVar.progressView.setVisibility(8);
                }
                if (aVar.ytVideoPlayerContainer != null) {
                    aVar.ytVideoPlayerContainer.setVisibility(4);
                }
            }

            @Override // pl.jbzd.b.b.a
            public void a(View view2, String str, String str2) {
                Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
            }
        };
        final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(aVar.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.a(view, aVar, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(aVar.getAdapterPosition())).f6023a, aVar.getAdapterPosition());
                }
            }
        };
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (pl.jbzd.core.a.a.c(view.getContext())) {
                    if (FeedAdapter.this.c(aVar.getAdapterPosition()) && FeedAdapter.this.o()) {
                        pl.jbzd.app.view.feed.a.c cVar = (pl.jbzd.app.view.feed.a.c) FeedAdapter.this.f.get(aVar.getAdapterPosition());
                        FeedAdapter.this.h.a(view, aVar, cVar, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(aVar.getAdapterPosition())).f6023a, aVar.getAdapterPosition());
                        cVar.a(aVar.ytVideoPlayerContainer, aVar2, onClickListener);
                        return;
                    }
                    return;
                }
                Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
            }
        };
        aVar.image.setOnClickListener(onClickListener2);
        if (aVar.btnShow != null) {
            aVar.btnShow.setOnClickListener(onClickListener2);
        }
    }

    private void a(final View view, final d dVar) {
        a(view, (StandardViewHolder) dVar);
        final b.a aVar = new b.a() { // from class: pl.jbzd.app.view.feed.FeedAdapter.3
            @Override // pl.jbzd.b.b.a
            public void a(View view2, String str) {
                dVar.image.setVisibility(8);
                if (dVar.btnShow != null) {
                    dVar.btnShow.setVisibility(8);
                }
                if (dVar.progressView != null) {
                    dVar.progressView.setVisibility(8);
                }
                if (dVar.ytVideoPlayerContainer != null) {
                    dVar.ytVideoPlayerContainer.setVisibility(0);
                }
            }

            @Override // pl.jbzd.b.b.a
            public void b(View view2, String str) {
                dVar.image.setVisibility(0);
                if (dVar.btnShow != null) {
                    dVar.btnShow.setVisibility(0);
                }
                if (dVar.progressView != null) {
                    dVar.progressView.setVisibility(8);
                }
                if (dVar.ytVideoPlayerContainer != null) {
                    dVar.ytVideoPlayerContainer.setVisibility(4);
                }
            }

            @Override // pl.jbzd.b.b.a
            public void a(View view2, String str, String str2) {
                Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
            }
        };
        final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(dVar.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.a(view, dVar, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(dVar.getAdapterPosition())).f6023a, dVar.getAdapterPosition());
                }
            }
        };
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (pl.jbzd.core.a.a.c(view2.getContext())) {
                    if (FeedAdapter.this.c(dVar.getAdapterPosition()) && FeedAdapter.this.o()) {
                        final pl.jbzd.app.view.feed.a.c cVar = (pl.jbzd.app.view.feed.a.c) FeedAdapter.this.f.get(dVar.getAdapterPosition());
                        final Media media = (Media) cVar.f6023a;
                        FeedAdapter.this.h.a(view2, dVar, cVar, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(dVar.getAdapterPosition())).f6023a, dVar.getAdapterPosition());
                        if (media.realmGet$youtube() != null && !media.realmGet$youtube().isEmpty()) {
                            int indexOf = media.realmGet$youtube().trim().indexOf("&");
                            if (indexOf != -1) {
                                media.realmSet$youtube(media.realmGet$youtube().substring(0, indexOf).trim());
                            }
                            int indexOf2 = media.realmGet$youtube().trim().indexOf("?");
                            if (indexOf2 != -1) {
                                media.realmSet$youtube(media.realmGet$youtube().substring(0, indexOf2).trim());
                            }
                            e.b().a(media.realmGet$youtube()).enqueue(new Callback<YouTubeExtractionResult>() { // from class: pl.jbzd.app.view.feed.FeedAdapter.5.1
                                @Override // retrofit2.Callback
                                public void onResponse(Call<YouTubeExtractionResult> call, Response<YouTubeExtractionResult> response) {
                                    Uri e = (response == null || response.body() == null) ? null : response.body().e();
                                    if (e != null) {
                                        media.realmSet$movie(e.toString());
                                    }
                                    if (dVar.ytVideoPlayerContainer != null) {
                                        dVar.ytVideoPlayerContainer.setVisibility(8);
                                    }
                                    cVar.a(dVar.ytVideoPlayerContainer, aVar, onClickListener);
                                }

                                @Override // retrofit2.Callback
                                public void onFailure(Call<YouTubeExtractionResult> call, Throwable th) {
                                    th.printStackTrace();
                                    int i = -1;
                                    if (th instanceof YouTubeExtractionException) {
                                        i = ((YouTubeExtractionException) th).errorCode;
                                    }
                                    if (i == 100) {
                                        cVar.c();
                                        if (FeedAdapter.this.d != null && !FeedAdapter.this.d.isFinishing()) {
                                            Toast.makeText(FeedAdapter.this.d, (int) R.string.error_yt_video_removed, 0).show();
                                            return;
                                        }
                                        return;
                                    }
                                    cVar.a(dVar.ytVideoPlayerContainer, aVar, onClickListener);
                                }
                            });
                            return;
                        }
                        cVar.a(dVar.ytVideoPlayerContainer, aVar, onClickListener);
                        return;
                    }
                    return;
                }
                Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
            }
        };
        dVar.image.setOnClickListener(onClickListener2);
        if (dVar.btnShow != null) {
            dVar.btnShow.setOnClickListener(onClickListener2);
        }
    }

    private void a(View view, final GalleryViewHolder galleryViewHolder) {
        a(view, (StandardViewHolder) galleryViewHolder);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(galleryViewHolder.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.a(view2, galleryViewHolder, (Media) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(galleryViewHolder.getAdapterPosition())).f6023a, galleryViewHolder.getAdapterPosition());
                }
            }
        };
        galleryViewHolder.image.setOnClickListener(onClickListener);
        galleryViewHolder.btnShow.setOnClickListener(onClickListener);
    }

    private void a(final View view, final CommentsAdapter.CommentViewHolder commentViewHolder) {
        commentViewHolder.btnVoteUp.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int i = 0;
                int size = FeedAdapter.this.f.size();
                if (size > 0 && commentViewHolder.getAdapterPosition() < size && commentViewHolder.getAdapterPosition() >= 0) {
                    if (pl.jbzd.core.a.a.c(view2.getContext())) {
                        pl.jbzd.app.view.feed.a.a aVar = (pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(commentViewHolder.getAdapterPosition());
                        Comment comment = (aVar == null || aVar.f6023a == null || !(aVar.f6023a instanceof Comment)) ? null : (Comment) aVar.f6023a;
                        if (comment != null && comment.realmGet$voted() != 1) {
                            Comment comment2 = (Comment) l.k().a(Comment.class).a("id", Integer.valueOf(comment.realmGet$id())).c();
                            l.k().b();
                            comment.setPlus(comment.realmGet$plus() + 1);
                            if (comment.realmGet$voted() == -1) {
                                comment.setMinus(Math.max(comment.realmGet$minus() - 1, 0));
                            }
                            comment.setVoted(1);
                            if (comment2 != null && comment2 != comment) {
                                comment2.setPlus(comment2.realmGet$plus() + 1);
                                if (comment2.realmGet$voted() == -1) {
                                    comment2.setMinus(Math.max(comment2.realmGet$minus() - 1, 0));
                                }
                                comment2.setVoted(1);
                            }
                            l.k().c();
                            commentViewHolder.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_voted_up_background, commentViewHolder.btnVoteUp.getContext()));
                            TextView textView = commentViewHolder.votes;
                            StringBuilder append = new StringBuilder().append(comment.realmGet$plus() < 0 ? 0 : comment.realmGet$plus()).append(" / ");
                            if (comment.realmGet$minus() >= 0) {
                                i = comment.realmGet$minus();
                            }
                            textView.setText(append.append(i).toString());
                            FeedAdapter.this.h.a(commentViewHolder.btnVoteUp, comment, 1);
                            ApiClient.getApiService().comment_vote(comment.realmGet$id(), "up").enqueue(new EmptyApiCallback());
                            return;
                        }
                        return;
                    }
                    Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
                }
            }
        });
        commentViewHolder.btnNotice.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (FeedAdapter.this.c(commentViewHolder.getAdapterPosition()) && FeedAdapter.this.o()) {
                    FeedAdapter.this.h.a(view, (Comment) ((pl.jbzd.app.view.feed.a.a) FeedAdapter.this.f.get(commentViewHolder.getAdapterPosition())).f6023a);
                }
            }
        });
    }

    private void a(View view, UserViewHolder userViewHolder) {
        this.j = userViewHolder;
    }

    @Override // pl.jbzd.core.ui.view.lce.c
    public int[] c() {
        return new int[]{1, 2, 4, 8, 16};
    }

    @Override // pl.jbzd.core.ui.view.lce.c
    public RecyclerView.u b(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new EmptyViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_empty, viewGroup, false));
        }
        if (i == 2) {
            return new LoadingFirstViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_load_first, viewGroup, false));
        }
        if (i == 4) {
            return new LoadingPageViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_load_page, viewGroup, false));
        }
        if (i == 8) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_error_first, viewGroup, false);
            new ErrorFirstViewHolder(inflate).btn.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FeedAdapter.this.k();
                }
            });
            return new ErrorFirstViewHolder(inflate);
        } else if (i == 16) {
            ErrorPageViewHolder errorPageViewHolder = new ErrorPageViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_error_page, viewGroup, false));
            errorPageViewHolder.btn.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.view.feed.FeedAdapter.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    FeedAdapter.this.k();
                }
            });
            return errorPageViewHolder;
        } else {
            return null;
        }
    }

    public pl.jbzd.app.view.feed.a.a b(int i) {
        if (this.f == null || i < 0 || i >= this.f.size()) {
            return null;
        }
        return (pl.jbzd.app.view.feed.a.a) this.f.get(i);
    }

    public int d() {
        if (this.f != null) {
            return this.f.size();
        }
        return 0;
    }

    public int e() {
        return this.k;
    }

    public int f() {
        return this.l;
    }
}
