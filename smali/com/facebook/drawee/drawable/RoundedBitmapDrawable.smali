.class public Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RoundedBitmapDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/Rounded;
.implements Lcom/facebook/drawee/drawable/TransformAwareDrawable;


# instance fields
.field final mBitmapBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderPath:Landroid/graphics/Path;

.field final mBorderRadii:[F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mBorderWidth:F

.field final mBoundsTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final mCornerRadii:[F

.field final mDrawableBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mInverseParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mIsCircle:Z

.field private mIsPathDirty:Z

.field private mIsShaderTransformDirty:Z

.field private mLastBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field final mParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final mPath:Landroid/graphics/Path;

.field final mPrevBoundsTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mPrevParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mPrevRootBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mRadiiNonZero:Z

.field final mRootBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 5
    .param p3    # Landroid/graphics/Paint;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 38
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsCircle:Z

    .line 39
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRadiiNonZero:Z

    .line 40
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mCornerRadii:[F

    .line 41
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderRadii:[F

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    .line 56
    iput v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    .line 57
    iput v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderColor:I

    .line 58
    iput v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPath:Landroid/graphics/Path;

    .line 61
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    .line 62
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 65
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 76
    if-eqz p3, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    return-void
.end method

.method public static fromBitmapDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private updatePaint()V
    .locals 5

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mLastBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mLastBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mLastBitmap:Ljava/lang/ref/WeakReference;

    .line 321
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsShaderTransformDirty:Z

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 328
    :cond_2
    return-void
.end method

.method private updatePath()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 285
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 287
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    div-float/2addr v2, v6

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    div-float/2addr v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 288
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsCircle:Z

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v6

    .line 290
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 291
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 290
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    neg-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    neg-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 300
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 301
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 302
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsCircle:Z

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 304
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 305
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 306
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 303
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 311
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    neg-float v2, v2

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 312
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 313
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 315
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 293
    :goto_2
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderRadii:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 294
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderRadii:[F

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mCornerRadii:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    aput v3, v2, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mCornerRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1
.end method

.method private updateTransform()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/TransformCallback;->getTransform(Landroid/graphics/Matrix;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/TransformCallback;->getRootBounds(Landroid/graphics/RectF;)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 268
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    .line 269
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    iput-boolean v4, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 271
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 272
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 273
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 274
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 275
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iput-boolean v4, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 280
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 282
    :cond_2
    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 261
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->shouldRound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->updateTransform()V

    .line 234
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->updatePath()V

    .line 235
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->updatePaint()V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 238
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 239
    iget v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 241
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderColor:I

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/drawee/drawable/DrawableUtils;->multiplyColorAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 244
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    return v0
.end method

.method public getPadding()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    return v0
.end method

.method public getRadii()[F
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mCornerRadii:[F

    return-object v0
.end method

.method public isCircle()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsCircle:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 216
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 218
    :cond_0
    return-void
.end method

.method public setBorder(IF)V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderColor:I

    .line 166
    iput p2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 168
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 170
    :cond_1
    return-void
.end method

.method public setCircle(Z)V
    .locals 1

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsCircle:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 105
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 106
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 223
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 224
    return-void
.end method

.method public setPadding(F)V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 191
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mPadding:F

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 193
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 195
    :cond_0
    return-void
.end method

.method public setRadii([F)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    if-nez p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mCornerRadii:[F

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 138
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRadiiNonZero:Z

    .line 147
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 148
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 149
    return-void

    .line 140
    :cond_1
    array-length v0, p1

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "radii should have exactly 8 values"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mCornerRadii:[F

    invoke-static {p1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRadiiNonZero:Z

    move v3, v2

    .line 143
    :goto_1
    if-ge v3, v5, :cond_0

    .line 144
    iget-boolean v4, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRadiiNonZero:Z

    aget v0, p1, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRadiiNonZero:Z

    .line 143
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 140
    goto :goto_0

    :cond_3
    move v0, v2

    .line 144
    goto :goto_2
.end method

.method public setRadius(F)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 121
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 122
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mCornerRadii:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 123
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRadiiNonZero:Z

    .line 124
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsPathDirty:Z

    .line 125
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 126
    return-void

    :cond_1
    move v0, v2

    .line 121
    goto :goto_0
.end method

.method public setTransformCallback(Lcom/facebook/drawee/drawable/TransformCallback;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/TransformCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    .line 209
    return-void
.end method

.method shouldRound()Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mIsCircle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mRadiiNonZero:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedBitmapDrawable;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
