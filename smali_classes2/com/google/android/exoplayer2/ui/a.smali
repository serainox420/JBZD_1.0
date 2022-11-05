.class final Lcom/google/android/exoplayer2/ui/a;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/text/StaticLayout;

.field private F:I

.field private G:I

.field private H:I

.field private I:Landroid/graphics/Rect;

.field private final a:Landroid/graphics/RectF;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:Landroid/text/TextPaint;

.field private final i:Landroid/graphics/Paint;

.field private j:Ljava/lang/CharSequence;

.field private k:Landroid/text/Layout$Alignment;

.field private l:Landroid/graphics/Bitmap;

.field private m:F

.field private n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:F

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/graphics/RectF;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->g:F

    .line 106
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->f:F

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 111
    const/high16 v1, 0x40000000    # 2.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 112
    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->b:F

    .line 113
    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->c:F

    .line 114
    int-to-float v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->d:F

    .line 115
    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/a;->e:F

    .line 117
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->i:Landroid/graphics/Paint;

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private a()V
    .locals 15

    .prologue
    .line 226
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->C:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->A:I

    sub-int v8, v0, v1

    .line 227
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    sub-int v10, v0, v1

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->y:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 230
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->y:F

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v11, v0

    .line 232
    mul-int/lit8 v0, v11, 0x2

    sub-int v3, v8, v0

    .line 233
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->r:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 234
    int-to-float v0, v3

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->r:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 236
    :cond_0
    if-gtz v3, :cond_1

    .line 237
    const-string v0, "SubtitlePainter"

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->k:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 242
    :goto_1
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->f:F

    iget v6, p0, Lcom/google/android/exoplayer2/ui/a;->g:F

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    .line 245
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    .line 247
    const/4 v0, 0x0

    move v14, v0

    move v0, v1

    move v1, v14

    :goto_2
    if-ge v1, v6, :cond_3

    .line 248
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->k:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 250
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->r:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    if-ge v0, v3, :cond_f

    .line 253
    :goto_3
    mul-int/lit8 v0, v11, 0x2

    add-int v2, v3, v0

    .line 257
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->p:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 258
    int-to-float v0, v8

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->p:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->A:I

    add-int/2addr v0, v1

    .line 259
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->q:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    sub-int/2addr v0, v2

    .line 262
    :cond_4
    :goto_4
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->A:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 263
    add-int v0, v1, v2

    iget v2, p0, Lcom/google/android/exoplayer2/ui/a;->C:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v9, v1

    .line 269
    :goto_5
    sub-int v3, v0, v9

    .line 270
    if-gtz v3, :cond_7

    .line 271
    const-string v0, "SubtitlePainter"

    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 259
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->q:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 265
    :cond_6
    sub-int v0, v8, v2

    div-int/lit8 v1, v0, 0x2

    .line 266
    add-int v0, v1, v2

    move v9, v1

    goto :goto_5

    .line 276
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    .line 278
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->n:I

    if-nez v0, :cond_a

    .line 279
    int-to-float v0, v10

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    add-int/2addr v0, v1

    .line 289
    :goto_6
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    sub-int/2addr v0, v5

    .line 292
    :cond_8
    :goto_7
    add-int v1, v0, v5

    iget v2, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    if-le v1, v2, :cond_d

    .line 293
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    sub-int/2addr v0, v5

    :cond_9
    :goto_8
    move v8, v0

    .line 302
    :goto_9
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->f:F

    iget v6, p0, Lcom/google/android/exoplayer2/ui/a;->g:F

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    .line 304
    iput v9, p0, Lcom/google/android/exoplayer2/ui/a;->F:I

    .line 305
    iput v8, p0, Lcom/google/android/exoplayer2/ui/a;->G:I

    .line 306
    iput v11, p0, Lcom/google/android/exoplayer2/ui/a;->H:I

    goto/16 :goto_0

    .line 282
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 283
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b

    .line 284
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    add-int/2addr v0, v1

    goto :goto_6

    .line 286
    :cond_b
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    add-int/2addr v0, v1

    goto :goto_6

    .line 289
    :cond_c
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->o:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 294
    :cond_d
    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    if-ge v0, v1, :cond_9

    .line 295
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    goto :goto_8

    .line 298
    :cond_e
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    sub-int/2addr v0, v5

    int-to-float v1, v10

    iget v2, p0, Lcom/google/android/exoplayer2/ui/a;->z:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    move v8, v0

    goto :goto_9

    :cond_f
    move v3, v0

    goto/16 :goto_3
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 332
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/a;->E:Landroid/text/StaticLayout;

    .line 333
    if-nez v9, :cond_0

    .line 388
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 339
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->F:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->G:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->v:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->H:I

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/google/android/exoplayer2/ui/a;->H:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/a;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 347
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->u:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    .line 350
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    move v1, v0

    move v0, v8

    .line 351
    :goto_1
    if-ge v0, v3, :cond_2

    .line 352
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    iget v11, p0, Lcom/google/android/exoplayer2/ui/a;->H:I

    int-to-float v11, v11

    sub-float/2addr v5, v11

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 353
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v5

    iget v11, p0, Lcom/google/android/exoplayer2/ui/a;->H:I

    int-to-float v11, v11

    add-float/2addr v5, v11

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 354
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/graphics/RectF;

    iput v1, v4, Landroid/graphics/RectF;->top:F

    .line 355
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 356
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 357
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/graphics/RectF;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->b:F

    iget v11, p0, Lcom/google/android/exoplayer2/ui/a;->b:F

    iget-object v12, p0, Lcom/google/android/exoplayer2/ui/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->x:I

    if-ne v0, v7, :cond_4

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->c:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->w:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 366
    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 382
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->t:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    invoke-virtual {v0, v2, v2, v2, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 387
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 367
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->d:F

    iget v3, p0, Lcom/google/android/exoplayer2/ui/a;->e:F

    iget v4, p0, Lcom/google/android/exoplayer2/ui/a;->e:F

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->w:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 369
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->x:I

    if-eq v0, v13, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->x:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 371
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->x:I

    if-ne v0, v13, :cond_7

    move v3, v7

    .line 372
    :goto_3
    if-eqz v3, :cond_8

    move v1, v6

    .line 373
    :goto_4
    if-eqz v3, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->w:I

    .line 374
    :goto_5
    iget v3, p0, Lcom/google/android/exoplayer2/ui/a;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 375
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->t:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 376
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->d:F

    neg-float v6, v3

    neg-float v7, v3

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 378
    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 379
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/exoplayer2/ui/a;->d:F

    invoke-virtual {v1, v4, v3, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_7
    move v3, v8

    .line 371
    goto :goto_3

    .line 372
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->w:I

    move v1, v0

    goto :goto_4

    :cond_9
    move v0, v6

    .line 373
    goto :goto_5
.end method

.method private a(Landroid/graphics/Canvas;Z)V
    .locals 0

    .prologue
    .line 324
    if-eqz p2, :cond_0

    .line 325
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->a(Landroid/graphics/Canvas;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 402
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 310
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->C:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->A:I

    sub-int v2, v0, v1

    .line 311
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    sub-int v1, v0, v1

    .line 312
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->A:I

    int-to-float v0, v0

    int-to-float v3, v2

    iget v4, p0, Lcom/google/android/exoplayer2/ui/a;->p:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 313
    iget v3, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    int-to-float v3, v3

    int-to-float v1, v1

    iget v4, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 314
    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/ui/a;->r:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 315
    int-to-float v3, v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 316
    iget v4, p0, Lcom/google/android/exoplayer2/ui/a;->o:I

    if-ne v4, v7, :cond_1

    int-to-float v4, v2

    sub-float/2addr v0, v4

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 318
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->q:I

    if-ne v0, v7, :cond_2

    int-to-float v0, v3

    sub-float v0, v1, v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 320
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v2, v4

    add-int/2addr v3, v0

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->I:Landroid/graphics/Rect;

    .line 321
    return-void

    .line 316
    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer2/ui/a;->o:I

    if-ne v4, v6, :cond_0

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    goto :goto_0

    .line 318
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/a;->q:I

    if-ne v0, v6, :cond_3

    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    sub-float v0, v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->l:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->I:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/text/b;ZLcom/google/android/exoplayer2/text/a;FFLandroid/graphics/Canvas;IIII)V
    .locals 7

    .prologue
    .line 148
    iget-object v1, p1, Lcom/google/android/exoplayer2/text/b;->c:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    .line 149
    :goto_0
    const/4 v3, 0x0

    .line 150
    const/4 v2, 0x0

    .line 151
    const/high16 v1, -0x1000000

    .line 152
    if-eqz v4, :cond_4

    .line 153
    iget-object v3, p1, Lcom/google/android/exoplayer2/text/b;->a:Ljava/lang/CharSequence;

    .line 154
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :goto_1
    return-void

    .line 148
    :cond_0
    const/4 v1, 0x0

    move v4, v1

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/text/b;->j:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/google/android/exoplayer2/text/b;->k:I

    .line 159
    :goto_2
    if-nez p2, :cond_2

    .line 161
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    iget v1, p3, Lcom/google/android/exoplayer2/text/a;->d:I

    .line 167
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/a;->j:Ljava/lang/CharSequence;

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/ui/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/a;->k:Landroid/text/Layout$Alignment;

    iget-object v6, p1, Lcom/google/android/exoplayer2/text/b;->b:Landroid/text/Layout$Alignment;

    .line 168
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/a;->l:Landroid/graphics/Bitmap;

    if-ne v5, v2, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    iget v6, p1, Lcom/google/android/exoplayer2/text/b;->d:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->n:I

    iget v6, p1, Lcom/google/android/exoplayer2/text/b;->e:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->o:I

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p1, Lcom/google/android/exoplayer2/text/b;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->p:F

    iget v6, p1, Lcom/google/android/exoplayer2/text/b;->g:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->q:I

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p1, Lcom/google/android/exoplayer2/text/b;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->r:F

    iget v6, p1, Lcom/google/android/exoplayer2/text/b;->i:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/a;->s:Z

    if-ne v5, p2, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->t:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/a;->b:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->u:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/a;->c:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->v:I

    if-ne v5, v1, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->x:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/a;->e:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->w:I

    iget v6, p3, Lcom/google/android/exoplayer2/text/a;->f:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    .line 182
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/exoplayer2/text/a;->g:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->y:F

    cmpl-float v5, v5, p4

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->z:F

    cmpl-float v5, v5, p5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->A:I

    if-ne v5, p7, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    if-ne v5, p8, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->C:I

    move/from16 v0, p9

    if-ne v5, v0, :cond_5

    iget v5, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    move/from16 v0, p10

    if-ne v5, v0, :cond_5

    .line 190
    invoke-direct {p0, p6, v4}, Lcom/google/android/exoplayer2/ui/a;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1

    .line 158
    :cond_3
    iget v1, p3, Lcom/google/android/exoplayer2/text/a;->d:I

    goto/16 :goto_2

    .line 165
    :cond_4
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/b;->c:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 194
    :cond_5
    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->j:Ljava/lang/CharSequence;

    .line 195
    iget-object v3, p1, Lcom/google/android/exoplayer2/text/b;->b:Landroid/text/Layout$Alignment;

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->k:Landroid/text/Layout$Alignment;

    .line 196
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/a;->l:Landroid/graphics/Bitmap;

    .line 197
    iget v2, p1, Lcom/google/android/exoplayer2/text/b;->d:F

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->m:F

    .line 198
    iget v2, p1, Lcom/google/android/exoplayer2/text/b;->e:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->n:I

    .line 199
    iget v2, p1, Lcom/google/android/exoplayer2/text/b;->f:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->o:I

    .line 200
    iget v2, p1, Lcom/google/android/exoplayer2/text/b;->g:F

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->p:F

    .line 201
    iget v2, p1, Lcom/google/android/exoplayer2/text/b;->h:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->q:I

    .line 202
    iget v2, p1, Lcom/google/android/exoplayer2/text/b;->i:F

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->r:F

    .line 203
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/a;->s:Z

    .line 204
    iget v2, p3, Lcom/google/android/exoplayer2/text/a;->b:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->t:I

    .line 205
    iget v2, p3, Lcom/google/android/exoplayer2/text/a;->c:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/a;->u:I

    .line 206
    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->v:I

    .line 207
    iget v1, p3, Lcom/google/android/exoplayer2/text/a;->e:I

    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->x:I

    .line 208
    iget v1, p3, Lcom/google/android/exoplayer2/text/a;->f:I

    iput v1, p0, Lcom/google/android/exoplayer2/ui/a;->w:I

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/a;->h:Landroid/text/TextPaint;

    iget-object v2, p3, Lcom/google/android/exoplayer2/text/a;->g:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    iput p4, p0, Lcom/google/android/exoplayer2/ui/a;->y:F

    .line 211
    iput p5, p0, Lcom/google/android/exoplayer2/ui/a;->z:F

    .line 212
    iput p7, p0, Lcom/google/android/exoplayer2/ui/a;->A:I

    .line 213
    iput p8, p0, Lcom/google/android/exoplayer2/ui/a;->B:I

    .line 214
    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/exoplayer2/ui/a;->C:I

    .line 215
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer2/ui/a;->D:I

    .line 217
    if-eqz v4, :cond_6

    .line 218
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/a;->a()V

    .line 222
    :goto_4
    invoke-direct {p0, p6, v4}, Lcom/google/android/exoplayer2/ui/a;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1

    .line 220
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/a;->b()V

    goto :goto_4
.end method
