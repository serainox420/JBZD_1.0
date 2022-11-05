.class Lcom/intentsoftware/addapptr/fullscreens/a;
.super Landroid/graphics/drawable/Drawable;
.source "CloseDrawable.java"


# static fields
.field private static final SHADOW_COLORS:[I

.field private static final SHADOW_POSITIONS:[F


# instance fields
.field private final enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/a;->SHADOW_COLORS:[I

    .line 24
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/intentsoftware/addapptr/fullscreens/a;->SHADOW_POSITIONS:[F

    return-void

    .line 19
    :array_0
    .array-data 4
        -0x78000000
        -0x78000000
        0x0
    .end array-data

    .line 24
    :array_1
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/a;->enabled:Z

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/intentsoftware/addapptr/fullscreens/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v4, v3

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v6, v2

    .line 44
    add-float v2, v6, v4

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 45
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v5, v2, v3

    .line 46
    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    .line 47
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v11, v2, v3

    .line 48
    const v2, 0x3e4ccccd    # 0.2f

    mul-float v12, v11, v2

    .line 49
    const v2, 0x3f0ccccd    # 0.55f

    mul-float v13, v12, v2

    .line 50
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v14, v12, v2

    .line 51
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v15, v13, v2

    .line 55
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/intentsoftware/addapptr/fullscreens/a;->enabled:Z

    if-eqz v2, :cond_0

    .line 56
    const/4 v3, -0x1

    .line 57
    const/high16 v2, -0x1000000

    move v9, v2

    move v10, v3

    .line 63
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 64
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v6, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v4, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 66
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 67
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 69
    new-instance v2, Landroid/graphics/RadialGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/intentsoftware/addapptr/fullscreens/a;->SHADOW_COLORS:[I

    sget-object v7, Lcom/intentsoftware/addapptr/fullscreens/a;->SHADOW_POSITIONS:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    const/4 v2, 0x0

    const/4 v3, 0x0

    sub-float v4, v11, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 79
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-direct {v2, v15}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 81
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 82
    const/high16 v2, 0x42340000    # 45.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 83
    neg-float v3, v13

    neg-float v2, v11

    add-float v4, v2, v14

    sub-float v6, v11, v14

    move-object/from16 v2, p1

    move v5, v13

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    neg-float v2, v11

    add-float v3, v2, v14

    neg-float v4, v13

    sub-float v5, v11, v14

    move-object/from16 v2, p1

    move v6, v13

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 89
    return-void

    .line 59
    :cond_0
    const/high16 v3, -0x1000000

    .line 60
    const/4 v2, -0x1

    move v9, v2

    move v10, v3

    goto/16 :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
