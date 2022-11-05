.class public Lcom/loopme/video360/common/VRUtil;
.super Ljava/lang/Object;
.source "VRUtil.java"


# static fields
.field private static mTmp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    return-void
.end method

.method public static sensorRotationVector2Matrix(Landroid/hardware/SensorEvent;I[F)V
    .locals 6

    .prologue
    const/16 v5, 0x83

    const/16 v4, 0x81

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 12
    iget-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    .line 13
    packed-switch p1, :pswitch_data_0

    .line 34
    :goto_0
    return-void

    .line 15
    :pswitch_0
    sget-object v1, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 16
    sget-object v0, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v0, v2, v3, p2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 20
    :pswitch_1
    sget-object v1, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 21
    sget-object v0, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v0, v4, v5, p2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object v1, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 26
    sget-object v0, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v0, v3, v4, p2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 30
    :pswitch_3
    sget-object v1, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 31
    sget-object v0, Lcom/loopme/video360/common/VRUtil;->mTmp:[F

    invoke-static {v0, v5, v2, p2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
