.class Lpl/jbzd/app/view/feed/FeedFragment$1;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/feed/FeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 293
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;)Ljava/util/List;

    .line 308
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->scrollToPosition(I)V

    .line 309
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedFragment;->btnAddedNew:Lpl/jbzd/core/ui/view/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->a()V

    .line 312
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 314
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "nowe kwejki button"

    .line 315
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 318
    :cond_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$1;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Z)V

    goto :goto_0
.end method
