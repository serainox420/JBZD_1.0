.class Lpl/jbzd/app/view/feed/FeedFragment$14;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lpl/jbzd/app/view/feed/FeedAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->j()Lpl/jbzd/app/view/feed/FeedAdapter$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->i()V

    .line 699
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Vote"

    .line 522
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v2, "Komentarze"

    .line 523
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const-string v0, "plus"

    .line 524
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 521
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 527
    :cond_0
    return-void

    .line 523
    :cond_1
    const-string v0, "minus"

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Media;I)V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Komentarze"

    .line 468
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "klik w button z feedu"

    .line 469
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 475
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/view/comments/CommentsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    const-string v1, "ARG_MEDIA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/16 v2, 0x141

    invoke-virtual {v1, v0, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 478
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/view/BaseActivity;->overridePendingTransition(II)V

    .line 479
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, p3}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 481
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 482
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->c()V

    .line 483
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Media;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 506
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Vote"

    .line 508
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    const-string v2, "Obrazki"

    .line 509
    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    if-ne p4, v3, :cond_1

    const-string v0, "plus"

    .line 510
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 507
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 514
    :cond_0
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v1

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v2

    if-ne p4, v3, :cond_2

    const-string v0, "up"

    :goto_1
    invoke-interface {v1, v2, v0}, Lpl/jbzd/api/ApiService;->media_vote(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/api/callback/EmptyApiCallback;

    invoke-direct {v1}, Lpl/jbzd/api/callback/EmptyApiCallback;-><init>()V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 515
    return-void

    .line 509
    :cond_1
    const-string v0, "minus"

    goto :goto_0

    .line 514
    :cond_2
    const-string v0, "down"

    goto :goto_1
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Media;IZ)V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Social"

    .line 534
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "like obrazka"

    .line 535
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 533
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 538
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/GalleryViewHolder;Lpl/jbzd/app/model/Media;I)V
    .locals 3

    .prologue
    .line 569
    :try_start_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->c()V

    .line 571
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 574
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    const-string v1, "ARG_MEDIA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 576
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/16 v2, 0x141

    invoke-virtual {v1, v0, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 577
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/view/BaseActivity;->overridePendingTransition(II)V

    .line 578
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, p4}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/StandardViewHolder;Lpl/jbzd/app/view/feed/a/c;Lpl/jbzd/app/model/Media;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lpl/jbzd/app/view/feed/holders/StandardViewHolder",
            "<+",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;",
            "Lpl/jbzd/app/view/feed/a/c;",
            "Lpl/jbzd/app/model/Media;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->c()V

    .line 653
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 656
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 658
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 659
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->b()V

    .line 661
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/a;Lpl/jbzd/app/model/Media;I)V
    .locals 4

    .prologue
    .line 588
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    const-string v1, "ARG_MEDIA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/16 v2, 0x141

    invoke-virtual {v1, v0, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 591
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/view/BaseActivity;->overridePendingTransition(II)V

    .line 592
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, p4}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 594
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$14$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/feed/FeedFragment$14$1;-><init>(Lpl/jbzd/app/view/feed/FeedFragment$14;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/b;Lpl/jbzd/app/model/Media;I)V
    .locals 3

    .prologue
    .line 550
    :try_start_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->c()V

    .line 552
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 555
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    const-string v1, "ARG_MEDIA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/16 v2, 0x141

    invoke-virtual {v1, v0, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 558
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/view/BaseActivity;->overridePendingTransition(II)V

    .line 559
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, p4}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/view/feed/holders/d;Lpl/jbzd/app/model/Media;I)V
    .locals 4

    .prologue
    .line 620
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    const-string v1, "ARG_MEDIA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 622
    const-string v1, "ARG_POSITION"

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v2}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lpl/jbzd/b/b;->b()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 623
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/16 v2, 0x141

    invoke-virtual {v1, v0, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 624
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/view/BaseActivity;->overridePendingTransition(II)V

    .line 625
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0, p4}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 627
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$14$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/feed/FeedFragment$14$2;-><init>(Lpl/jbzd/app/view/feed/FeedFragment$14;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;)Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lpl/jbzd/app/view/feed/FeedFragment$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/FeedFragment$b;

    invoke-interface {v0, p1, p2}, Lpl/jbzd/app/view/feed/FeedFragment$b;->a(Landroid/view/View;Lpl/jbzd/app/model/Comment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Lpl/jbzd/app/model/Media;I)V
    .locals 4

    .prologue
    .line 492
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lpl/jbzd/api/ApiService;->media_toFavorites(Ljava/lang/String;IZ)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/api/callback/EmptyApiCallback;

    invoke-direct {v1}, Lpl/jbzd/api/callback/EmptyApiCallback;-><init>()V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 498
    if-nez v0, :cond_2

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 499
    :cond_2
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;Lpl/jbzd/app/model/Media;I)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$14;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lpl/jbzd/app/view/BaseActivity;->a(Landroid/view/View;Lpl/jbzd/app/model/Media;)V

    .line 543
    return-void
.end method
