.class public Lcom/smartadserver/android/library/ui/a/b/a;
.super Lcom/smartadserver/android/library/ui/a/b/b;
.source "SASImprovedOrientationSensorProvider.java"


# instance fields
.field private final h:Lcom/smartadserver/android/library/ui/a/c/c;

.field private i:Lcom/smartadserver/android/library/ui/a/c/c;

.field private j:Lcom/smartadserver/android/library/ui/a/c/c;

.field private k:J

.field private l:D

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/a/b/b;-><init>(Landroid/hardware/SensorManager;)V

    .line 40
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->h:Lcom/smartadserver/android/library/ui/a/c/c;

    .line 45
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    .line 50
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->j:Lcom/smartadserver/android/library/ui/a/c/c;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->m:Z

    .line 144
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->b:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->b:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->b:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private a(Lcom/smartadserver/android/library/ui/a/c/c;)V
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/a/c/c;->a()Lcom/smartadserver/android/library/ui/a/c/c;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/c/c;->h()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->e(F)V

    .line 280
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b/a;->d:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-virtual {v2, p1}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/d;)V

    .line 285
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b/a;->c:Lcom/smartadserver/android/library/ui/a/c/b;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a/c/b;->g:[F

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a/c/c;->c()[F

    move-result-object v0

    invoke-static {v2, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 152
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 155
    new-array v0, v2, [F

    .line 157
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 160
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->j:Lcom/smartadserver/android/library/ui/a/c/c;

    aget v2, v0, v11

    aget v3, v0, v4

    const/4 v4, 0x3

    aget v4, v0, v4

    aget v0, v0, v10

    neg-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartadserver/android/library/ui/a/c/c;->a(FFFF)V

    .line 161
    iget-boolean v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->m:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->j:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/c;)V

    .line 164
    iput-boolean v11, p0, Lcom/smartadserver/android/library/ui/a/b/a;->m:Z

    .line 264
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->g:Lcom/smartadserver/android/library/ui/a/b/c;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->g:Lcom/smartadserver/android/library/ui/a/b/c;

    invoke-interface {v0}, Lcom/smartadserver/android/library/ui/a/b/c;->a()V

    .line 267
    :cond_1
    return-void

    .line 167
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 172
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 173
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/smartadserver/android/library/ui/a/b/a;->k:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float v3, v0, v1

    .line 175
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v0, v10

    .line 176
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v11

    .line 177
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    .line 180
    mul-float v4, v2, v2

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    mul-float v5, v0, v0

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    .line 183
    iget-wide v4, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 184
    float-to-double v4, v2

    iget-wide v6, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 185
    float-to-double v4, v1

    iget-wide v6, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 186
    float-to-double v4, v0

    iget-wide v6, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 193
    :cond_3
    iget-wide v4, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    float-to-double v6, v3

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 194
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 195
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 196
    iget-object v3, p0, Lcom/smartadserver/android/library/ui/a/b/a;->h:Lcom/smartadserver/android/library/ui/a/c/c;

    float-to-double v8, v2

    mul-double/2addr v8, v6

    double-to-float v2, v8

    invoke-virtual {v3, v2}, Lcom/smartadserver/android/library/ui/a/c/c;->a(F)V

    .line 197
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b/a;->h:Lcom/smartadserver/android/library/ui/a/c/c;

    float-to-double v8, v1

    mul-double/2addr v8, v6

    double-to-float v1, v8

    invoke-virtual {v2, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->b(F)V

    .line 198
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->h:Lcom/smartadserver/android/library/ui/a/c/c;

    float-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/a/c/c;->c(F)V

    .line 199
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->h:Lcom/smartadserver/android/library/ui/a/c/c;

    double-to-float v1, v4

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->d(F)V

    .line 202
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->h:Lcom/smartadserver/android/library/ui/a/c/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/c;Lcom/smartadserver/android/library/ui/a/c/c;)V

    .line 206
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->j:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->b(Lcom/smartadserver/android/library/ui/a/c/d;)F

    move-result v0

    .line 209
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f59999a    # 0.85f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 211
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 212
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->n:I

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/a/b/a;->a(Lcom/smartadserver/android/library/ui/a/c/c;)V

    .line 236
    :goto_1
    iget v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->n:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_5

    .line 237
    const-string v0, "Rotation Vector"

    const-string v1, "Panic counter is bigger than threshold; this indicates a Gyroscope failure. Panic reset is imminent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-wide v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    .line 241
    const-string v0, "Rotation Vector"

    const-string v1, "Performing Panic-reset. Resetting orientation to rotation-vector value."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->j:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/a/b/a;->a(Lcom/smartadserver/android/library/ui/a/c/c;)V

    .line 247
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->j:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/d;)V

    .line 249
    iput v10, p0, Lcom/smartadserver/android/library/ui/a/b/a;->n:I

    .line 258
    :cond_5
    :goto_2
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->k:J

    goto/16 :goto_0

    .line 223
    :cond_6
    new-instance v0, Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-direct {v0}, Lcom/smartadserver/android/library/ui/a/c/c;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a/b/a;->j:Lcom/smartadserver/android/library/ui/a/c/c;

    const-wide v4, 0x3f847ae140000000L    # 0.009999999776482582

    iget-wide v6, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    mul-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v1, v2, v0, v3}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/c;Lcom/smartadserver/android/library/ui/a/c/c;F)V

    .line 228
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/ui/a/b/a;->a(Lcom/smartadserver/android/library/ui/a/c/c;)V

    .line 230
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/b/a;->i:Lcom/smartadserver/android/library/ui/a/c/c;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/a/c/c;->a(Lcom/smartadserver/android/library/ui/a/c/d;)V

    .line 233
    iput v10, p0, Lcom/smartadserver/android/library/ui/a/b/a;->n:I

    goto :goto_1

    .line 251
    :cond_7
    const-string v0, "Rotation Vector"

    const-string v1, "Panic reset delayed due to ongoing motion (user is still shaking the device). Gyroscope Velocity: %.2f > 3"

    new-array v2, v11, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/smartadserver/android/library/ui/a/b/a;->l:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 259
    :cond_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 261
    aget v0, v0, v4

    iput v0, p0, Lcom/smartadserver/android/library/ui/a/b/a;->e:F

    goto/16 :goto_0
.end method
