.class Lcom/amazon/device/ads/ViewabilityOverlapCalculator;
.super Ljava/lang/Object;
.source "ViewabilityOverlapCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;,
        Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private rootView:Landroid/view/View;

.field private visibleAdRectangle:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->adController:Lcom/amazon/device/ads/AdController;

    .line 42
    sget-object v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 43
    return-void
.end method

.method private computeArea(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 231
    .line 232
    iget v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    iget v2, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    sub-int v3, v1, v2

    move v1, v0

    move v2, v0

    .line 233
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 235
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;

    .line 236
    iget v4, v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    iget v0, v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    sub-int v0, v4, v0

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    return v2
.end method

.method private findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            "I",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 100
    if-eqz p3, :cond_1

    if-eqz p5, :cond_1

    invoke-static {p3}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAdTransparent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->visibleAdRectangle:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;Landroid/graphics/Rect;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    :goto_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 110
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 113
    if-eqz v3, :cond_3

    instance-of v0, v3, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    move v0, v6

    .line 115
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    :cond_2
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 113
    goto :goto_2

    .line 120
    :cond_4
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 128
    :cond_5
    invoke-direct {p0, v3}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->getViewRectangle(Landroid/view/View;)Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->intersect(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    if-nez v0, :cond_6

    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 134
    check-cast v3, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V

    goto :goto_3

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Overlap found with View: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 144
    :cond_7
    if-eqz p5, :cond_0

    .line 149
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->rootView:Landroid/view/View;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_0

    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 168
    check-cast v3, Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v3, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 172
    add-int/lit8 v2, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private getViewRectangle(Landroid/view/View;)Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 177
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 178
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 179
    new-instance v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    aget v2, v1, v5

    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    aget v5, v1, v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    aget v1, v1, v6

    add-int/2addr v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;IIII)V

    return-object v0
.end method


# virtual methods
.method public calculateViewablePercentage(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int v6, v1, v2

    .line 49
    int-to-float v1, v6

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return v0

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->visibleAdRectangle:Landroid/graphics/Rect;

    .line 55
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->rootView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getRootView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->rootView:Landroid/view/View;

    .line 61
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 65
    if-nez v3, :cond_2

    .line 67
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "AdContainer is null"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 73
    new-instance v1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    invoke-direct {v1, p0, p2}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;Landroid/graphics/Rect;)V

    add-int/lit8 v2, v0, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->findOverlapppingViews(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;ILandroid/view/ViewGroup;Ljava/util/List;Z)V

    .line 75
    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->getTotalAreaOfSetOfRectangles(Ljava/util/List;)I

    move-result v0

    .line 76
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    .line 77
    sub-int v0, v1, v0

    .line 78
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Visible area: %s , Total area: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    int-to-float v0, v0

    int-to-float v1, v6

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 80
    goto :goto_0
.end method

.method protected getTotalAreaOfSetOfRectangles(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [I

    move v1, v2

    .line 194
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    .line 197
    mul-int/lit8 v4, v1, 0x2

    .line 198
    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getLeft()I

    move-result v5

    aput v5, v3, v4

    .line 199
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getRight()I

    move-result v0

    aput v0, v3, v4

    .line 194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 206
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v0, v2

    .line 213
    :goto_1
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_2

    .line 215
    aget v1, v3, v2

    .line 216
    add-int/lit8 v4, v2, 0x1

    aget v4, v3, v4

    .line 218
    if-ne v1, v4, :cond_1

    .line 213
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :cond_1
    new-instance v5, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;

    invoke-direct {v5, p0, v1, v4}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;II)V

    .line 222
    invoke-virtual {p0, v5, p1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->getYRanges(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 223
    invoke-direct {p0, v5, v1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->computeArea(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 226
    :cond_2
    return v0
.end method

.method protected getYRanges(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    const/4 v2, 0x0

    .line 246
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 248
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;

    .line 249
    iget v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getRight()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getLeft()I

    move-result v5

    if-le v1, v5, :cond_3

    .line 252
    new-instance v1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getTop()I

    move-result v5

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Rectangle;->getBottom()I

    move-result v0

    invoke-direct {v1, p0, v5, v0}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;-><init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;II)V

    .line 253
    if-nez v2, :cond_0

    .line 256
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 246
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->isOverlap(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->mergeRange(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;)V

    move-object v0, v2

    goto :goto_1

    .line 267
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1

    .line 272
    :cond_2
    return-object v4

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method
