.class Lpl/jbzd/app/view/feed/FeedFragment$8;
.super Lpl/jbzd/api/callback/CachedApiCallback;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->b(Ljava/lang/String;JIZ)Lpl/jbzd/api/callback/CachedApiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/CachedApiCallback",
        "<",
        "Lpl/jbzd/api/response/UserMediaResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;JZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iput-wide p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->a:J

    iput-boolean p4, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    iput-object p5, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->c:Ljava/lang/String;

    iput p6, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->d:I

    invoke-direct {p0}, Lpl/jbzd/api/callback/CachedApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/UserMediaResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1469
    if-eqz p1, :cond_7

    iget-object v0, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    if-eqz v0, :cond_7

    .line 1471
    iget-object v0, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserMediaModel;->user:Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->j(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1473
    :cond_0
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->b()V

    .line 1474
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget-object v1, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v1, v1, Lpl/jbzd/api/model/UserMediaModel;->user:Lpl/jbzd/app/model/User;

    invoke-virtual {v0, v1}, Lio/realm/l;->b(Lio/realm/t;)Lio/realm/t;

    .line 1475
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 1477
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-object v1, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v1, v1, Lpl/jbzd/api/model/UserMediaModel;->user:Lpl/jbzd/app/model/User;

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Lpl/jbzd/app/model/User;)Lpl/jbzd/app/model/User;

    .line 1478
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    iget-object v1, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v1, v1, Lpl/jbzd/api/model/UserMediaModel;->user:Lpl/jbzd/app/model/User;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/model/User;)V

    .line 1481
    :cond_1
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->k(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1483
    iget-object v0, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserMediaModel;->media:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserMediaModel;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1485
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    const-string v1, "user"

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget v2, v2, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    const-string v3, "down"

    iget-wide v4, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->a:J

    invoke-interface/range {v0 .. v5}, Lpl/jbzd/api/ApiService;->media_listing_user(Ljava/lang/String;ILjava/lang/String;J)Lretrofit2/Call;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    const-string v2, "down"

    const-string v3, "user"

    iget-boolean v4, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    invoke-virtual {v1, v2, v3, v6, v4}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1533
    :goto_0
    return-void

    .line 1489
    :cond_2
    new-instance v0, Lpl/jbzd/app/model/Media;

    invoke-direct {v0}, Lpl/jbzd/app/model/Media;-><init>()V

    .line 1490
    sget-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 1491
    const-string v1, "Brak dzidek"

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v2, v0}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->l()V

    .line 1494
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1499
    :cond_3
    iget-object v0, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserMediaModel;->comments:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v0, v0, Lpl/jbzd/api/model/UserMediaModel;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1501
    const-string v0, "up"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1502
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    iget-object v2, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v2, v2, Lpl/jbzd/api/model/UserMediaModel;->comments:Ljava/util/List;

    iget-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    invoke-static {v0, v1, v2, v6, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Lio/realm/l;Ljava/util/List;ZZ)V

    .line 1508
    :goto_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v1

    iget-object v2, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v2, v2, Lpl/jbzd/api/model/UserMediaModel;->comments:Ljava/util/List;

    invoke-static {v1, v2}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1505
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    iget-object v2, p1, Lpl/jbzd/api/response/UserMediaResponse;->response:Lpl/jbzd/api/model/UserMediaModel;

    iget-object v2, v2, Lpl/jbzd/api/model/UserMediaModel;->comments:Ljava/util/List;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    invoke-static {v0, v1, v2, v3, v4}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Lio/realm/l;Ljava/util/List;ZZ)V

    goto :goto_1

    .line 1510
    :cond_5
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->d:I

    if-ne v0, v6, :cond_6

    .line 1512
    new-instance v0, Lpl/jbzd/app/model/Media;

    invoke-direct {v0}, Lpl/jbzd/app/model/Media;-><init>()V

    .line 1513
    sget-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 1514
    const-string v1, "Brak komentarzy"

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 1515
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v2, v0}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->l()V

    .line 1517
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1520
    :cond_6
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    invoke-static {v0, v1, v6, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto/16 :goto_0

    .line 1526
    :cond_7
    new-instance v0, Lpl/jbzd/app/model/Media;

    invoke-direct {v0}, Lpl/jbzd/app/model/Media;-><init>()V

    .line 1527
    sget-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 1528
    const-string v1, "Brak dzidek"

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 1529
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v2, v0}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->l()V

    .line 1531
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public loadFromCache(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1550
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget v2, v2, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    invoke-static {v1, v2}, Lpl/jbzd/app/a/b;->a(Lio/realm/l;I)Lpl/jbzd/app/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Lpl/jbzd/app/model/User;)V

    .line 1552
    const-string v0, "up"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-boolean v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    invoke-static {v0, v4, v3, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    .line 1578
    :goto_0
    return-void

    .line 1555
    :cond_0
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->b:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->k(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v1

    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v2

    iget v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->d:I

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lpl/jbzd/app/a/b;->a(Lio/realm/l;II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1560
    :cond_1
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget v1, v1, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    invoke-static {v0, v1}, Lpl/jbzd/app/a/a;->a(Lio/realm/l;I)Ljava/util/List;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1563
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1565
    :cond_2
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->d:I

    if-ne v0, v3, :cond_3

    .line 1567
    new-instance v0, Lpl/jbzd/app/model/Media;

    invoke-direct {v0}, Lpl/jbzd/app/model/Media;-><init>()V

    .line 1568
    sget-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 1569
    const-string v1, "Brak komentarzy"

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 1570
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v2, v0}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->l()V

    .line 1572
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1575
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-boolean v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    invoke-static {v0, v4, v3, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto/16 :goto_0
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 4

    .prologue
    .line 1538
    const-string v0, "up"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->b:Z

    invoke-static {v0, v1, v2, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    .line 1545
    :goto_0
    return-void

    .line 1542
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->m()V

    .line 1543
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$8;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    goto :goto_0
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 1465
    check-cast p1, Lpl/jbzd/api/response/UserMediaResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/feed/FeedFragment$8;->a(Lpl/jbzd/api/response/UserMediaResponse;)V

    return-void
.end method
