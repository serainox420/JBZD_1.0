.class public Lcom/mopub/mobileads/resource/CtaButtonDrawable;
.super Lcom/mopub/mobileads/resource/BaseWidgetDrawable;
.source "CtaButtonDrawable.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Rect;

.field private final f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 24
    invoke-direct {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;-><init>()V

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 28
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToFloatPixels(FLandroid/content/Context;)F

    move-result v1

    .line 31
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->a:Landroid/graphics/Paint;

    .line 32
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->a:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 34
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->a:Landroid/graphics/Paint;

    sget-object v3, Lcom/mopub/mobileads/resource/DrawableConstants$CtaButton;->BACKGROUND_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->b:Landroid/graphics/Paint;

    .line 38
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->b:Landroid/graphics/Paint;

    sget-object v3, Lcom/mopub/mobileads/resource/DrawableConstants$CtaButton;->OUTLINE_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->b:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->c:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->c:Landroid/graphics/Paint;

    sget-object v2, Lcom/mopub/mobileads/resource/DrawableConstants$CtaButton;->TEXT_ALIGN:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->c:Landroid/graphics/Paint;

    sget-object v2, Lcom/mopub/mobileads/resource/DrawableConstants$CtaButton;->TEXT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->e:Landroid/graphics/Rect;

    .line 52
    const-string v0, "Learn More"

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->g:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->d:Landroid/graphics/RectF;

    .line 55
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->f:I

    .line 56
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->f:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public getCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setCtaText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->g:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->invalidateSelf()V

    .line 75
    return-void
.end method
