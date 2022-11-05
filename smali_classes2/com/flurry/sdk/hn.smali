.class public final Lcom/flurry/sdk/hn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:F

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/drawable/shapes/PathShape;

.field private g:Landroid/graphics/drawable/ShapeDrawable;

.field private h:I

.field private i:Landroid/graphics/RectF;

.field private final j:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/flurry/sdk/hn;->e:Landroid/graphics/Path;

    .line 30
    iput-object v1, p0, Lcom/flurry/sdk/hn;->f:Landroid/graphics/drawable/shapes/PathShape;

    .line 31
    iput-object v1, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    .line 32
    iput-object v1, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hn;->h:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hn;->b:F

    .line 36
    iput-object v1, p0, Lcom/flurry/sdk/hn;->i:Landroid/graphics/RectF;

    .line 38
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/flurry/sdk/hn;->j:F

    .line 58
    const/4 v0, 0x3

    sput v0, Lcom/flurry/sdk/hn;->c:I

    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/flurry/sdk/hn;->d:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/flurry/sdk/hn;->e:Landroid/graphics/Path;

    .line 30
    iput-object v1, p0, Lcom/flurry/sdk/hn;->f:Landroid/graphics/drawable/shapes/PathShape;

    .line 31
    iput-object v1, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    .line 32
    iput-object v1, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hn;->h:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/hn;->b:F

    .line 36
    iput-object v1, p0, Lcom/flurry/sdk/hn;->i:Landroid/graphics/RectF;

    .line 38
    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/flurry/sdk/hn;->j:F

    .line 49
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/hn;->c:I

    .line 50
    invoke-static {v2}, Lcom/flurry/sdk/lw;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/hn;->d:I

    .line 1195
    if-ge p2, p3, :cond_0

    .line 1196
    div-int/lit8 v0, p2, 0x2

    .line 51
    :goto_0
    iput v0, p0, Lcom/flurry/sdk/hn;->h:I

    .line 2097
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 2098
    iget-object v0, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2099
    iget-object v0, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2100
    iget-object v0, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2101
    iget-object v0, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    return-void

    .line 1198
    :cond_0
    div-int/lit8 v0, p3, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/hn;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 25
    .line 2135
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hn;->i:Landroid/graphics/RectF;

    .line 2136
    iget-object v0, p0, Lcom/flurry/sdk/hn;->i:Landroid/graphics/RectF;

    sget v1, Lcom/flurry/sdk/hn;->c:I

    int-to-float v1, v1

    sget v2, Lcom/flurry/sdk/hn;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/flurry/sdk/hn;->h:I

    sget v4, Lcom/flurry/sdk/hn;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/flurry/sdk/hn;->h:I

    sget v5, Lcom/flurry/sdk/hn;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2137
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hn;->e:Landroid/graphics/Path;

    .line 2138
    iget-object v0, p0, Lcom/flurry/sdk/hn;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/flurry/sdk/hn;->i:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    neg-int v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/flurry/sdk/hn;->b:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 2139
    new-instance v0, Landroid/graphics/drawable/shapes/PathShape;

    iget-object v1, p0, Lcom/flurry/sdk/hn;->e:Landroid/graphics/Path;

    iget v2, p0, Lcom/flurry/sdk/hn;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/flurry/sdk/hn;->h:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    iput-object v0, p0, Lcom/flurry/sdk/hn;->f:Landroid/graphics/drawable/shapes/PathShape;

    .line 2140
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/flurry/sdk/hn;->f:Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    .line 2141
    iget-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/flurry/sdk/hn;->h:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 2142
    iget-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/flurry/sdk/hn;->h:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 2143
    iget-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2144
    iget-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2145
    iget-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/flurry/sdk/hn;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2146
    iget-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2148
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2149
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2150
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2151
    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 2153
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v7

    iget-object v0, p0, Lcom/flurry/sdk/hn;->g:Landroid/graphics/drawable/ShapeDrawable;

    aput-object v0, v1, v6

    .line 2156
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2120
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 2121
    iget-object v1, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    .line 2123
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
