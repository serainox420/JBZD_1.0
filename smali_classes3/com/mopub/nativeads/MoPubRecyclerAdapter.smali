.class public final Lcom/mopub/nativeads/MoPubRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "MoPubRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$c;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private final c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

.field private final d:Landroid/support/v7/widget/RecyclerView$a;

.field private final e:Lcom/mopub/nativeads/l;

.field private final f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

.field private h:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    new-instance v1, Lcom/mopub/nativeads/l;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/l;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/l;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {v0, p1, p3}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    new-instance v1, Lcom/mopub/nativeads/l;

    invoke-direct {v1, p1}, Lcom/mopub/nativeads/l;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/l;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/l;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 39
    sget-object v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;->INSERT_AT_END:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->g:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->f:Ljava/util/WeakHashMap;

    .line 66
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    .line 67
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->e:Lcom/mopub/nativeads/l;

    .line 68
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->e:Lcom/mopub/nativeads/l;

    new-instance v1, Lcom/mopub/nativeads/MoPubRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$1;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/l;->a(Lcom/mopub/nativeads/l$d;)V

    .line 76
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a(Z)V

    .line 78
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    .line 79
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    new-instance v1, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->setItemCount(I)V

    .line 92
    new-instance v0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter$3;-><init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a:Landroid/support/v7/widget/RecyclerView$c;

    .line 157
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Landroid/support/v7/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubRecyclerAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    const v1, 0x7fffffff

    .line 546
    const/4 v0, 0x0

    .line 547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 548
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 549
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 554
    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->placeAdsInRange(II)V

    .line 556
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->setHasStableIds(Z)V

    .line 563
    return-void
.end method

.method static synthetic b(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubStreamAdPlacer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->g:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    return-object v0
.end method

.method public static computeScrollOffset(Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 226
    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    .line 232
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getStackFromEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->h:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->h:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    .line 529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemInserted(I)V

    .line 530
    return-void
.end method

.method b(I)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->h:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->h:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    .line 538
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->notifyItemRemoved(I)V

    .line 539
    return-void
.end method

.method public clearAds()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->clearAds()V

    .line 332
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 451
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->destroy()V

    .line 452
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->e:Lcom/mopub/nativeads/l;

    invoke-virtual {v0}, Lcom/mopub/nativeads/l;->b()V

    .line 453
    return-void
.end method

.method public getAdjustedPosition(I)I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedPosition(I)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdjustedCount(I)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-wide/16 v0, -0x1

    .line 475
    :goto_0
    return-wide v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_1

    .line 472
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewType(I)I

    move-result v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    add-int/lit8 v0, v0, -0x38

    .line 436
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getOriginalPosition(I)I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v0

    return v0
.end method

.method public isAd(I)Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v0

    return v0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 222
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 163
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b:Landroid/support/v7/widget/RecyclerView;

    .line 164
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdData(I)Ljava/lang/Object;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->f:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->e:Lcom/mopub/nativeads/l;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/l;->a(Landroid/view/View;I)V

    .line 426
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$u;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 3

    .prologue
    .line 399
    const/16 v0, -0x38

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x38

    if-gt p2, v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    add-int/lit8 v1, p2, 0x38

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v2

    .line 402
    if-nez v2, :cond_0

    .line 403
    const-string v0, "No view binder was registered for ads in MoPubRecyclerAdapter."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    .line 407
    :cond_0
    new-instance v1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v2, v0, p1}, Lcom/mopub/nativeads/MoPubAdRenderer;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v0

    goto :goto_0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b:Landroid/support/v7/widget/RecyclerView;

    .line 170
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 481
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 482
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v0

    .line 486
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 491
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 492
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 502
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 503
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 513
    instance-of v0, p1, Lcom/mopub/nativeads/MoPubRecyclerViewHolder;

    if-eqz v0, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 520
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0
.end method

.method public refreshAds(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->refreshAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    .line 259
    return-void
.end method

.method public refreshAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 272
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 273
    const-string v0, "This adapter is not attached to a RecyclerView and cannot be refreshed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 278
    if-nez v0, :cond_1

    .line 279
    const-string v0, "Can\'t refresh ads when there is no layout manager on a RecyclerView."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_5

    .line 287
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 288
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 289
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->computeScrollOffset(Landroid/support/v7/widget/LinearLayoutManager;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v4

    .line 293
    add-int/lit8 v1, v3, -0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 294
    :goto_1
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    .line 295
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->getItemCount()I

    move-result v5

    .line 300
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 301
    :goto_2
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v6, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->isAd(I)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ge v2, v6, :cond_3

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 305
    :cond_3
    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v5, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v1

    .line 306
    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v5, v2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->getOriginalPosition(I)I

    move-result v2

    .line 307
    iget-object v5, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v5

    .line 309
    iget-object v6, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v6, v2, v5}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 310
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v2, v7, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    move-result v1

    .line 312
    if-lez v1, :cond_4

    .line 313
    sub-int v1, v3, v1

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 316
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    goto :goto_0

    .line 318
    :cond_5
    const-string v0, "This LayoutManager can\'t be refreshed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1

    .prologue
    .line 193
    const-string v0, "Cannot register a null adRenderer"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->c:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->h:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    .line 186
    return-void
.end method

.method public setContentChangeStrategy(Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;)V
    .locals 1

    .prologue
    .line 386
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->g:Lcom/mopub/nativeads/MoPubRecyclerAdapter$ContentChangeStrategy;

    goto :goto_0
.end method

.method public setHasStableIds(Z)V
    .locals 2

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a(Z)V

    .line 444
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 445
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->setHasStableIds(Z)V

    .line 446
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->d:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a:Landroid/support/v7/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$c;)V

    .line 447
    return-void
.end method
