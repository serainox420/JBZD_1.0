.class public Lcom/loopme/video360/strategy/interactive/MotionStrategy;
.super Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;
.source "MotionStrategy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionStrategy"


# instance fields
.field private mDeviceRotation:I

.field private mRegistered:Z

.field private mSensorMatrix:[F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loopme/video360/MD360Director;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;-><init>(Ljava/util/List;)V

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mSensorMatrix:[F

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mRegistered:Z

    .line 26
    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->getDirectorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/MD360Director;

    .line 42
    invoke-virtual {v0, p1}, Lcom/loopme/video360/MD360Director;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return v1
.end method

.method public off(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->unregisterSensor(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public on(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 50
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mDeviceRotation:I

    .line 51
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->unregisterSensor(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->registerSensor(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    .line 87
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    return-void

    .line 91
    :pswitch_0
    iget v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mDeviceRotation:I

    iget-object v1, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mSensorMatrix:[F

    invoke-static {p1, v0, v1}, Lcom/loopme/video360/common/VRUtil;->sensorRotationVector2Matrix(Landroid/hardware/SensorEvent;I[F)V

    .line 93
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 94
    iget-object v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mSensorMatrix:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 96
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->getDirectorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/MD360Director;

    .line 97
    invoke-virtual {v0, v1}, Lcom/loopme/video360/MD360Director;->updateSensorInfo([F)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected registerSensor(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "sensor"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 63
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    const-string v0, "MotionStrategy"

    const-string v1, "TYPE_ROTATION_VECTOR sensor not support!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mRegistered:Z

    goto :goto_0
.end method

.method protected unregisterSensor(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mRegistered:Z

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "sensor"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 80
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;->mRegistered:Z

    goto :goto_0
.end method
