.class public Lcom/intentsoftware/addapptr/c/i;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/c/i$a;
    }
.end annotation


# static fields
.field private static final DELAY_AFTER_CREATION:I = 0x1388

.field private static final MINIMUM_SHAKES:I = 0x5

.field private static final SHAKE_COUNT_RESET_TIME_MS:I = 0x226

.field private static final SHAKE_SLOP_TIME_MS:I = 0x96

.field private static final SHAKE_THRESHOLD_GRAVITY:F = 2.5f


# instance fields
.field private mListener:Lcom/intentsoftware/addapptr/c/i$a;

.field private mShakeCount:I

.field private mShakeTimestamp:J

.field private final threshold:F

.field private final timeWhenCreated:J


# direct methods
.method public constructor <init>(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const v0, 0x411ce80a

    div-float v0, p1, v0

    .line 25
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 26
    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/intentsoftware/addapptr/c/i;->threshold:F

    .line 30
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/c/i;->timeWhenCreated:J

    .line 31
    return-void

    .line 28
    :cond_0
    iput v2, p0, Lcom/intentsoftware/addapptr/c/i;->threshold:F

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v4, 0x411ce80a

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/i;->mListener:Lcom/intentsoftware/addapptr/c/i$a;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    .line 52
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 53
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 55
    div-float/2addr v0, v4

    .line 56
    div-float/2addr v1, v4

    .line 57
    div-float/2addr v2, v4

    .line 60
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 63
    iget v1, p0, Lcom/intentsoftware/addapptr/c/i;->threshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/intentsoftware/addapptr/c/i;->timeWhenCreated:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-wide v2, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeTimestamp:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 77
    iget-wide v2, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeTimestamp:J

    const-wide/16 v4, 0x226

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 78
    iput v6, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeCount:I

    .line 81
    :cond_2
    iput-wide v0, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeTimestamp:J

    .line 82
    iget v0, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeCount:I

    .line 84
    iget v0, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 85
    iput v6, p0, Lcom/intentsoftware/addapptr/c/i;->mShakeCount:I

    .line 86
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c/i;->mListener:Lcom/intentsoftware/addapptr/c/i$a;

    invoke-interface {v0}, Lcom/intentsoftware/addapptr/c/i$a;->onShake()V

    goto :goto_0
.end method

.method public setOnShakeListener(Lcom/intentsoftware/addapptr/c/i$a;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c/i;->mListener:Lcom/intentsoftware/addapptr/c/i$a;

    .line 35
    return-void
.end method
