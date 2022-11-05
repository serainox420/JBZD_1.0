.class Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;
.super Ljava/lang/Object;
.source "ViewabilityOverlapCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ViewabilityOverlapCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Range"
.end annotation


# instance fields
.field high:I

.field low:I

.field final synthetic this$0:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/ViewabilityOverlapCalculator;II)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->this$0:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p2, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    .line 286
    iput p3, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    .line 287
    return-void
.end method


# virtual methods
.method public isOverlap(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;)Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    iget v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    iget v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeRange(Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;)V
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    iget v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    if-le v0, v1, :cond_0

    iget v0, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    :goto_0
    iput v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    .line 297
    iget v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    iget v1, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    :goto_1
    iput v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    .line 298
    return-void

    .line 296
    :cond_0
    iget v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->low:I

    goto :goto_0

    .line 297
    :cond_1
    iget v0, p0, Lcom/amazon/device/ads/ViewabilityOverlapCalculator$Range;->high:I

    goto :goto_1
.end method
