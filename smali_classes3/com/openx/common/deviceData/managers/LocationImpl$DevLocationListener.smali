.class Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/common/deviceData/managers/LocationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/common/deviceData/managers/LocationImpl;


# direct methods
.method private constructor <init>(Lcom/openx/common/deviceData/managers/LocationImpl;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/common/deviceData/managers/LocationImpl;Lcom/openx/common/deviceData/managers/LocationImpl$1;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;-><init>(Lcom/openx/common/deviceData/managers/LocationImpl;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-static {v0}, Lcom/openx/common/deviceData/managers/LocationImpl;->access$000(Lcom/openx/common/deviceData/managers/LocationImpl;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-static {v0, p1}, Lcom/openx/common/deviceData/managers/LocationImpl;->access$002(Lcom/openx/common/deviceData/managers/LocationImpl;Landroid/location/Location;)Landroid/location/Location;

    .line 65
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-static {v0}, Lcom/openx/common/deviceData/managers/LocationImpl;->access$100(Lcom/openx/common/deviceData/managers/LocationImpl;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    iget-object v1, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-static {v1}, Lcom/openx/common/deviceData/managers/LocationImpl;->access$000(Lcom/openx/common/deviceData/managers/LocationImpl;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/openx/common/deviceData/managers/LocationImpl;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-static {v0, p1}, Lcom/openx/common/deviceData/managers/LocationImpl;->access$002(Lcom/openx/common/deviceData/managers/LocationImpl;Landroid/location/Location;)Landroid/location/Location;

    .line 71
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/LocationImpl$DevLocationListener;->this$0:Lcom/openx/common/deviceData/managers/LocationImpl;

    invoke-static {v0}, Lcom/openx/common/deviceData/managers/LocationImpl;->access$100(Lcom/openx/common/deviceData/managers/LocationImpl;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
