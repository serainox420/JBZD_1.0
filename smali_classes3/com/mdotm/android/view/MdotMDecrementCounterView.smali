.class public Lcom/mdotm/android/view/MdotMDecrementCounterView;
.super Landroid/view/View;
.source "MdotMDecrementCounterView.java"


# instance fields
.field private angle:F

.field private counterSize:Ljava/lang/String;

.field private counterStroke:Ljava/lang/String;

.field private durationOfCounter:I

.field private durationToDisplay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->angle:F

    .line 14
    iget v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationOfCounter:I

    iput v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationToDisplay:I

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->setFocusable(Z)V

    .line 22
    iput-object p4, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterStroke:Ljava/lang/String;

    .line 25
    const/16 v0, 0x168

    :try_start_0
    div-int/lit16 v1, p3, 0x3e8

    div-int/2addr v0, v1

    mul-int/2addr v0, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->angle:F

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "durationOfCounter-remainingTime "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    iput p3, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationOfCounter:I

    .line 33
    iput p2, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationToDisplay:I

    .line 35
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getMultipler(Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 70
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 72
    if-eqz p0, :cond_0

    const-string v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 82
    :cond_0
    return-wide v0
.end method

.method private getPixels(I)I
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 66
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 67
    return v0
.end method

.method public static getStrokeMultipler(Ljava/lang/String;)D
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 87
    .line 89
    if-eqz p0, :cond_1

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    .line 93
    sub-double v4, v0, v2

    .line 94
    cmpl-double v6, v4, v8

    if-eqz v6, :cond_0

    cmpl-double v6, v4, v8

    if-lez v6, :cond_0

    .line 95
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, v4, v0

    .line 96
    add-double/2addr v0, v2

    .line 99
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 40
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    mul-double/2addr v2, v6

    double-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v3}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4036000000000000L    # 22.0

    mul-double/2addr v6, v8

    double-to-int v3, v6

    invoke-direct {p0, v3}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v4}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4036000000000000L    # 22.0

    mul-double/2addr v6, v8

    double-to-int v4, v6

    invoke-direct {p0, v4}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 49
    const-string v0, "#38BFEF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->angle:F

    sub-float v3, v0, v3

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 52
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "durationToDisplay"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationToDisplay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    mul-double/2addr v2, v6

    double-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v3}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4026000000000000L    # 11.0

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterStroke:Ljava/lang/String;

    invoke-static {v3}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v3, v6

    invoke-direct {p0, v3}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    iget v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationToDisplay:I

    if-lez v0, :cond_0

    .line 56
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationToDisplay:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 59
    iget v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationToDisplay:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    mul-double/2addr v2, v6

    double-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x402a000000000000L    # 13.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget v0, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->durationToDisplay:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v6

    double-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMDecrementCounterView;->counterSize:Ljava/lang/String;

    invoke-static {v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x402a000000000000L    # 13.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
