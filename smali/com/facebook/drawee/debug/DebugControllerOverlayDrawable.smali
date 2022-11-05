.class public Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DebugControllerOverlayDrawable.java"


# static fields
.field private static final IMAGE_SIZE_THRESHOLD_NOT_OK:F = 0.5f

.field private static final IMAGE_SIZE_THRESHOLD_OK:F = 0.1f

.field private static final MAX_LINE_WIDTH_EM:I = 0x7

.field private static final MAX_NUMBER_OF_LINES:I = 0x7

.field private static final MAX_TEXT_SIZE_PX:I = 0x28

.field private static final MIN_TEXT_SIZE_PX:I = 0xc

.field private static final NO_CONTROLLER_ID:Ljava/lang/String; = "none"

.field private static final OUTLINE_COLOR:I = -0x6800

.field private static final OUTLINE_STROKE_WIDTH_PX:I = 0x2

.field static final OVERLAY_COLOR_IMAGE_ALMOST_OK:I = 0x66ff9800
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field static final OVERLAY_COLOR_IMAGE_NOT_OK:I = 0x66f44336
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field static final OVERLAY_COLOR_IMAGE_OK:I = 0x664caf50
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private static final TEXT_COLOR:I = -0x1

.field private static final TEXT_LINE_SPACING_PX:I = 0x8

.field private static final TEXT_PADDING_PX:I = 0xa


# instance fields
.field private mControllerId:Ljava/lang/String;

.field private mCurrentTextXPx:I

.field private mCurrentTextYPx:I

.field private mFrameCount:I

.field private mHeightPx:I

.field private mImageFormat:Ljava/lang/String;

.field private mImageSizeBytes:I

.field private mLineIncrementPx:I

.field private mLoopCount:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;

.field private final mRectF:Landroid/graphics/RectF;

.field private mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private mStartTextXPx:I

.field private mStartTextYPx:I

.field private mTextGravity:I

.field private mWidthPx:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 74
    const/16 v0, 0x50

    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mTextGravity:I

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    .line 89
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->reset()V

    .line 90
    return-void
.end method

.method private varargs addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    if-nez p3, :cond_0

    .line 229
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextXPx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextYPx:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    :goto_0
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextYPx:I

    iget v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mLineIncrementPx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextYPx:I

    .line 234
    return-void

    .line 231
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextXPx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextYPx:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private prepareDebugTextParameters(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 214
    const/16 v1, 0x28

    const/16 v2, 0xc

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 217
    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mLineIncrementPx:I

    .line 218
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mTextGravity:I

    if-ne v0, v3, :cond_0

    .line 219
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mLineIncrementPx:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mLineIncrementPx:I

    .line 221
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mStartTextXPx:I

    .line 222
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mTextGravity:I

    if-ne v0, v3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0xa

    :goto_0
    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mStartTextYPx:I

    .line 225
    return-void

    .line 222
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method


# virtual methods
.method determineOverlayColor(IILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)I
    .locals 12
    .param p3    # Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const v9, 0x66f44336

    const/high16 v11, 0x3f000000    # 0.5f

    const v10, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 242
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 244
    if-lez v8, :cond_0

    if-lez v7, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    move v0, v9

    .line 293
    :goto_0
    return v0

    .line 251
    :cond_1
    if-eqz p3, :cond_4

    .line 253
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 254
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 255
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRect:Landroid/graphics/Rect;

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 257
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 260
    iget-object v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRect:Landroid/graphics/Rect;

    move-object v0, p3

    move v3, p1

    move v4, p2

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->getTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 262
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    iput v5, v1, Landroid/graphics/RectF;->top:F

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 263
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 264
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 266
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 268
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 269
    iget-object v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v2, v1

    .line 271
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 272
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 276
    :goto_1
    int-to-float v2, v1

    mul-float/2addr v2, v10

    .line 277
    int-to-float v3, v1

    mul-float/2addr v3, v11

    .line 278
    int-to-float v4, v0

    mul-float/2addr v4, v10

    .line 279
    int-to-float v5, v0

    mul-float/2addr v5, v11

    .line 282
    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 283
    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 286
    int-to-float v6, v1

    cmpg-float v2, v6, v2

    if-gez v2, :cond_2

    int-to-float v2, v0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 288
    const v0, 0x664caf50

    goto :goto_0

    .line 289
    :cond_2
    int-to-float v1, v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    int-to-float v0, v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    .line 291
    const v0, 0x66ff9800

    goto/16 :goto_0

    :cond_3
    move v0, v9

    .line 293
    goto/16 :goto_0

    :cond_4
    move v0, v7

    move v1, v8

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 163
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x6800

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mWidthPx:I

    iget v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mHeightPx:I

    iget-object v3, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->determineOverlayColor(IILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mStartTextXPx:I

    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextXPx:I

    .line 179
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mStartTextYPx:I

    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mCurrentTextYPx:I

    .line 181
    const-string v0, "ID: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mControllerId:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string v0, "D: %dx%d"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const-string v0, "I: %dx%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mWidthPx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mHeightPx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const-string v0, "I: %d KiB"

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mImageSizeBytes:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mImageFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "i format: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mImageFormat:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_0
    iget v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mFrameCount:I

    if-lez v0, :cond_1

    .line 189
    const-string v0, "anim: f %d, l %d"

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mFrameCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mLoopCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eqz v0, :cond_2

    .line 192
    const-string v0, "scale: %s"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v2, v1, v7

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->addDebugText(Landroid/graphics/Canvas;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 150
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 155
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->prepareDebugTextParameters(Landroid/graphics/Rect;II)V

    .line 156
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mWidthPx:I

    .line 94
    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mHeightPx:I

    .line 95
    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mImageSizeBytes:I

    .line 96
    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mFrameCount:I

    .line 97
    iput v0, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mLoopCount:I

    .line 98
    iput-object v1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mImageFormat:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->setControllerId(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->invalidateSelf()V

    .line 101
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public setAnimationInfo(II)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mFrameCount:I

    .line 128
    iput p2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mLoopCount:I

    .line 129
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->invalidateSelf()V

    .line 130
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public setControllerId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mControllerId:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->invalidateSelf()V

    .line 118
    return-void

    .line 116
    :cond_0
    const-string p1, "none"

    goto :goto_0
.end method

.method public setDimensions(II)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mWidthPx:I

    .line 122
    iput p2, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mHeightPx:I

    .line 123
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->invalidateSelf()V

    .line 124
    return-void
.end method

.method public setImageFormat(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mImageFormat:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setImageSize(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mImageSizeBytes:I

    .line 138
    return-void
.end method

.method public setScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 146
    return-void
.end method

.method public setTextGravity(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->mTextGravity:I

    .line 112
    invoke-virtual {p0}, Lcom/facebook/drawee/debug/DebugControllerOverlayDrawable;->invalidateSelf()V

    .line 113
    return-void
.end method
