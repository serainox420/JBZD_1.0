.class public Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_JPEG_QUALITY:I = 0x55
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private static final DOWNSAMPLE_ENUMERATOR_KEY:Ljava/lang/String; = "downsampleEnumerator"

.field private static final FRACTION_KEY:Ljava/lang/String; = "Fraction"

.field private static final FULL_ROUND:I = 0x168

.field static final MAX_JPEG_SCALE_NUMERATOR:I = 0x8
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_TRANSFORM_INTERVAL_MS:I = 0x64
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private static final ORIGINAL_SIZE_KEY:Ljava/lang/String; = "Original size"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "ResizeAndRotateProducer"

.field private static final REQUESTED_SIZE_KEY:Ljava/lang/String; = "Requested size"

.field private static final ROTATION_ANGLE_KEY:Ljava/lang/String; = "rotationAngle"

.field private static final SOFTWARE_ENUMERATOR_KEY:Ljava/lang/String; = "softwareEnumerator"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

.field private final mResizingEnabled:Z

.field private final mUseDownsamplingRatio:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/PooledByteBufferFactory;ZLcom/facebook/imagepipeline/producers/Producer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/common/memory/PooledByteBufferFactory;",
            "Z",
            "Lcom/facebook/imagepipeline/producers/Producer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 72
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBufferFactory;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 73
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mResizingEnabled:Z

    .line 74
    invoke-static {p4}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/Producer;

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 75
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mUseDownsamplingRatio:Z

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mResizingEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->shouldTransform(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Lcom/facebook/common/memory/PooledByteBufferFactory;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->getSoftwareNumerator(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mUseDownsamplingRatio:Z

    return v0
.end method

.method static calculateDownsampleNumerator(I)I
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x1

    const/16 v1, 0x8

    div-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static determineResizeRatio(Lcom/facebook/imagepipeline/common/ResizeOptions;II)F
    .locals 3
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 271
    if-nez p0, :cond_1

    .line 272
    const/high16 v0, 0x3f800000    # 1.0f

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 276
    iget v1, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 277
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 279
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 280
    iget v0, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 282
    :cond_2
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 283
    iget v0, p0, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private static extractOrientationFromMetadata(Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 337
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 335
    :sswitch_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result v0

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private static getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->rotationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    const/4 v0, 0x0

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->extractOrientationFromMetadata(Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    .line 324
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->getForcedAngle()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method private static getSoftwareNumerator(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 296
    if-nez p2, :cond_1

    move v0, v2

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v5

    .line 300
    if-nez v5, :cond_2

    move v0, v2

    .line 301
    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    .line 305
    const/16 v3, 0x5a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_4

    :cond_3
    move v4, v1

    .line 306
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    move v3, v0

    .line 308
    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    .line 311
    :goto_3
    invoke-static {v5, v3, v0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->determineResizeRatio(Lcom/facebook/imagepipeline/common/ResizeOptions;II)F

    move-result v0

    .line 312
    iget v3, v5, Lcom/facebook/imagepipeline/common/ResizeOptions;->roundUpFraction:F

    invoke-static {v0, v3}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->roundNumerator(FF)I

    move-result v0

    .line 313
    if-le v0, v2, :cond_7

    move v0, v2

    .line 314
    goto :goto_0

    .line 305
    :cond_4
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .line 307
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    move v3, v0

    goto :goto_2

    .line 309
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    goto :goto_3

    .line 316
    :cond_7
    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static roundNumerator(FF)I
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 289
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private static shouldResize(I)Z
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldRotate(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)Z
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->canDeferUntilRendered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldTransform(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)Lcom/facebook/common/util/TriState;
    .locals 2

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    sget-object v0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 261
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_2

    .line 259
    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->shouldRotate(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->getSoftwareNumerator(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/EncodedImage;Z)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->shouldResize(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 261
    :goto_1
    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    new-instance v1, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer$TransformingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/ResizeAndRotateProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 83
    return-void
.end method
