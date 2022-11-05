.class public Lpl/jbzd/core/ui/view/lce/b;
.super Ljava/lang/Object;
.source "LayoutManagerWrapper.java"

# interfaces
.implements Lpl/jbzd/core/ui/view/lce/a;


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$h;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 25
    .line 27
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b([I)[I

    move-result-object v2

    .line 30
    aget v1, v2, v1

    .line 32
    const/4 v0, 0x1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 34
    aget v3, v2, v0

    if-ge v1, v3, :cond_0

    .line 35
    aget v1, v2, v0

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 46
    :cond_2
    :goto_1
    return v1

    .line 42
    :cond_3
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c()I

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lpl/jbzd/core/ui/view/lce/b;->a:Landroid/support/v7/widget/RecyclerView$h;

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->a()I

    move-result v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
