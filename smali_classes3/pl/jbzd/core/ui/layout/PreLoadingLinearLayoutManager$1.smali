.class Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager$1;
.super Landroid/support/v7/widget/ac;
.source "PreLoadingLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;


# direct methods
.method constructor <init>(Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager$1;->b:Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;

    iput p3, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager$1;->a:I

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ac;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    const v1, 0x3df5c28f    # 0.12f

    iget v2, p0, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager$1;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
