.class Lcom/loopme/AdActivity$1;
.super Ljava/lang/Object;
.source "AdActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdActivity;


# direct methods
.method constructor <init>(Lcom/loopme/AdActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 59
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 60
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 61
    iget-object v3, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    iget-object v4, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    invoke-static {v4}, Lcom/loopme/AdActivity;->access$100(Lcom/loopme/AdActivity;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/loopme/AdActivity;->access$002(Lcom/loopme/AdActivity;F)F

    .line 62
    iget-object v3, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v3, v0}, Lcom/loopme/AdActivity;->access$102(Lcom/loopme/AdActivity;F)F

    .line 63
    iget-object v0, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    invoke-static {v0}, Lcom/loopme/AdActivity;->access$100(Lcom/loopme/AdActivity;)F

    move-result v0

    iget-object v1, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    invoke-static {v1}, Lcom/loopme/AdActivity;->access$000(Lcom/loopme/AdActivity;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    iget-object v2, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    invoke-static {v2}, Lcom/loopme/AdActivity;->access$200(Lcom/loopme/AdActivity;)F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/loopme/AdActivity;->access$202(Lcom/loopme/AdActivity;F)F

    .line 66
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    invoke-static {v0}, Lcom/loopme/AdActivity;->access$300(Lcom/loopme/AdActivity;)Lcom/loopme/AdController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/loopme/AdActivity$1;->this$0:Lcom/loopme/AdActivity;

    invoke-static {v0}, Lcom/loopme/AdActivity;->access$300(Lcom/loopme/AdActivity;)Lcom/loopme/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/AdController;->onAdShake()V

    .line 71
    :cond_0
    return-void
.end method
