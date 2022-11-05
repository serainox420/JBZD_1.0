.class Lpl/jbzd/app/view/feed/FeedAdapter$7;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedAdapter;->a(Landroid/view/View;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

.field final synthetic b:Lpl/jbzd/app/view/feed/FeedAdapter;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedAdapter;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 838
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->q(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 839
    if-lez v0, :cond_0

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v2

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a00c1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->r(Lpl/jbzd/app/view/feed/FeedAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    invoke-virtual {v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    .line 847
    if-eqz v0, :cond_5

    iget-object v2, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v2, v2, Lpl/jbzd/app/model/Comment;

    if-eqz v2, :cond_5

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Comment;

    move-object v2, v0

    .line 849
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 851
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    const-class v3, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0, v3}, Lio/realm/l;->a(Ljava/lang/Class;)Lio/realm/v;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/realm/v;->a(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/v;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/v;->c()Lio/realm/t;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 853
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/l;->b()V

    .line 855
    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lpl/jbzd/app/model/Comment;->setPlus(I)V

    .line 856
    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lpl/jbzd/app/model/Comment;->setMinus(I)V

    .line 857
    :cond_2
    invoke-virtual {v2, v5}, Lpl/jbzd/app/model/Comment;->setVoted(I)V

    .line 859
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    .line 861
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lpl/jbzd/app/model/Comment;->setPlus(I)V

    .line 862
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lpl/jbzd/app/model/Comment;->setMinus(I)V

    .line 863
    :cond_3
    invoke-virtual {v0, v5}, Lpl/jbzd/app/model/Comment;->setVoted(I)V

    .line 866
    :cond_4
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 868
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    const v3, 0x7f020075

    iget-object v4, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v4, v4, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 870
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v3, v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->votes:Lpl/jbzd/core/ui/view/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v0

    if-gez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v4

    if-gez v4, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->b:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->c(Lpl/jbzd/app/view/feed/FeedAdapter;)Lpl/jbzd/app/view/feed/FeedAdapter$b;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedAdapter$7;->a:Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;

    iget-object v1, v1, Lpl/jbzd/app/ui/view/comment/CommentsAdapter$CommentViewHolder;->btnVoteUp:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2, v5}, Lpl/jbzd/app/view/feed/FeedAdapter$b;->a(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V

    .line 873
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v1

    const-string v2, "up"

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->comment_vote(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/api/callback/EmptyApiCallback;

    invoke-direct {v1}, Lpl/jbzd/api/callback/EmptyApiCallback;-><init>()V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 847
    :cond_5
    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_1

    .line 870
    :cond_6
    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v1

    goto :goto_3
.end method
