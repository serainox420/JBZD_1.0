.class Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VariantComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/imagepipeline/request/MediaVariations$Variant;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/common/ResizeOptions;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 443
    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/request/MediaVariations$Variant;)I
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$300(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    .line 448
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$300(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v1

    .line 450
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 459
    :goto_0
    return v0

    .line 453
    :cond_0
    if-eqz v0, :cond_1

    .line 454
    const/4 v0, -0x1

    goto :goto_0

    .line 455
    :cond_1
    if-eqz v1, :cond_2

    .line 456
    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 436
    check-cast p1, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    check-cast p2, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;->compare(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/request/MediaVariations$Variant;)I

    move-result v0

    return v0
.end method
