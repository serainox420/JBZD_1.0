.class public Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "PreLoadingLinearLayoutManager.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x12c

    iput v0, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->a:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x12c

    iput v0, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->a:I

    .line 23
    iput p2, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->a:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 15
    const/16 v0, 0x12c

    iput v0, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->a:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const/16 v0, 0x12c

    iput v0, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->a:I

    .line 32
    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$r;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->a:I

    return v0
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    .locals 1

    .prologue
    .line 38
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->getItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager$1;-><init>(Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;Landroid/content/Context;I)V

    .line 77
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ac;->setTargetPosition(I)V

    .line 78
    invoke-virtual {p0, v0}, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$q;)V

    goto :goto_0
.end method
