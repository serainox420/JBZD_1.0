.class public Lcom/mopub/mobileads/resource/RadialCountdownDrawable;
.super Lcom/mopub/mobileads/resource/BaseWidgetDrawable;
.source "RadialCountdownDrawable.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Rect;

.field private e:I

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 24
    invoke-direct {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;-><init>()V

    .line 25
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 27
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToFloatPixels(FLandroid/content/Context;)F

    move-result v1

    .line 31
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    .line 32
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 34
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    sget-object v3, Lcom/mopub/mobileads/resource/DrawableConstants$RadialCountdown;->BACKGROUND_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    .line 40
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    sget-object v3, Lcom/mopub/mobileads/resource/DrawableConstants$RadialCountdown;->PROGRESS_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    sget-object v2, Lcom/mopub/mobileads/resource/DrawableConstants$RadialCountdown;->TEXT_ALIGN:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->d:Landroid/graphics/Rect;

    .line 54
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 64
    iget v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 68
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->g:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 69
    return-void
.end method

.method public getInitialCountdownMilliseconds()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iget v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->e:I

    return v0
.end method

.method public setInitialCountdown(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->e:I

    .line 73
    return-void
.end method

.method public updateCountdownProgress(I)V
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->e:I

    sub-int/2addr v0, p1

    .line 77
    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/mopub/common/util/Numbers;->convertMillisecondsToSecondsRoundedUp(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->f:I

    .line 78
    const/high16 v0, 0x43b40000    # 360.0f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->g:F

    .line 79
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->invalidateSelf()V

    .line 80
    return-void
.end method
