.class public Lpl/jbzd/app/view/feed/FeedFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FeedFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lpl/jbzd/app/view/feed/FeedFragment;


# direct methods
.method public constructor <init>(Lpl/jbzd/app/view/feed/FeedFragment;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment_ViewBinding;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    .line 23
    const v0, 0x7f11015b

    const-string v1, "field \'swipeContainer\'"

    const-class v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 24
    const v0, 0x7f11015c

    const-string v1, "field \'rvFeed\'"

    const-class v2, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    .line 25
    const v0, 0x7f11015d

    const-string v1, "field \'btnAddedNew\'"

    const-class v2, Lpl/jbzd/core/ui/view/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/b;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/TextView;

    iput-object v0, p1, Lpl/jbzd/app/view/feed/FeedFragment;->btnAddedNew:Lpl/jbzd/core/ui/view/TextView;

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment_ViewBinding;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    .line 32
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment_ViewBinding;->b:Lpl/jbzd/app/view/feed/FeedFragment;

    .line 35
    iput-object v1, v0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 36
    iput-object v1, v0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    .line 37
    iput-object v1, v0, Lpl/jbzd/app/view/feed/FeedFragment;->btnAddedNew:Lpl/jbzd/core/ui/view/TextView;

    .line 38
    return-void
.end method
