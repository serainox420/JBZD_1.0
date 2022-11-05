.class public Lcom/applovin/impl/adview/ao;
.super Lcom/applovin/impl/adview/u;


# instance fields
.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/u;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/applovin/impl/adview/ao;->c:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/applovin/impl/adview/ao;->d:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/applovin/impl/adview/ao;->e:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/applovin/impl/adview/ao;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/impl/adview/ao;->g:F

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/ao;->c:F

    iget v1, p0, Lcom/applovin/impl/adview/ao;->g:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/adview/ao;->g:F

    return-void
.end method

.method public a(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/applovin/impl/adview/ao;->c:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/ao;->a(F)V

    return-void
.end method

.method protected b()F
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/ao;->e:F

    iget v1, p0, Lcom/applovin/impl/adview/ao;->g:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected c()F
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/ao;->f:F

    iget v1, p0, Lcom/applovin/impl/adview/ao;->g:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected d()F
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->a()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected e()F
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/ao;->d:F

    iget v1, p0, Lcom/applovin/impl/adview/ao;->g:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected f()F
    .locals 2

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->d()F

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->e()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/applovin/impl/adview/u;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->d()F

    move-result v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->f()F

    move-result v3

    invoke-virtual {p1, v0, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->c()F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/ao;->a()F

    move-result v0

    sub-float v3, v0, v1

    move-object v0, p1

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v0, p1

    move v2, v3

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
