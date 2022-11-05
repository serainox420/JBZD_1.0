.class public Lcom/apprupt/sdk/CvViewHelper;
.super Ljava/lang/Object;
.source "CvViewHelper.java"


# static fields
.field public static final a:Landroid/graphics/Point;

.field public static final b:Landroid/graphics/Point;

.field private static c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/apprupt/sdk/CvViewHelper;->c:F

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvViewHelper;->b:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/apprupt/sdk/CvViewHelper;->c:F

    div-float v0, p0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/16 v0, 0xff

    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 121
    const-string v1, "COLOR"

    invoke-static {v1}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v3

    .line 122
    if-eqz p0, :cond_9

    .line 124
    :try_start_0
    const-string v1, "^#?[0-9a-fA-F]{3,8}$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 128
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 129
    :goto_1
    if-ge v1, v6, :cond_1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_4

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ff"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_5

    .line 141
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cannot transform color to understandable version"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p0, v1, v4

    const/4 v4, 0x2

    aput-object v0, v1, v4

    invoke-interface {v3, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid color string "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-array v1, v9, [Ljava/lang/Object;

    const-string v4, "error while parsing color"

    aput-object v4, v1, v2

    invoke-interface {v3, v0, v1}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 172
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid color value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 144
    :cond_5
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "parsing color as hex"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p0, v1, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-interface {v3, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 162
    :goto_4
    return v0

    .line 147
    :cond_6
    const-string v1, "rgba?\\((\\d+),(\\d+),(\\d+)(,([0-9\\.]+))?\\)"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 149
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "parsing color as rgba"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 150
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xff

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 151
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xff

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 152
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xff

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 154
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_7

    .line 155
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "alpha found..."

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    invoke-interface {v3, v0}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 158
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    :cond_7
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "parsing color as rgba"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    aput-object p0, v1, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x6

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-interface {v3, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 162
    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto/16 :goto_4

    .line 164
    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v4, "color pattern not found"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-interface {v3, v0}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 170
    :cond_9
    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "Passed color is null!"

    aput-object v1, v0, v2

    invoke-interface {v3, v0}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    move-object v0, p0

    goto/16 :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    sput v0, Lcom/apprupt/sdk/CvViewHelper;->c:F

    .line 32
    invoke-static {p0}, Lcom/apprupt/sdk/CvViewHelper;->b(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Z)V
    .locals 2

    .prologue
    .line 44
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static a(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    const-string v0, "HW"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v5

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v4

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 88
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Software layer!"

    aput-object v1, v0, v3

    invoke-interface {v5, v0}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    move v0, v2

    move v1, v3

    .line 106
    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "HW Acceleration:"

    aput-object v6, v4, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v6, 0x2

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-interface {v5, v4}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 108
    :goto_2
    return v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 93
    :goto_3
    if-eqz v1, :cond_3

    .line 94
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 95
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 96
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Parent software layer!"

    aput-object v1, v0, v3

    invoke-interface {v5, v0}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    move v0, v2

    move v1, v3

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_3

    :cond_2
    move v2, v3

    .line 106
    goto :goto_1

    :cond_3
    move v0, v3

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method public static b(F)I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/apprupt/sdk/CvViewHelper;->c:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 61
    sget-object v1, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 62
    sget-object v1, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 66
    :goto_0
    sget-object v0, Lcom/apprupt/sdk/CvViewHelper;->b:Landroid/graphics/Point;

    sget-object v1, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget v2, Lcom/apprupt/sdk/CvViewHelper;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 67
    sget-object v0, Lcom/apprupt/sdk/CvViewHelper;->b:Landroid/graphics/Point;

    sget-object v1, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sget v2, Lcom/apprupt/sdk/CvViewHelper;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 68
    return-void

    .line 64
    :cond_0
    sget-object v1, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method
