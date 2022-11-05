.class public Lcom/smaato/soma/measurements/a;
.super Ljava/lang/Object;
.source "BannerMeasurements.java"


# static fields
.field private static a:Lcom/smaato/soma/measurements/a;

.field private static b:I

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/smaato/soma/measurements/a;->b:I

    .line 43
    sput-wide v2, Lcom/smaato/soma/measurements/a;->c:J

    .line 47
    sput-wide v2, Lcom/smaato/soma/measurements/a;->d:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/smaato/soma/measurements/a;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/smaato/soma/measurements/a;->a:Lcom/smaato/soma/measurements/a;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/smaato/soma/measurements/a;

    invoke-direct {v0}, Lcom/smaato/soma/measurements/a;-><init>()V

    sput-object v0, Lcom/smaato/soma/measurements/a;->a:Lcom/smaato/soma/measurements/a;

    .line 82
    :cond_0
    sget-object v0, Lcom/smaato/soma/measurements/a;->a:Lcom/smaato/soma/measurements/a;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/j;Landroid/view/View;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/IntersectionCalculationFailed;
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/smaato/soma/j;->getLeft()I

    move-result v1

    .line 270
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getTop()I

    move-result v2

    .line 271
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getRight()I

    move-result v3

    .line 272
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 273
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 275
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 276
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    throw v0

    .line 280
    :catch_1
    move-exception v0

    .line 281
    new-instance v1, Lcom/smaato/soma/exception/IntersectionCalculationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/IntersectionCalculationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GettingViewScreenLocationFailed;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/smaato/soma/measurements/a;->d(Lcom/smaato/soma/j;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/smaato/soma/j;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GettingBannerPositionFailed;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 241
    :try_start_0
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 242
    if-nez v0, :cond_0

    move v0, v1

    .line 251
    :goto_0
    return v0

    :cond_0
    move v2, v1

    .line 245
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 246
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 247
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 246
    invoke-direct {p0, p1, v3}, Lcom/smaato/soma/measurements/a;->a(Lcom/smaato/soma/j;Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 248
    goto :goto_0

    .line 245
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    throw v0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    new-instance v1, Lcom/smaato/soma/exception/GettingBannerPositionFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/GettingBannerPositionFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/DimensionCalculationFailed;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/smaato/soma/measurements/a;->c(Lcom/smaato/soma/j;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/smaato/soma/j;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/DimensionCalculationFailed;
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getWidth()I

    move-result v0

    const/16 v1, 0x140

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/smaato/soma/j;->getHeight()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    throw v0

    .line 298
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, Lcom/smaato/soma/exception/DimensionCalculationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/DimensionCalculationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic c(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GettingBannerPositionFailed;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/smaato/soma/measurements/a;->b(Lcom/smaato/soma/j;)Z

    move-result v0

    return v0
.end method

.method private d(Lcom/smaato/soma/j;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/GettingViewScreenLocationFailed;
        }
    .end annotation

    .prologue
    .line 310
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/smaato/soma/j;->getLeft()I

    move-result v1

    .line 311
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getTop()I

    move-result v2

    .line 312
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getRight()I

    move-result v3

    .line 313
    invoke-virtual {p1}, Lcom/smaato/soma/j;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    invoke-virtual {p1, v0}, Lcom/smaato/soma/j;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    throw v0

    .line 320
    :catch_1
    move-exception v0

    .line 321
    new-instance v1, Lcom/smaato/soma/exception/GettingViewScreenLocationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/GettingViewScreenLocationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private f()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RequestTimeFrameCalculationFailed;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/smaato/soma/measurements/a;->c:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    throw v0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    new-instance v1, Lcom/smaato/soma/exception/RequestTimeFrameCalculationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RequestTimeFrameCalculationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/smaato/soma/j;)V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/smaato/soma/measurements/a$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/measurements/a$1;-><init>(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)V

    .line 231
    invoke-virtual {v0}, Lcom/smaato/soma/measurements/a$1;->c()Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public final b()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RequestLimiterFailed;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    :try_start_0
    sget-wide v2, Lcom/smaato/soma/measurements/a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/smaato/soma/measurements/a;->c:J

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/smaato/soma/measurements/a;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/smaato/soma/measurements/a;->b:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 104
    :goto_0
    return v0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/smaato/soma/measurements/a;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/smaato/soma/measurements/a;->c:J

    .line 100
    const/4 v1, 0x0

    sput v1, Lcom/smaato/soma/measurements/a;->b:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    throw v0

    .line 103
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/smaato/soma/measurements/b;->a()Lcom/smaato/soma/measurements/b;

    move-result-object v0

    sget-object v2, Lcom/smaato/soma/measurements/FraudesType;->UBER_FREQUENT_REQUEST:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {v0, v2}, Lcom/smaato/soma/measurements/b;->a(Lcom/smaato/soma/measurements/FraudesType;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    new-instance v1, Lcom/smaato/soma/exception/RequestLimiterFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RequestLimiterFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/smaato/soma/measurements/a;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/smaato/soma/measurements/a;->b:I

    .line 117
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smaato/soma/measurements/a;->d:J

    .line 124
    return-void
.end method

.method public final e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RegisterClickFailed;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/smaato/soma/measurements/a;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/smaato/soma/measurements/b;->a()Lcom/smaato/soma/measurements/b;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->AUTO_CLICK:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/measurements/b;->a(Lcom/smaato/soma/measurements/FraudesType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :cond_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    throw v0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    new-instance v1, Lcom/smaato/soma/exception/RegisterClickFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RegisterClickFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
