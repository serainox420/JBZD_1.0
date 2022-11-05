package pl.jbzd.app.ui.view.comment;

import android.content.Context;
import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.Unbinder;
import com.facebook.drawee.view.SimpleDraweeView;
import io.realm.l;
import java.util.ArrayList;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.SimpleApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.CommentResponse;
import pl.jbzd.app.model.Comment;
import pl.jbzd.core.a.f;
import pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter;
import pl.jbzd.core.ui.view.LoaderLayout;
import pl.jbzd.core.ui.view.TextView;
/* loaded from: classes3.dex */
public class CommentsAdapter extends EndlessRecyclerViewAdapter<Comment> {
    private b c;
    private a d;

    /* loaded from: classes3.dex */
    public interface a {
        void a(View view, Comment comment, int i);
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(View view, Comment comment, int i);

        void a(View view, Comment comment, int i, int i2);

        void a(CommentResponse commentResponse, int i, int i2);

        void b(View view, Comment comment, int i);

        void c(View view, Comment comment, int i);

        void d(View view, Comment comment, int i);
    }

    /* loaded from: classes3.dex */
    public class EmptyViewHolder_ViewBinding implements Unbinder {
        private EmptyViewHolder b;

        public EmptyViewHolder_ViewBinding(EmptyViewHolder emptyViewHolder, View view) {
            this.b = emptyViewHolder;
            emptyViewHolder.txt = (TextView) butterknife.internal.b.b(view, R.id.txt, "field 'txt'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            EmptyViewHolder emptyViewHolder = this.b;
            if (emptyViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            emptyViewHolder.txt = null;
        }
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
    public class CommentViewHolder_ViewBinding implements Unbinder {
        private CommentViewHolder b;

        public CommentViewHolder_ViewBinding(CommentViewHolder commentViewHolder, View view) {
            this.b = commentViewHolder;
            commentViewHolder.avatar = (SimpleDraweeView) butterknife.internal.b.b(view, R.id.avatar, "field 'avatar'", SimpleDraweeView.class);
            commentViewHolder.btnVoteUp = (ImageView) butterknife.internal.b.b(view, R.id.btnVoteUp, "field 'btnVoteUp'", ImageView.class);
            commentViewHolder.btnVoteDown = (ImageView) butterknife.internal.b.b(view, R.id.btnVoteDown, "field 'btnVoteDown'", ImageView.class);
            commentViewHolder.votes = (TextView) butterknife.internal.b.b(view, R.id.votes, "field 'votes'", TextView.class);
            commentViewHolder.username = (TextView) butterknife.internal.b.b(view, R.id.username, "field 'username'", TextView.class);
            commentViewHolder.time = (TextView) butterknife.internal.b.b(view, R.id.time, "field 'time'", TextView.class);
            commentViewHolder.comment = (TextView) butterknife.internal.b.b(view, R.id.comment, "field 'comment'", TextView.class);
            commentViewHolder.btnNotice = (TextView) butterknife.internal.b.b(view, R.id.btnNotice, "field 'btnNotice'", TextView.class);
            commentViewHolder.btnReply = (TextView) butterknife.internal.b.b(view, R.id.btnReply, "field 'btnReply'", TextView.class);
            commentViewHolder.btnShowReplies = (TextView) butterknife.internal.b.a(view, R.id.btnShowReplies, "field 'btnShowReplies'", TextView.class);
        }

        @Override // butterknife.Unbinder
        public void a() {
            CommentViewHolder commentViewHolder = this.b;
            if (commentViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.b = null;
            commentViewHolder.avatar = null;
            commentViewHolder.btnVoteUp = null;
            commentViewHolder.btnVoteDown = null;
            commentViewHolder.votes = null;
            commentViewHolder.username = null;
            commentViewHolder.time = null;
            commentViewHolder.comment = null;
            commentViewHolder.btnNotice = null;
            commentViewHolder.btnReply = null;
            commentViewHolder.btnShowReplies = null;
        }
    }

    /* loaded from: classes3.dex */
    public static class CommentViewHolder<T extends Comment> extends pl.jbzd.core.ui.view.a<T> {
        @BindView
        public SimpleDraweeView avatar;
        @BindView
        public TextView btnNotice;
        @BindView
        public TextView btnReply;
        @BindView
        public TextView btnShowReplies;
        @BindView
        public ImageView btnVoteDown;
        @BindView
        public ImageView btnVoteUp;
        @BindView
        public TextView comment;
        @BindView
        public TextView time;
        @BindView
        public TextView username;
        @BindView
        public TextView votes;

        public CommentViewHolder(View view) {
            super(view);
        }

        public void a(T t) {
            this.votes.setText(t.realmGet$plus() + " / " + t.realmGet$minus());
            this.username.setText(t.realmGet$user() != null ? t.realmGet$user().realmGet$username() : "Anonimowy");
            this.time.setText(f.a(t.realmGet$created_at()));
            this.comment.setText(t.realmGet$comment());
            if (this.btnShowReplies != null) {
                this.btnShowReplies.setVisibility((!t.realmGet$replies().isEmpty() || t.showReplies) ? 0 : 8);
            }
            if (t.realmGet$voted() == 1) {
                this.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_voted_up_background_g, this.btnVoteUp.getContext()));
                this.btnVoteDown.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_background, this.btnVoteDown.getContext()));
            } else if (t.realmGet$voted() == -1) {
                this.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_background, this.btnVoteUp.getContext()));
                this.btnVoteDown.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_voted_down_background, this.btnVoteDown.getContext()));
            } else {
                this.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_background, this.btnVoteUp.getContext()));
                this.btnVoteDown.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_background, this.btnVoteDown.getContext()));
            }
            if (t.realmGet$user() != null && t.realmGet$user().realmGet$avatar() != null && !t.realmGet$user().realmGet$avatar().isEmpty()) {
                this.avatar.getHierarchy().setPlaceholderImage(R.drawable.avatar);
                this.avatar.setImageURI(Uri.parse(t.realmGet$user().realmGet$avatar()));
                return;
            }
            this.avatar.getHierarchy().setPlaceholderImage(R.drawable.avatar);
        }

        public void a() {
            this.btnReply.setVisibility(8);
            if (this.btnShowReplies != null) {
                this.btnShowReplies.setVisibility(8);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class EmptyViewHolder extends pl.jbzd.core.b {
        @BindView
        TextView txt;

        public EmptyViewHolder(View view) {
            super(view);
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

    public CommentsAdapter(Context context, RecyclerView recyclerView, pl.jbzd.core.ui.b.a aVar, a aVar2, ArrayList<Comment> arrayList) {
        super(recyclerView, aVar, arrayList);
        setHasStableIds(true);
        this.d = aVar2;
    }

    @Override // pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter
    public RecyclerView.u a(ViewGroup viewGroup, int i) {
        if (i == CommentViewType.COMMENT.id || i == CommentViewType.COMMENT_REPLIES.id) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_comments_row_replies, viewGroup, false);
            CommentViewHolder commentViewHolder = new CommentViewHolder(inflate);
            a(inflate, commentViewHolder);
            return commentViewHolder;
        } else if (i != CommentViewType.COMMENT_SUBCOMMENT.id) {
            return null;
        } else {
            View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_comments_row_subcomment, viewGroup, false);
            CommentViewHolder commentViewHolder2 = new CommentViewHolder(inflate2);
            a(inflate2, commentViewHolder2);
            return commentViewHolder2;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.a
    public long getItemId(int i) {
        return ((this.b == null || i >= this.b.size()) ? null : (Comment) this.b.get(i)) == null ? -getItemViewType(i) : ((Comment) this.b.get(i)).realmGet$id();
    }

    private void a(View view, final CommentViewHolder commentViewHolder) {
        commentViewHolder.avatar.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int size = CommentsAdapter.this.b.size();
                if (CommentsAdapter.this.c != null && size > 0 && commentViewHolder.getAdapterPosition() < size && commentViewHolder.getAdapterPosition() >= 0) {
                    CommentsAdapter.this.c.a(view2, (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition()), commentViewHolder.getAdapterPosition());
                }
            }
        });
        commentViewHolder.username.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int size = CommentsAdapter.this.b.size();
                if (CommentsAdapter.this.c != null && size > 0 && commentViewHolder.getAdapterPosition() < size && commentViewHolder.getAdapterPosition() >= 0) {
                    CommentsAdapter.this.c.b(view2, (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition()), commentViewHolder.getAdapterPosition());
                }
            }
        });
        commentViewHolder.btnVoteUp.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Comment comment;
                int i = 0;
                int size = CommentsAdapter.this.b.size();
                if (size > 0 && commentViewHolder.getAdapterPosition() < size && commentViewHolder.getAdapterPosition() >= 0) {
                    if (pl.jbzd.core.a.a.c(view2.getContext())) {
                        Comment comment2 = (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition());
                        if (comment2 != null && comment2.realmGet$voted() == 0 && (comment = (Comment) l.k().a(Comment.class).a("id", Integer.valueOf(comment2.realmGet$id())).c()) != null) {
                            l.k().b();
                            comment.setPlus(comment.realmGet$plus() + 1);
                            comment2.setPlus(comment2.realmGet$plus() + 1);
                            if (comment.realmGet$voted() == -1) {
                                comment.setMinus(Math.max(comment.realmGet$minus() - 1, 0));
                                comment2.setMinus(Math.max(comment2.realmGet$minus() - 1, 0));
                            }
                            comment.setVoted(1);
                            comment2.setVoted(1);
                            l.k().c();
                            commentViewHolder.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_voted_up_background_g, commentViewHolder.btnVoteUp.getContext()));
                            commentViewHolder.btnVoteDown.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_background, commentViewHolder.btnVoteDown.getContext()));
                            TextView textView = commentViewHolder.votes;
                            StringBuilder append = new StringBuilder().append(comment.realmGet$plus() < 0 ? 0 : comment.realmGet$plus()).append(" / ");
                            if (comment.realmGet$minus() >= 0) {
                                i = comment.realmGet$minus();
                            }
                            textView.setText(append.append(i).toString());
                            if (CommentsAdapter.this.c != null) {
                                CommentsAdapter.this.c.a(view2, comment, commentViewHolder.getAdapterPosition(), 1);
                            }
                            ApiClient.getApiService().comment_vote(comment.realmGet$id(), "up").enqueue(new SimpleApiCallback<CommentResponse>() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.3.1
                                @Override // pl.jbzd.api.callback.SimpleApiCallback
                                /* renamed from: a */
                                public void onSuccess(CommentResponse commentResponse) {
                                    if (CommentsAdapter.this.c != null) {
                                        CommentsAdapter.this.c.a(commentResponse, commentViewHolder.getAdapterPosition(), 1);
                                    }
                                }

                                @Override // pl.jbzd.api.callback.SimpleApiCallback
                                public void onError(ApiException apiException) {
                                }
                            });
                            return;
                        }
                        return;
                    }
                    Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
                }
            }
        });
        commentViewHolder.btnVoteDown.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int i = 0;
                int size = CommentsAdapter.this.b.size();
                if (size > 0 && commentViewHolder.getAdapterPosition() < size && commentViewHolder.getAdapterPosition() >= 0) {
                    if (pl.jbzd.core.a.a.c(view2.getContext())) {
                        Comment comment = (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition());
                        if (comment != null && comment.realmGet$voted() == 0) {
                            Comment comment2 = (Comment) l.k().a(Comment.class).a("id", Integer.valueOf(comment.realmGet$id())).c();
                            l.k().b();
                            comment2.setMinus(comment2.realmGet$minus() + 1);
                            comment.setMinus(comment.realmGet$minus() + 1);
                            if (comment2.realmGet$voted() == 1) {
                                comment2.setPlus(Math.max(comment2.realmGet$plus() - 1, 0));
                                comment.setPlus(Math.max(comment.realmGet$plus() - 1, 0));
                            }
                            comment2.setVoted(-1);
                            comment.setVoted(-1);
                            l.k().c();
                            commentViewHolder.btnVoteUp.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_vote_background, commentViewHolder.btnVoteUp.getContext()));
                            commentViewHolder.btnVoteDown.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_voted_down_background, commentViewHolder.btnVoteDown.getContext()));
                            TextView textView = commentViewHolder.votes;
                            StringBuilder append = new StringBuilder().append(comment2.realmGet$plus() < 0 ? 0 : comment2.realmGet$plus()).append(" / ");
                            if (comment2.realmGet$minus() >= 0) {
                                i = comment2.realmGet$minus();
                            }
                            textView.setText(append.append(i).toString());
                            if (CommentsAdapter.this.c != null) {
                                CommentsAdapter.this.c.a(view2, (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition()), commentViewHolder.getAdapterPosition(), -1);
                            }
                            ApiClient.getApiService().comment_vote(comment2.realmGet$id(), "down").enqueue(new SimpleApiCallback<CommentResponse>() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.4.1
                                @Override // pl.jbzd.api.callback.SimpleApiCallback
                                /* renamed from: a */
                                public void onSuccess(CommentResponse commentResponse) {
                                    if (CommentsAdapter.this.c != null) {
                                        CommentsAdapter.this.c.a(commentResponse, commentViewHolder.getAdapterPosition(), -1);
                                    }
                                }

                                @Override // pl.jbzd.api.callback.SimpleApiCallback
                                public void onError(ApiException apiException) {
                                }
                            });
                            return;
                        }
                        return;
                    }
                    Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
                }
            }
        });
        commentViewHolder.btnReply.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int size = CommentsAdapter.this.b.size();
                if (size > 0 && commentViewHolder.getAdapterPosition() < size && commentViewHolder.getAdapterPosition() >= 0) {
                    if (pl.jbzd.core.a.a.c(view2.getContext())) {
                        CommentsAdapter.this.d.a(view2, (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition()), commentViewHolder.getAdapterPosition());
                        if (CommentsAdapter.this.c != null) {
                            CommentsAdapter.this.c.c(view2, (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition()), commentViewHolder.getAdapterPosition());
                            return;
                        }
                        return;
                    }
                    Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
                }
            }
        });
        commentViewHolder.btnNotice.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int size = CommentsAdapter.this.b.size();
                if (size > 0 && commentViewHolder.getAdapterPosition() < size && commentViewHolder.getAdapterPosition() >= 0) {
                    if (pl.jbzd.core.a.a.c(view2.getContext())) {
                        if (CommentsAdapter.this.c != null) {
                            CommentsAdapter.this.c.d(view2, (Comment) CommentsAdapter.this.b.get(commentViewHolder.getAdapterPosition()), commentViewHolder.getAdapterPosition());
                            return;
                        }
                        return;
                    }
                    Toast.makeText(view2.getContext(), (int) R.string.error_online, 0).show();
                }
            }
        });
        if (commentViewHolder.btnShowReplies != null) {
            commentViewHolder.btnShowReplies.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int size = CommentsAdapter.this.b.size();
                    int adapterPosition = commentViewHolder.getAdapterPosition();
                    if (size >= 1 && adapterPosition >= 0 && adapterPosition < size) {
                        boolean z = adapterPosition == size + (-1);
                        if (!z && adapterPosition + 1 < CommentsAdapter.this.b.size() && CommentsAdapter.this.b.get(adapterPosition + 1) != null) {
                            z = ((Comment) CommentsAdapter.this.b.get(adapterPosition)).realmGet$id() != ((Comment) CommentsAdapter.this.b.get(adapterPosition + 1)).realmGet$parent_id();
                        }
                        if (z) {
                            commentViewHolder.btnShowReplies.setText(R.string.hine_comment_replies);
                            CommentsAdapter.this.b.addAll(adapterPosition + 1, ((Comment) CommentsAdapter.this.b.get(adapterPosition)).getReplies());
                            CommentsAdapter.this.notifyItemRangeInserted(adapterPosition + 1, ((Comment) CommentsAdapter.this.b.get(adapterPosition)).getReplies().size());
                            return;
                        }
                        commentViewHolder.btnShowReplies.setText(R.string.comment_replies);
                        CommentsAdapter.this.b.removeAll(((Comment) CommentsAdapter.this.b.get(adapterPosition)).getReplies());
                        CommentsAdapter.this.notifyDataSetChanged();
                    }
                }
            });
        }
    }

    @Override // pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter
    public void a(RecyclerView.u uVar, int i, int i2) {
        if (i == CommentViewType.COMMENT.id || i == CommentViewType.COMMENT_REPLIES.id || i == CommentViewType.COMMENT_SUBCOMMENT.id) {
            ((CommentViewHolder) uVar).a((Comment) this.b.get(i2));
        }
    }

    @Override // pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter
    public RecyclerView.u a(ViewGroup viewGroup, EndlessRecyclerViewAdapter.ViewType viewType, int i) {
        if (EndlessRecyclerViewAdapter.ViewType.EMPTY.equals(viewType)) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_empty, viewGroup, false);
            ((TextView) inflate.findViewById(R.id.txt)).setText(R.string.no_comments);
            return new EmptyViewHolder(inflate);
        } else if (EndlessRecyclerViewAdapter.ViewType.LOADING_FIST.equals(viewType)) {
            return new LoadingFirstViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_load_first, viewGroup, false));
        } else {
            if (EndlessRecyclerViewAdapter.ViewType.LOADING_PAGE.equals(viewType)) {
                return new LoadingPageViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_load_page, viewGroup, false));
            }
            if (EndlessRecyclerViewAdapter.ViewType.ERROR_FIRST.equals(viewType)) {
                View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_error_first, viewGroup, false);
                new ErrorFirstViewHolder(inflate2).btn.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CommentsAdapter.this.c();
                    }
                });
                return new ErrorFirstViewHolder(inflate2);
            } else if (EndlessRecyclerViewAdapter.ViewType.ERROR_PAGE.equals(viewType)) {
                ErrorPageViewHolder errorPageViewHolder = new ErrorPageViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.feed_error_page, viewGroup, false));
                errorPageViewHolder.btn.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsAdapter.9
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        CommentsAdapter.this.c();
                    }
                });
                return errorPageViewHolder;
            } else {
                return null;
            }
        }
    }

    @Override // pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter
    public void a(RecyclerView.u uVar, EndlessRecyclerViewAdapter.ViewType viewType, int i, int i2) {
    }

    @Override // pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter
    public int a(int i) {
        return ((Comment) this.b.get(i)).realmGet$parent_id() > 0 ? CommentViewType.COMMENT_SUBCOMMENT.id : CommentViewType.COMMENT.id;
    }

    @Override // pl.jbzd.core.ui.adapter.EndlessRecyclerViewAdapter
    public EndlessRecyclerViewAdapter.ViewType[] a() {
        return new EndlessRecyclerViewAdapter.ViewType[]{EndlessRecyclerViewAdapter.ViewType.EMPTY, EndlessRecyclerViewAdapter.ViewType.LOADING_FIST, EndlessRecyclerViewAdapter.ViewType.LOADING_PAGE, EndlessRecyclerViewAdapter.ViewType.ERROR_FIRST, EndlessRecyclerViewAdapter.ViewType.ERROR_PAGE};
    }

    public void a(b bVar) {
        this.c = bVar;
    }
}
