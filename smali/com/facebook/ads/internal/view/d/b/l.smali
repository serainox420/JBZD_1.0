.class public Lcom/facebook/ads/internal/view/d/b/l;
.super Landroid/widget/Button;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Path;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->e:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/l$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b/l$1;-><init>(Lcom/facebook/ads/internal/view/d/b/l;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->c:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/b/l;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/d/b/l;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x425c0000    # 55.0f

    const/high16 v7, 0x41e80000    # 29.0f

    const/high16 v6, 0x41d40000    # 26.5f

    const/high16 v5, 0x429e0000    # 79.0f

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/d/b/l;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    iget-boolean v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    mul-float v2, v6, v0

    const/high16 v3, 0x41780000    # 15.5f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    mul-float v2, v6, v0

    const/high16 v3, 0x42a90000    # 84.5f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    const/high16 v2, 0x42a50000    # 82.5f

    mul-float/2addr v2, v0

    const/high16 v3, 0x424a0000    # 50.5f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    mul-float v2, v6, v0

    const/high16 v3, 0x41780000    # 15.5f

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    mul-float v2, v7, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    mul-float v2, v7, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    const/high16 v2, 0x42340000    # 45.0f

    mul-float/2addr v2, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    const/high16 v2, 0x42340000    # 45.0f

    mul-float/2addr v2, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    mul-float v2, v7, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    mul-float v2, v8, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    mul-float v2, v8, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    const/high16 v2, 0x428e0000    # 71.0f

    mul-float/2addr v2, v0

    mul-float v3, v5, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    const/high16 v2, 0x428e0000    # 71.0f

    mul-float/2addr v2, v0

    mul-float v3, v4, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    mul-float v2, v8, v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/l;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/l;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/b/l;->e:Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/l;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b/l;->invalidate()V

    return-void
.end method
