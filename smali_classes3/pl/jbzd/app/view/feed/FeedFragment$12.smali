.class Lpl/jbzd/app/view/feed/FeedFragment$12;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$b;


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
    .line 406
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment$12;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$12;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$12;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment$12;->a:Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->e()V

    goto :goto_0
.end method
