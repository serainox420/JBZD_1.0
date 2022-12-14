.class public Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    }
.end annotation


# instance fields
.field private final mDecodeCancellationEnabled:Z

.field private final mExternalCreatedBitmapLogEnabled:Z

.field private final mForceSmallCacheThresholdBytes:I

.field private final mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

.field private final mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuppressBitmapPrefetching:Z

.field private final mUseDownsamplingRatioForResizing:Z

.field private final mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

.field private final mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

.field private final mWebpSupportEnabled:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$000(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mForceSmallCacheThresholdBytes:I

    .line 39
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$100(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpSupportEnabled:Z

    .line 40
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mExternalCreatedBitmapLogEnabled:Z

    .line 41
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;

    .line 51
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$500(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mDecodeCancellationEnabled:Z

    .line 54
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 55
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$800(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mSuppressBitmapPrefetching:Z

    .line 56
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$900(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mUseDownsamplingRatioForResizing:Z

    .line 57
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method

.method public static newBuilder(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-object v0
.end method


# virtual methods
.method public getForceSmallCacheThresholdBytes()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mForceSmallCacheThresholdBytes:I

    return v0
.end method

.method public getMediaIdExtractor()Lcom/facebook/imagepipeline/cache/MediaIdExtractor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    return-object v0
.end method

.method public getMediaVariationsIndexEnabled()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseDownsamplingRatioForResizing()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mUseDownsamplingRatioForResizing:Z

    return v0
.end method

.method public getWebpBitmapFactory()Lcom/facebook/common/webp/WebpBitmapFactory;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    return-object v0
.end method

.method public getWebpErrorLogger()Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    return-object v0
.end method

.method public isDecodeCancellationEnabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mDecodeCancellationEnabled:Z

    return v0
.end method

.method public isExternalCreatedBitmapLogEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mExternalCreatedBitmapLogEnabled:Z

    return v0
.end method

.method public isWebpSupportEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpSupportEnabled:Z

    return v0
.end method
