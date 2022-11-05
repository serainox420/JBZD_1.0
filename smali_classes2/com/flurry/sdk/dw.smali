.class public Lcom/flurry/sdk/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dw$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/kq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kq",
            "<",
            "Lcom/flurry/sdk/cq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/kq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kq",
            "<",
            "Lcom/flurry/sdk/cp;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/dw$a;

.field private g:Lcom/flurry/sdk/r;

.field private h:Lcom/flurry/sdk/au;

.field private i:Lcom/flurry/sdk/y;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/jm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/flurry/sdk/kq;

    const-string v1, "ad response"

    new-instance v2, Lcom/flurry/sdk/dz;

    invoke-direct {v2}, Lcom/flurry/sdk/dz;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/dw;->b:Lcom/flurry/sdk/kq;

    .line 96
    new-instance v0, Lcom/flurry/sdk/kq;

    const-string v1, "ad request"

    new-instance v2, Lcom/flurry/sdk/dy;

    invoke-direct {v2}, Lcom/flurry/sdk/dy;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kq;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/dw;->c:Lcom/flurry/sdk/kq;

    .line 108
    new-instance v0, Lcom/flurry/sdk/dw$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dw$1;-><init>(Lcom/flurry/sdk/dw;)V

    iput-object v0, p0, Lcom/flurry/sdk/dw;->k:Lcom/flurry/sdk/kh;

    .line 116
    iput-object p1, p0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    .line 118
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 120
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dw;->e:Ljava/util/List;

    .line 123
    sget-object v0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    iput-object v0, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    .line 124
    invoke-virtual {p0}, Lcom/flurry/sdk/dw;->b()V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dw;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/dw$a;)V
    .locals 4

    .prologue
    .line 193
    monitor-enter p0

    if-nez p1, :cond_0

    .line 194
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    .line 197
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting state from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    iget-object v1, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding request listeners for adspace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dw;->k:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 207
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 202
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    iget-object v1, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing request listeners for adspace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dw;->k:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dw;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->d()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dw;Lcom/flurry/sdk/dw$a;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw$a;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dw;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V
    .locals 29

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/flurry/sdk/dw$a;->c:Lcom/flurry/sdk/dw$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 588
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    :try_start_1
    sget-object v4, Lcom/flurry/sdk/dw$a;->d:Lcom/flurry/sdk/dw$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw$a;)V

    .line 234
    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/r;->g()Landroid/view/ViewGroup;

    move-result-object v7

    .line 235
    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/r;->m()Lcom/flurry/sdk/e;

    move-result-object v8

    .line 238
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/q;

    if-eqz v4, :cond_6

    .line 239
    sget-object v4, Lcom/flurry/sdk/cu;->b:Lcom/flurry/sdk/cu;

    move-object v15, v4

    .line 250
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/lw;->e()I

    move-result v4

    .line 4122
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 3151
    invoke-static {v5}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v5

    .line 5126
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 4155
    invoke-static {v6}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v6

    .line 2188
    packed-switch v4, :pswitch_data_0

    .line 2193
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object v5, v4

    .line 257
    :goto_2
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 258
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 7122
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 6151
    invoke-static {v4}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v4

    .line 5178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 8126
    invoke-static {}, Lcom/flurry/sdk/lw;->b()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 7155
    invoke-static {v5}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v5

    .line 5178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 262
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 263
    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 265
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    if-lez v6, :cond_14

    .line 267
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v4

    move v6, v4

    .line 270
    :goto_3
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-lez v4, :cond_13

    .line 272
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/flurry/sdk/lw;->a(I)I

    move-result v4

    .line 275
    :goto_4
    new-instance v16, Lcom/flurry/sdk/ct;

    invoke-direct/range {v16 .. v16}, Lcom/flurry/sdk/ct;-><init>()V

    .line 276
    move-object/from16 v0, v16

    iput v10, v0, Lcom/flurry/sdk/ct;->d:I

    .line 277
    move-object/from16 v0, v16

    iput v9, v0, Lcom/flurry/sdk/ct;->c:I

    .line 278
    move-object/from16 v0, v16

    iput v6, v0, Lcom/flurry/sdk/ct;->b:I

    .line 279
    move-object/from16 v0, v16

    iput v4, v0, Lcom/flurry/sdk/ct;->a:I

    .line 9101
    invoke-static {}, Lcom/flurry/sdk/lw;->d()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 9102
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 280
    move-object/from16 v0, v16

    iput v4, v0, Lcom/flurry/sdk/ct;->e:F

    .line 9133
    invoke-static {}, Lcom/flurry/sdk/lw;->d()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 9134
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v4, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v5, v6

    .line 9135
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v4, v4, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v4, v6, v4

    .line 9136
    mul-float/2addr v5, v5

    mul-float/2addr v4, v4

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 281
    move-object/from16 v0, v16

    iput v4, v0, Lcom/flurry/sdk/ct;->f:F

    .line 282
    invoke-static {}, Lcom/flurry/sdk/fi;->b()Lcom/flurry/sdk/dg;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/flurry/sdk/ct;->g:Lcom/flurry/sdk/dg;

    .line 284
    invoke-static {}, Lcom/flurry/sdk/fi;->c()Lcom/flurry/sdk/db;

    move-result-object v17

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v18

    .line 286
    new-instance v19, Lcom/flurry/sdk/dm;

    invoke-direct/range {v19 .. v19}, Lcom/flurry/sdk/dm;-><init>()V

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/flurry/sdk/dm;->c:Ljava/util/List;

    .line 288
    const/4 v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/flurry/sdk/dm;->a:I

    .line 289
    const/4 v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/flurry/sdk/dm;->b:I

    .line 290
    const/4 v6, 0x0

    .line 292
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v4

    const-string v5, "Age"

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 293
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v5

    const-string v7, "Gender"

    invoke-virtual {v5, v7}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    .line 295
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 297
    invoke-virtual {v5}, Ljava/lang/Byte;->intValue()I

    move-result v5

    move-object/from16 v0, v19

    iput v5, v0, Lcom/flurry/sdk/dm;->b:I

    .line 300
    :cond_1
    if-eqz v4, :cond_2

    .line 301
    invoke-static {v4}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Long;)I

    move-result v4

    .line 302
    move-object/from16 v0, v19

    iput v4, v0, Lcom/flurry/sdk/dm;->a:I

    .line 305
    :cond_2
    if-eqz v8, :cond_12

    .line 327
    invoke-virtual {v8}, Lcom/flurry/sdk/e;->getEnableTestAds()Z

    move-result v4

    move v14, v4

    .line 330
    :goto_5
    invoke-static {}, Lcom/flurry/sdk/fi;->e()Ljava/util/List;

    move-result-object v20

    .line 331
    invoke-static {}, Lcom/flurry/sdk/fi;->f()Ljava/util/List;

    move-result-object v21

    .line 333
    sget-object v4, Lcom/flurry/sdk/cu;->d:Lcom/flurry/sdk/cu;

    sget-object v5, Lcom/flurry/sdk/cu;->d:Lcom/flurry/sdk/cu;

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/cu;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 334
    invoke-static {}, Lcom/flurry/sdk/fi;->g()Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 340
    :goto_6
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 341
    if-eqz v8, :cond_3

    .line 342
    invoke-virtual {v8}, Lcom/flurry/sdk/e;->getFixedAdId()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 344
    const-string v5, "FLURRY_VIEWER"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_3
    const/4 v5, 0x0

    .line 351
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 352
    if-eqz p2, :cond_11

    .line 11078
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 12058
    iget-object v4, v4, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 354
    iget-boolean v5, v4, Lcom/flurry/sdk/cs;->w:Z

    .line 355
    iget-object v4, v4, Lcom/flurry/sdk/cs;->x:Ljava/util/Map;

    move-object v11, v4

    move v12, v5

    .line 358
    :goto_7
    new-instance v23, Lcom/flurry/sdk/dc;

    invoke-direct/range {v23 .. v23}, Lcom/flurry/sdk/dc;-><init>()V

    .line 359
    const/4 v5, 0x0

    .line 360
    const/4 v4, 0x0

    .line 361
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/flurry/sdk/x;

    if-eqz v6, :cond_b

    .line 362
    move-object/from16 v0, p1

    check-cast v0, Lcom/flurry/sdk/x;

    move-object v4, v0

    .line 12437
    iget-object v5, v4, Lcom/flurry/sdk/x;->l:Ljava/util/List;

    .line 12441
    iget-object v4, v4, Lcom/flurry/sdk/x;->m:Ljava/util/List;

    .line 374
    :cond_4
    :goto_8
    if-nez v5, :cond_c

    .line 375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/flurry/sdk/dc;->a:Ljava/util/List;

    .line 380
    :goto_9
    if-nez v4, :cond_d

    .line 381
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/flurry/sdk/dc;->b:Ljava/util/List;

    .line 387
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    .line 13323
    invoke-static {}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/ec;

    move-result-object v4

    .line 13324
    if-eqz v4, :cond_e

    .line 13364
    iget-object v10, v4, Lcom/flurry/sdk/ec;->i:Ljava/lang/String;

    .line 389
    :goto_b
    const-string v8, ""

    .line 390
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 392
    const/4 v5, 0x0

    .line 393
    const-string v4, ""

    .line 394
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/flurry/sdk/t;

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 395
    move-object/from16 v0, p1

    check-cast v0, Lcom/flurry/sdk/t;

    move-object v4, v0

    .line 14127
    iget-object v8, v4, Lcom/flurry/sdk/t;->m:Ljava/util/List;

    .line 14131
    iget-object v7, v4, Lcom/flurry/sdk/t;->n:Ljava/util/List;

    .line 399
    const/4 v6, 0x1

    .line 14155
    iget-object v5, v4, Lcom/flurry/sdk/t;->o:Ljava/lang/String;

    .line 401
    const-string v9, ""

    .line 14163
    iget-object v10, v4, Lcom/flurry/sdk/t;->p:Ljava/lang/String;

    .line 14171
    iget-object v4, v4, Lcom/flurry/sdk/t;->q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v4

    move/from16 v4, v28

    .line 409
    :goto_c
    :try_start_2
    new-instance v24, Lcom/flurry/sdk/cp;

    invoke-direct/range {v24 .. v24}, Lcom/flurry/sdk/cp;-><init>()V

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/flurry/sdk/cp;->a:J

    .line 412
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v25

    .line 15101
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 412
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->b:Ljava/lang/String;

    .line 413
    invoke-static {}, Lcom/flurry/sdk/jz;->a()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->c:Ljava/lang/String;

    .line 414
    move-object/from16 v0, v24

    iput-object v15, v0, Lcom/flurry/sdk/cp;->d:Lcom/flurry/sdk/cu;

    .line 415
    move-object/from16 v0, v24

    iput-object v9, v0, Lcom/flurry/sdk/cp;->e:Ljava/lang/String;

    .line 416
    move-object/from16 v0, v24

    iput-object v7, v0, Lcom/flurry/sdk/cp;->f:Ljava/util/List;

    .line 417
    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/flurry/sdk/cp;->g:Z

    .line 418
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->c()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/flurry/sdk/cp;->h:J

    .line 419
    move-object/from16 v0, v24

    iput-object v6, v0, Lcom/flurry/sdk/cp;->i:Ljava/util/List;

    .line 420
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->j:Ljava/util/List;

    .line 421
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->k:Lcom/flurry/sdk/db;

    .line 422
    move-object/from16 v0, v24

    iput-boolean v14, v0, Lcom/flurry/sdk/cp;->l:Z

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/dw;->e:Ljava/util/List;

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->m:Ljava/util/List;

    .line 424
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->n:Lcom/flurry/sdk/ct;

    .line 425
    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    invoke-static {}, Lcom/flurry/sdk/jo;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->o:Ljava/lang/String;

    .line 426
    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    .line 16031
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 426
    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->p:Ljava/lang/String;

    .line 427
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    invoke-static {}, Lcom/flurry/sdk/ju;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->q:Ljava/lang/String;

    .line 428
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    invoke-static {}, Lcom/flurry/sdk/ju;->c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->r:Ljava/lang/String;

    .line 429
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/ju;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->s:Ljava/lang/String;

    .line 430
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    invoke-static {}, Lcom/flurry/sdk/ju;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->t:Ljava/lang/String;

    .line 431
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    invoke-static {}, Lcom/flurry/sdk/ju;->e()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->u:Ljava/lang/String;

    .line 432
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    invoke-static {}, Lcom/flurry/sdk/ju;->f()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->v:Ljava/lang/String;

    .line 433
    move-object/from16 v0, v24

    iput-object v8, v0, Lcom/flurry/sdk/cp;->w:Ljava/lang/String;

    .line 434
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->x:Ljava/util/Map;

    .line 435
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/flurry/sdk/cp;->y:Z

    .line 436
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->g()Lcom/flurry/sdk/jr$a;

    move-result-object v4

    .line 16063
    iget v4, v4, Lcom/flurry/sdk/jr$a;->e:I

    .line 436
    move-object/from16 v0, v24

    iput v4, v0, Lcom/flurry/sdk/cp;->z:I

    .line 437
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->A:Ljava/util/List;

    .line 438
    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/flurry/sdk/cp;->B:Ljava/util/List;

    .line 439
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jl;->c()Z

    move-result v4

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/flurry/sdk/cp;->C:Z

    .line 440
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->D:Ljava/lang/String;

    .line 441
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->E:Ljava/util/List;

    .line 442
    move-object/from16 v0, v24

    iput-object v10, v0, Lcom/flurry/sdk/cp;->F:Ljava/lang/String;

    .line 443
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->G:Lcom/flurry/sdk/dm;

    .line 444
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    .line 16253
    iget-object v4, v4, Lcom/flurry/sdk/i;->j:Lcom/flurry/sdk/cw;

    .line 444
    if-nez v4, :cond_f

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/flurry/sdk/cp;->H:Z

    .line 445
    invoke-static {}, Lcom/flurry/sdk/fi;->d()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->I:Ljava/util/List;

    .line 446
    move-object/from16 v0, v24

    iput-boolean v12, v0, Lcom/flurry/sdk/cp;->J:Z

    .line 447
    move-object/from16 v0, v24

    iput-object v11, v0, Lcom/flurry/sdk/cp;->K:Ljava/util/Map;

    .line 448
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/flurry/sdk/cp;->L:Lcom/flurry/sdk/dc;

    .line 449
    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/flurry/sdk/cp;->M:Ljava/lang/String;

    .line 450
    invoke-interface/range {p1 .. p1}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/lv;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/flurry/sdk/cp;->N:Ljava/lang/String;

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flurry/sdk/dw;->c:Lcom/flurry/sdk/kq;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/kq;->a(Ljava/lang/Object;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 460
    :try_start_3
    new-instance v5, Lcom/flurry/sdk/ks;

    invoke-direct {v5}, Lcom/flurry/sdk/ks;-><init>()V

    .line 461
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/j;->c()Ljava/lang/String;

    move-result-object v6

    .line 17136
    iput-object v6, v5, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 18027
    const/16 v6, 0x4e20

    iput v6, v5, Lcom/flurry/sdk/mb;->w:I

    .line 463
    sget-object v6, Lcom/flurry/sdk/ku$a;->c:Lcom/flurry/sdk/ku$a;

    .line 18144
    iput-object v6, v5, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 464
    const-string v6, "Content-Type"

    const-string v7, "application/x-flurry"

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v6, "Accept"

    const-string v7, "application/x-flurry"

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v6, "FM-Checksum"

    invoke-static {v4}, Lcom/flurry/sdk/kq;->a([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flurry/sdk/ks;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v6, Lcom/flurry/sdk/lc;

    invoke-direct {v6}, Lcom/flurry/sdk/lc;-><init>()V

    .line 19041
    iput-object v6, v5, Lcom/flurry/sdk/ks;->c:Lcom/flurry/sdk/lg;

    .line 468
    new-instance v6, Lcom/flurry/sdk/lc;

    invoke-direct {v6}, Lcom/flurry/sdk/lc;-><init>()V

    .line 19045
    iput-object v6, v5, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 20037
    iput-object v4, v5, Lcom/flurry/sdk/ks;->b:Ljava/lang/Object;

    .line 470
    sget-object v4, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AdRequest: url:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/flurry/sdk/j;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v4, Lcom/flurry/sdk/dw$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/flurry/sdk/dw$4;-><init>(Lcom/flurry/sdk/dw;Lcom/flurry/sdk/r;)V

    .line 20049
    iput-object v4, v5, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 583
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/x;

    if-eqz v4, :cond_5

    .line 584
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v4

    const-string v6, "nativeAdRequest"

    invoke-virtual {v4, v6}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 587
    :cond_5
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 228
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 240
    :cond_6
    :try_start_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/u;

    if-eqz v4, :cond_7

    .line 241
    sget-object v4, Lcom/flurry/sdk/cu;->c:Lcom/flurry/sdk/cu;

    move-object v15, v4

    goto/16 :goto_1

    .line 242
    :cond_7
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/x;

    if-eqz v4, :cond_8

    .line 243
    sget-object v4, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cu;

    move-object v15, v4

    goto/16 :goto_1

    .line 244
    :cond_8
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/flurry/sdk/t;

    if-eqz v4, :cond_9

    .line 245
    sget-object v4, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cu;

    move-object v15, v4

    goto/16 :goto_1

    .line 247
    :cond_9
    sget-object v4, Lcom/flurry/sdk/cu;->a:Lcom/flurry/sdk/cu;

    move-object v15, v4

    goto/16 :goto_1

    .line 2190
    :pswitch_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_2

    .line 336
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    goto/16 :goto_6

    .line 366
    :cond_b
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/flurry/sdk/t;

    if-eqz v6, :cond_4

    .line 368
    move-object/from16 v0, p1

    check-cast v0, Lcom/flurry/sdk/t;

    move-object v4, v0

    .line 13147
    iget-object v5, v4, Lcom/flurry/sdk/t;->k:Ljava/util/List;

    .line 13151
    iget-object v4, v4, Lcom/flurry/sdk/t;->l:Ljava/util/List;

    goto/16 :goto_8

    .line 377
    :cond_c
    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/flurry/sdk/dc;->a:Ljava/util/List;

    goto/16 :goto_9

    .line 383
    :cond_d
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/flurry/sdk/dc;->b:Ljava/util/List;

    goto/16 :goto_a

    .line 13328
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_b

    .line 444
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 453
    :catch_0
    move-exception v4

    .line 454
    const/4 v5, 0x5

    sget-object v6, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ad request failed with exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/dw;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v28, v4

    move v4, v5

    move-object/from16 v5, v28

    goto/16 :goto_c

    :cond_11
    move-object v11, v4

    move v12, v5

    goto/16 :goto_7

    :cond_12
    move v14, v6

    goto/16 :goto_5

    :cond_13
    move v4, v5

    goto/16 :goto_4

    :cond_14
    move v6, v4

    goto/16 :goto_3

    .line 2188
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/flurry/sdk/dw;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/dw;->g:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/dw;)Lcom/flurry/sdk/au;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/dw;->h:Lcom/flurry/sdk/au;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/dw;)Lcom/flurry/sdk/kq;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/dw;->b:Lcom/flurry/sdk/kq;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dw$a;->b:Lcom/flurry/sdk/dw$a;

    iget-object v1, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    const-string v2, "Reported ids retrieved; request may continue"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/flurry/sdk/dw$a;->c:Lcom/flurry/sdk/dw$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw$a;)V

    .line 218
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dw$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dw$3;-><init>(Lcom/flurry/sdk/dw;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/dw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 592
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dw$a;->e:Lcom/flurry/sdk/dw$a;

    iget-object v1, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 671
    :goto_0
    monitor-exit p0

    return-void

    .line 596
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 21078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 22058
    iget-object v5, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 600
    iget-object v1, v5, Lcom/flurry/sdk/cs;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 601
    iget-object v1, v5, Lcom/flurry/sdk/cs;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cz;

    .line 602
    new-instance v6, Lcom/flurry/sdk/bf;

    invoke-direct {v6, v1}, Lcom/flurry/sdk/bf;-><init>(Lcom/flurry/sdk/cz;)V

    .line 603
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    .line 22248
    iget-object v1, v1, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/bg;

    .line 603
    invoke-virtual {v1, v6}, Lcom/flurry/sdk/bg;->a(Lcom/flurry/sdk/bf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 608
    :cond_2
    :try_start_2
    iget-object v6, v5, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    move v2, v3

    .line 609
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 610
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cn;

    .line 612
    iget-object v7, v1, Lcom/flurry/sdk/cn;->b:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/flurry/sdk/cn;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 613
    iget-object v1, v1, Lcom/flurry/sdk/cn;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/ft;->a(Ljava/lang/String;)Lcom/flurry/sdk/fr;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_3

    .line 615
    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/fr;)V

    .line 23227
    iget-boolean v1, v1, Lcom/flurry/sdk/fr;->d:Z

    .line 616
    if-nez v1, :cond_6

    .line 609
    :cond_3
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 622
    :cond_4
    iget-object v1, v5, Lcom/flurry/sdk/cs;->a:Lcom/flurry/sdk/cu;

    sget-object v7, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cu;

    invoke-virtual {v1, v7}, Lcom/flurry/sdk/cu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 623
    iget-object v1, v5, Lcom/flurry/sdk/cs;->z:Lcom/flurry/sdk/dd;

    iget-object v1, v1, Lcom/flurry/sdk/dd;->f:Ljava/util/List;

    .line 624
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/de;

    .line 625
    iget-object v8, v1, Lcom/flurry/sdk/de;->b:Lcom/flurry/sdk/df;

    sget-object v9, Lcom/flurry/sdk/df;->d:Lcom/flurry/sdk/df;

    if-ne v8, v9, :cond_5

    .line 627
    iget-object v1, v1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/sdk/ft;->a(Ljava/lang/String;)Lcom/flurry/sdk/fr;

    move-result-object v1

    .line 628
    if-eqz v1, :cond_3

    .line 629
    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/au;->a(ILcom/flurry/sdk/fr;)V

    .line 24227
    iget-boolean v1, v1, Lcom/flurry/sdk/fr;->d:Z

    .line 630
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_6
    move v2, v3

    .line 642
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 643
    invoke-static {v0, v2}, Lcom/flurry/sdk/ad;->a(Lcom/flurry/sdk/au;I)Ljava/util/List;

    move-result-object v5

    .line 26078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 26208
    if-ltz v2, :cond_7

    iget-object v7, v1, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_8

    .line 642
    :cond_7
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 26212
    :cond_8
    iget-object v1, v1, Lcom/flurry/sdk/ay;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/av;

    .line 27066
    iput-object v5, v1, Lcom/flurry/sdk/av;->c:Ljava/util/List;

    goto :goto_5

    .line 649
    :cond_9
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handling ad response for adSpace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 653
    iget-object v0, p0, Lcom/flurry/sdk/dw;->i:Lcom/flurry/sdk/y;

    if-eqz v0, :cond_a

    .line 654
    iget-object v0, p0, Lcom/flurry/sdk/dw;->i:Lcom/flurry/sdk/y;

    iget-object v1, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Ljava/util/Collection;)V

    .line 658
    :cond_a
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dw$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dw$5;-><init>(Lcom/flurry/sdk/dw;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 667
    :cond_b
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->f()V

    .line 670
    invoke-virtual {p0}, Lcom/flurry/sdk/dw;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/flurry/sdk/dw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 675
    new-instance v0, Lcom/flurry/sdk/dx;

    invoke-direct {v0}, Lcom/flurry/sdk/dx;-><init>()V

    .line 676
    iput-object p0, v0, Lcom/flurry/sdk/dx;->a:Lcom/flurry/sdk/dw;

    .line 677
    iget-object v1, p0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/dx;->b:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/flurry/sdk/dx;->c:Ljava/util/List;

    .line 679
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    .line 680
    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/dw;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->e()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/dw;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V
    .locals 4

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestAd: adSpace = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dw;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    iget-object v1, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dw$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestAds: request pending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dw;->f:Lcom/flurry/sdk/dw$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1079
    iget-boolean v0, v0, Lcom/flurry/sdk/jr;->b:Z

    .line 145
    if-nez v0, :cond_1

    .line 146
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (requestAds will fail)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/flurry/sdk/dw;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/flurry/sdk/dw;->g:Lcom/flurry/sdk/r;

    .line 155
    iput-object p3, p0, Lcom/flurry/sdk/dw;->h:Lcom/flurry/sdk/au;

    .line 156
    iput-object p2, p0, Lcom/flurry/sdk/dw;->i:Lcom/flurry/sdk/y;

    .line 159
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 1248
    iget-object v0, v0, Lcom/flurry/sdk/i;->h:Lcom/flurry/sdk/bg;

    .line 159
    invoke-virtual {v0}, Lcom/flurry/sdk/bg;->b()V

    .line 163
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lcom/flurry/sdk/dw$a;->c:Lcom/flurry/sdk/dw$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw$a;)V

    .line 165
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dw$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dw$2;-><init>(Lcom/flurry/sdk/dw;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dw;->a:Ljava/lang/String;

    const-string v2, "No reported ids yet; waiting"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/flurry/sdk/dw$a;->b:Lcom/flurry/sdk/dw$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw$a;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dw;->i:Lcom/flurry/sdk/y;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dw;->g:Lcom/flurry/sdk/r;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dw;->h:Lcom/flurry/sdk/au;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dw;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
