.class public Lcom/inmobi/re/container/CustomView;
.super Landroid/view/View;
.source "CustomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/re/container/CustomView$1;,
        Lcom/inmobi/re/container/CustomView$SwitchIconType;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Lcom/inmobi/re/container/CustomView$SwitchIconType;

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p3, p0, Lcom/inmobi/re/container/CustomView;->f:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    .line 34
    iput p2, p0, Lcom/inmobi/re/container/CustomView;->a:F

    .line 35
    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/re/container/CustomView;->g:I

    .line 36
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/re/container/CustomView;->b:F

    .line 37
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/re/container/CustomView;->c:F

    .line 38
    iget v0, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->c:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/re/container/CustomView;->d:F

    .line 39
    iget v0, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->c:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/re/container/CustomView;->e:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/CustomView;->j:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    .line 43
    return-void
.end method


# virtual methods
.method public disableView(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/CustomView;->setClickable(Z)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/CustomView;->setEnabled(Z)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, v1}, Lcom/inmobi/re/container/CustomView;->setClickable(Z)V

    .line 162
    invoke-virtual {p0, v1}, Lcom/inmobi/re/container/CustomView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v8, -0x1000000

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v5, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 49
    sget-object v0, Lcom/inmobi/re/container/CustomView$1;->a:[I

    iget-object v1, p0, Lcom/inmobi/re/container/CustomView;->f:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/re/container/CustomView$SwitchIconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget v0, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->c:F

    iget-object v3, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 56
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget v1, p0, Lcom/inmobi/re/container/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->e:F

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->e:F

    iget-object v5, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    iget v1, p0, Lcom/inmobi/re/container/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->e:F

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->e:F

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->d:F

    iget-object v5, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    iget v0, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->c:F

    iget-object v3, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget v0, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->b:F

    iget-object v3, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 73
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 74
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 80
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 89
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 90
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 96
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 104
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 105
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 107
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 112
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 121
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v5, v5

    iget v6, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    iget-object v1, p0, Lcom/inmobi/re/container/CustomView;->j:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 129
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 134
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 139
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    iget-object v0, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/re/container/CustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/re/container/CustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/inmobi/re/container/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/inmobi/re/container/CustomView;->f:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    .line 151
    return-void
.end method
