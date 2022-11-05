.class public Lcom/smartadserver/android/library/controller/mraid/a/a;
.super Ljava/lang/Object;
.source "SASAccelerationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field a:Lcom/smartadserver/android/library/controller/mraid/e;

.field b:I

.field c:I

.field d:I

.field private e:Landroid/hardware/SensorManager;

.field private f:I

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:[F

.field private l:[F

.field private m:Z

.field private n:Z

.field private o:[F

.field private p:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartadserver/android/library/controller/mraid/e;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    .line 43
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    .line 44
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    .line 47
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->f:I

    .line 53
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    .line 56
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->o:[F

    .line 57
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->p:[F

    .line 62
    iput-object p2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->a:Lcom/smartadserver/android/library/controller/mraid/e;

    .line 63
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->e:Landroid/hardware/SensorManager;

    .line 65
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 57
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private i()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->e:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->e:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->f:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 135
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->j()V

    .line 139
    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->e:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->e:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->f:I

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->j()V

    .line 86
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    .line 87
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 73
    iput p1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->f:I

    .line 74
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    if-lez v0, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->g()V

    .line 76
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->j()V

    .line 78
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->g()V

    .line 96
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->a(I)V

    .line 104
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->j()V

    .line 106
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    .line 107
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->a(I)V

    .line 115
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->g()V

    .line 117
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->i()V

    .line 125
    :cond_0
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    .line 126
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->g()V

    .line 148
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 169
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->b:I

    .line 250
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->c:I

    .line 251
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->d:I

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    const/16 v1, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->k:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 195
    iput-boolean v6, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->n:Z

    .line 196
    iput-boolean v6, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->m:Z

    .line 197
    new-array v0, v1, [F

    .line 198
    new-array v1, v1, [F

    .line 199
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->k:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 201
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->p:[F

    .line 203
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->p:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 204
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->a:Lcom/smartadserver/android/library/controller/mraid/e;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->p:[F

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/e;->a(F)V

    .line 206
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    iget-wide v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 210
    iput v6, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->h:I

    .line 213
    :cond_1
    iget-wide v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->i:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 214
    iget-wide v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->i:J

    sub-long v2, v0, v2

    .line 215
    iget-object v4, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    aget v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->o:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->o:[F

    aget v5, v5, v7

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->o:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    .line 219
    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 221
    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->h:I

    if-lt v2, v8, :cond_2

    iget-wide v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->j:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 222
    iput-wide v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->j:J

    .line 223
    iput v6, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->h:I

    .line 224
    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->a:Lcom/smartadserver/android/library/controller/mraid/e;

    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/e;->b()V

    .line 226
    :cond_2
    iput-wide v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->g:J

    .line 228
    :cond_3
    iput-wide v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->i:J

    .line 229
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->a:Lcom/smartadserver/android/library/controller/mraid/e;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    aget v3, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartadserver/android/library/controller/mraid/e;->a(FFF)V

    .line 234
    :cond_4
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->k:[F

    .line 185
    iput-boolean v7, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->m:Z

    goto/16 :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->o:[F

    .line 190
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->l:[F

    .line 191
    iput-boolean v7, p0, Lcom/smartadserver/android/library/controller/mraid/a/a;->n:Z

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
