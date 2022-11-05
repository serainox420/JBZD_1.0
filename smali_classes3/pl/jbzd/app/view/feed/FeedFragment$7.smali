.class Lpl/jbzd/app/view/feed/FeedFragment$7;
.super Lpl/jbzd/api/callback/CachedApiCallback;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/jbzd/api/callback/CachedApiCallback",
        "<",
        "Lpl/jbzd/api/response/MediaListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iput-object p2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->c:Z

    iput p5, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->d:I

    invoke-direct {p0}, Lpl/jbzd/api/callback/CachedApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpl/jbzd/api/response/MediaListResponse;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1348
    if-eqz p1, :cond_7

    iget-object v0, p1, Lpl/jbzd/api/response/MediaListResponse;->response:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1350
    iget-object v0, p1, Lpl/jbzd/api/response/MediaListResponse;->response:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1352
    const-string v0, "queue"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v3

    .line 1354
    :goto_0
    const-string v0, "up"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1355
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    iget-object v2, p1, Lpl/jbzd/api/response/MediaListResponse;->response:Ljava/util/List;

    const-string v5, "random"

    iget-object v6, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-boolean v6, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->c:Z

    invoke-static/range {v0 .. v6}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Lio/realm/l;Ljava/util/List;ZIZZ)V

    .line 1389
    :goto_1
    return-void

    .line 1352
    :cond_0
    const-string v0, "main"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    move v4, v7

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v1

    iget-object v2, p1, Lpl/jbzd/api/response/MediaListResponse;->response:Ljava/util/List;

    const-string v3, "random"

    iget-object v5, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-boolean v6, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->c:Z

    move v3, v7

    invoke-static/range {v0 .. v6}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Lio/realm/l;Ljava/util/List;ZIZZ)V

    goto :goto_1

    .line 1361
    :cond_3
    const-string v0, "up"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1362
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-boolean v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->c:Z

    invoke-static {v0, v2, v3, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto :goto_1

    .line 1364
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->j(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/model/User;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1366
    new-instance v0, Lpl/jbzd/app/model/Media;

    invoke-direct {v0}, Lpl/jbzd/app/model/Media;-><init>()V

    .line 1367
    sget-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 1368
    const-string v1, "Brak dzidek :("

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 1369
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v2, v0}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->l()V

    .line 1371
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1373
    :cond_5
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->l(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1375
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;Z)Z

    .line 1376
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->l()V

    .line 1377
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1380
    :cond_6
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    goto/16 :goto_1

    .line 1385
    :cond_7
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-boolean v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->c:Z

    invoke-static {v0, v2, v3, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    .line 1387
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    goto/16 :goto_1
.end method

.method public loadFromCache(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1407
    const-string v0, "up"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->c:Z

    invoke-static {v0, v4, v1, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    const-string v0, "main"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1412
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->d:I

    invoke-static {v0, v1, v5}, Lpl/jbzd/app/a/b;->a(Lio/realm/l;II)Ljava/util/List;

    move-result-object v0

    .line 1413
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1415
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, v4, v3, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto :goto_0

    .line 1419
    :cond_3
    const-string v0, "queue"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1421
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->d:I

    invoke-static {v0, v1, v5}, Lpl/jbzd/app/a/b;->b(Lio/realm/l;II)Ljava/util/List;

    move-result-object v0

    .line 1422
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1423
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, v4, v3, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto :goto_0

    .line 1427
    :cond_5
    const-string v0, "favorite"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1429
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->d:I

    invoke-static {v0, v1, v5}, Lpl/jbzd/app/a/b;->c(Lio/realm/l;II)Ljava/util/List;

    move-result-object v0

    .line 1430
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1431
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    :cond_6
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, v4, v3, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto/16 :goto_0

    .line 1435
    :cond_7
    const-string v0, "top"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1437
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->d:I

    invoke-static {v0, v1, v5}, Lpl/jbzd/app/a/b;->d(Lio/realm/l;II)Ljava/util/List;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1439
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    :cond_8
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, v4, v3, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto/16 :goto_0

    .line 1443
    :cond_9
    const-string v0, "user"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1445
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    iget v1, v1, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    iget v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->d:I

    invoke-static {v0, v1, v2, v5}, Lpl/jbzd/app/a/b;->a(Lio/realm/l;III)Ljava/util/List;

    move-result-object v0

    .line 1446
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1447
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    :cond_a
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, v4, v3, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto/16 :goto_0

    .line 1453
    :cond_b
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->d:I

    invoke-static {v0, v1, v5}, Lpl/jbzd/app/a/b;->e(Lio/realm/l;II)Ljava/util/List;

    move-result-object v0

    .line 1454
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;

    move-result-object v2

    invoke-static {v2, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1455
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    :cond_c
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, v4, v3, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    goto/16 :goto_0
.end method

.method public onError(Lpl/jbzd/api/exception/ApiException;)V
    .locals 4

    .prologue
    .line 1394
    const-string v0, "up"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->c:Z

    invoke-static {v0, v1, v2, v3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    .line 1402
    :goto_0
    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->m()V

    .line 1400
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$7;->e:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    goto :goto_0
.end method

.method public synthetic onSuccess(Lpl/jbzd/api/response/BaseApiResponse;)V
    .locals 0

    .prologue
    .line 1344
    check-cast p1, Lpl/jbzd/api/response/MediaListResponse;

    invoke-virtual {p0, p1}, Lpl/jbzd/app/view/feed/FeedFragment$7;->a(Lpl/jbzd/api/response/MediaListResponse;)V

    return-void
.end method
