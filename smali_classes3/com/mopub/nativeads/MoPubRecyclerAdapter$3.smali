.class Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;
.super Landroid/support/v7/widget/RecyclerView$c;
.source "MoPubRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v1

    .line 103
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 104
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeChanged(II)V

    .line 105
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v2

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    .line 111
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v3}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 112
    add-int v3, p1, p2

    if-lt v3, v0, :cond_1

    const/4 v0, 0x1

    .line 113
    :goto_0
    sget-object v3, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v4

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v4

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 124
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 112
    goto :goto_0

    .line 118
    :cond_2
    :goto_2
    if-ge v1, p2, :cond_3

    .line 120
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->insertItem(I)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, v2, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeInserted(II)V

    goto :goto_1
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v2

    .line 129
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v3

    .line 130
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 131
    add-int v0, p1, p2

    if-lt v0, v3, :cond_1

    const/4 v0, 0x1

    .line 132
    :goto_0
    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->KEEP_ADS_FIXED:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v5}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v5}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    move-result-object v5

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyDataSetChanged()V

    .line 148
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v0

    add-int v4, v3, p2

    invoke-virtual {v0, v4}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v0

    .line 138
    :goto_2
    if-ge v1, p2, :cond_3

    .line 140
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeItem(I)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-static {v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 145
    sub-int v1, v0, p2

    sub-int v1, v2, v1

    .line 146
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_1
.end method
