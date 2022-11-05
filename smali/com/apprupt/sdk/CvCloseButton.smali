.class Lcom/apprupt/sdk/CvCloseButton;
.super Landroid/view/View;
.source "CvCloseButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvCloseButton$Listener;
    }
.end annotation


# static fields
.field public static a:F


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:F

.field private j:Lcom/apprupt/sdk/CvCloseButton$Listener;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/apprupt/sdk/CvCloseButton;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->b:Landroid/graphics/Paint;

    .line 28
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->c:Landroid/graphics/RectF;

    .line 29
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->d:Landroid/graphics/Paint;

    .line 30
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->e:Landroid/graphics/Paint;

    .line 31
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->f:Landroid/graphics/Paint;

    .line 32
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->g:Landroid/graphics/RectF;

    .line 33
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    .line 34
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/apprupt/sdk/CvCloseButton;->i:F

    .line 35
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->j:Lcom/apprupt/sdk/CvCloseButton$Listener;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->k:Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Lcom/apprupt/sdk/CvCloseButton;->a()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->b:Landroid/graphics/Paint;

    .line 28
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->c:Landroid/graphics/RectF;

    .line 29
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->d:Landroid/graphics/Paint;

    .line 30
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->e:Landroid/graphics/Paint;

    .line 31
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->f:Landroid/graphics/Paint;

    .line 32
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->g:Landroid/graphics/RectF;

    .line 33
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    .line 34
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/apprupt/sdk/CvCloseButton;->i:F

    .line 35
    iput-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->j:Lcom/apprupt/sdk/CvCloseButton$Listener;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->k:Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Lcom/apprupt/sdk/CvCloseButton;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apprupt/sdk/adview/CloseButtonPosition;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvCloseButton;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/apprupt/sdk/CvCloseButton;->a(Lcom/apprupt/sdk/adview/CloseButtonPosition;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvCloseButton;)Lcom/apprupt/sdk/CvCloseButton$Listener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->j:Lcom/apprupt/sdk/CvCloseButton$Listener;

    return-object v0
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xff

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/apprupt/sdk/CvCloseButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    :cond_0
    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/CvCloseButton;->setClickable(Z)V

    .line 87
    new-instance v0, Lcom/apprupt/sdk/CvCloseButton$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvCloseButton$1;-><init>(Lcom/apprupt/sdk/CvCloseButton;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->b:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->b:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->d:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->d:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->e:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->e:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->f:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->f:Landroid/graphics/Paint;

    invoke-static {v3, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvCloseButton;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/CvCloseButton$Listener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/apprupt/sdk/CvCloseButton;->j:Lcom/apprupt/sdk/CvCloseButton$Listener;

    .line 79
    return-void
.end method

.method public a(Lcom/apprupt/sdk/adview/CloseButtonPosition;)V
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/apprupt/sdk/CvCloseButton;->a:F

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    .line 57
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-ne p1, v0, :cond_0

    .line 59
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    :goto_0
    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/CvCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-ne p1, v0, :cond_3

    .line 62
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    :goto_1
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_CENTER:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_LEFT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-ne p1, v0, :cond_6

    .line 69
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 63
    :cond_3
    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->TOP_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/apprupt/sdk/adview/CloseButtonPosition;->BOTTOM_RIGHT:Lcom/apprupt/sdk/adview/CloseButtonPosition;

    if-ne p1, v0, :cond_5

    .line 64
    :cond_4
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 66
    :cond_5
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 71
    :cond_6
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/apprupt/sdk/CvCloseButton;->a:F

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/apprupt/sdk/CvCloseButton;->a:F

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    .line 191
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 196
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 209
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    .line 210
    iget-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v4, v1, v2

    .line 211
    iget-object v1, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    .line 212
    iget-object v2, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    .line 213
    iget-object v3, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v3, v5

    sub-float/2addr v3, v0

    .line 214
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v0, v5

    sub-float v4, v0, v4

    .line 216
    iget-object v0, p0, Lcom/apprupt/sdk/CvCloseButton;->e:Landroid/graphics/Paint;

    iget v5, p0, Lcom/apprupt/sdk/CvCloseButton;->i:F

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    iget-object v10, p0, Lcom/apprupt/sdk/CvCloseButton;->e:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v3

    move v7, v2

    move v8, v1

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v0, "CLOSE_BUTTON"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Close button cannot render"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getSuggestedMinimumWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getSuggestedMinimumHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/apprupt/sdk/CvCloseButton;->setMeasuredDimension(II)V

    .line 138
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 148
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 149
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 151
    int-to-float v2, p1

    sub-float v0, v2, v0

    .line 152
    int-to-float v2, p2

    sub-float v1, v2, v1

    .line 159
    const v2, 0x3ef5c28f    # 0.48f

    mul-float/2addr v2, v0

    .line 160
    const v3, 0x3ef5c28f    # 0.48f

    mul-float/2addr v3, v1

    .line 162
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, 0x3d75c28f    # 0.06f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/apprupt/sdk/CvCloseButton;->i:F

    .line 163
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, 0x3d23d70a    # 0.04f

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 165
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->c:Landroid/graphics/RectF;

    .line 170
    iget-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->c:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 172
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->g:Landroid/graphics/RectF;

    .line 177
    iget-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eb851ec    # 0.36f

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e23d70a    # 0.16f

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 180
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    sub-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v4

    sub-float/2addr v3, v8

    invoke-direct {v5, v6, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    .line 185
    iget-object v2, p0, Lcom/apprupt/sdk/CvCloseButton;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    const v5, 0x3eb851ec    # 0.36f

    mul-float/2addr v0, v5

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvCloseButton;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    const v4, 0x3e23d70a    # 0.16f

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 186
    return-void
.end method
