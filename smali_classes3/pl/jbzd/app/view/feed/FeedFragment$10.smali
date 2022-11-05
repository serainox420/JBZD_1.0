.class Lpl/jbzd/app/view/feed/FeedFragment$10;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "FeedFragment.java"


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
    .line 367
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 377
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->e(Lpl/jbzd/app/view/feed/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->e(Lpl/jbzd/app/view/feed/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 379
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->c()V

    .line 380
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/feed/FeedFragment;I)I

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment$10;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedFragment;->d(Lpl/jbzd/app/view/feed/FeedFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->a()V

    goto :goto_0
.end method
