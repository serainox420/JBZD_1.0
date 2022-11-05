.class public Lcom/mopub/mobileads/resource/ProgressBarDrawable;
.super Lcom/mopub/mobileads/resource/BaseWidgetDrawable;
.source "ProgressBarDrawable.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-direct {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 29
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    sget-object v1, Lcom/mopub/mobileads/resource/DrawableConstants$ProgressBar;->BACKGROUND_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    sget v1, Lcom/mopub/mobileads/resource/DrawableConstants$ProgressBar;->PROGRESS_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    sget-object v1, Lcom/mopub/mobileads/resource/DrawableConstants$ProgressBar;->PROGRESS_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->h:I

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 47
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 48
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 55
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->d:I

    iget v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    if-ge v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->g:F

    mul-float/2addr v1, v0

    .line 58
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->h:I

    int-to-float v0, v0

    add-float v3, v1, v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 64
    :cond_0
    return-void
.end method

.method public forceCompletion()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    iput v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    .line 102
    return-void
.end method

.method public getCurrentProgress()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    return v0
.end method

.method public getSkipRatio()F
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->g:F

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    .line 68
    return-void
.end method

.method public setDurationAndSkipOffset(II)V
    .locals 2

    .prologue
    .line 71
    iput p1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    .line 72
    iput p2, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->d:I

    .line 73
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->g:F

    .line 74
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .prologue
    .line 86
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    if-lt p1, v0, :cond_1

    .line 87
    iput p1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    .line 88
    iput p1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->invalidateSelf()V

    .line 97
    return-void

    .line 89
    :cond_1
    if-eqz p1, :cond_0

    .line 90
    const-string v0, "Progress not monotonically increasing: last = %d, current = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->forceCompletion()V

    goto :goto_0
.end method
