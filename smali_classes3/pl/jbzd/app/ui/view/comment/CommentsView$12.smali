.class Lpl/jbzd/app/ui/view/comment/CommentsView$12;
.super Lpl/jbzd/api/callback/CachedApiCallback;
.source "CommentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/ui/view/comment/CommentsView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/CachedApiCallback",
        "<",
        "Lpl/jbzd/api/response/CommentListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lpl/jbzd/app/ui/view/comment/CommentsView;


# direct methods
.method constructor <init>(Lpl/jbzd/app/ui/view/comment/CommentsView;I)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iput p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->a:I

    invoke-direct {p0}, Lpl/jbzd/api/callback/CachedApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/CommentListResponse;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 436
    if-eqz p1, :cond_b

    iget-object v0, p1, Lpl/jbzd/api/response/CommentListResponse;->response:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 438
    iget-object v0, p1, Lpl/jbzd/api/response/CommentListResponse;->response:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 441
    iget-object v0, p1, Lpl/jbzd/api/response/CommentListResponse;->response:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 442
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$created_at()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v4}, Lpl/jbzd/app/ui/view/comment/CommentsView;->f(Lpl/jbzd/app/ui/view/comment/CommentsView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 443
    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$created_at()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;J)J

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p1, Lpl/jbzd/api/response/CommentListResponse;->response:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 448
    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v2}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 451
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;I)V

    .line 522
    :cond_3
    :goto_2
    return-void

    .line 455
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v8}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 456
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->h(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/model/Media;

    move-result-object v1

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/a/a;->b(Lio/realm/l;I)Ljava/util/List;

    move-result-object v2

    .line 457
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 461
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 462
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->h(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Comment;->realmSet$media_id(I)V

    .line 463
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v0

    if-lez v0, :cond_6

    .line 467
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/q;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 468
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 472
    :cond_6
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 474
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 476
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v6

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 478
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v5

    if-lez v5, :cond_8

    .line 479
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    goto/16 :goto_3

    .line 481
    :cond_8
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v0

    if-gez v0, :cond_5

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v0

    if-lez v0, :cond_5

    .line 482
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    goto/16 :goto_3

    .line 491
    :cond_9
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->b()V

    .line 492
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/realm/l;->a(Ljava/lang/Iterable;)Ljava/util/List;

    .line 493
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 495
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v8}, Lpl/jbzd/app/ui/view/comment/CommentsView;->c(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 496
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v3}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->i(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->a(Ljava/util/List;)V

    .line 498
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->i(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->f()V

    .line 500
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v8}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 501
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 502
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 505
    :cond_a
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->j(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->j(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$c;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->h(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/model/Media;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lpl/jbzd/app/ui/view/comment/CommentsView$c;->a(Lpl/jbzd/app/model/Media;Ljava/util/List;)V

    goto/16 :goto_2

    .line 512
    :cond_b
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v8}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 513
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v8}, Lpl/jbzd/app/ui/view/comment/CommentsView;->c(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 515
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v8}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 516
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_c

    .line 517
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 520
    :cond_c
    invoke-virtual {p0, v1, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->loadFromCache(Lretrofit2/Call;Lretrofit2/Response;)V

    goto/16 :goto_2
.end method

.method public loadFromCache(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lpl/jbzd/api/response/CommentListResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 545
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->h(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/model/Media;

    move-result-object v1

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/a/a;->b(Lio/realm/l;I)Ljava/util/List;

    move-result-object v0

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 550
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 551
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 552
    iget-object v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v3}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 555
    :cond_0
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->b()V

    .line 557
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 560
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v0

    if-lez v0, :cond_1

    .line 564
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/q;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_1

    .line 570
    :cond_2
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 572
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v5}, Lpl/jbzd/app/ui/view/comment/CommentsView;->c(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 573
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v2}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/util/List;)V

    .line 576
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->i(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->a(Ljava/util/List;)V

    .line 577
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->i(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->f()V

    .line 579
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v5}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 580
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 583
    :cond_4
    return-void
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->i(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->e()V

    .line 529
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->k(Lpl/jbzd/app/ui/view/comment/CommentsView;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 530
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->a:I

    invoke-static {v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Lpl/jbzd/app/ui/view/comment/CommentsView;I)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v2}, Lpl/jbzd/app/ui/view/comment/CommentsView;->c(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 535
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    invoke-static {v0, v2}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z

    .line 536
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->b:Lpl/jbzd/app/ui/view/comment/CommentsView;

    iget-object v0, v0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 432
    check-cast p1, Lpl/jbzd/api/response/CommentListResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$12;->a(Lpl/jbzd/api/response/CommentListResponse;)V

    return-void
.end method
