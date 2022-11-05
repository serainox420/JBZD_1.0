.class Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;
.super Ljava/lang/Object;
.source "LocationDetector.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/LocationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/common/LocationDetector;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/LocationDetector;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;->this$0:Lcom/pubmatic/sdk/common/LocationDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationListener.onLocationChanged location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 225
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;->this$0:Lcom/pubmatic/sdk/common/LocationDetector;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/LocationDetector;->access$002(Lcom/pubmatic/sdk/common/LocationDetector;Landroid/location/Location;)Landroid/location/Location;

    .line 226
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;->this$0:Lcom/pubmatic/sdk/common/LocationDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/LocationDetector;->access$102(Lcom/pubmatic/sdk/common/LocationDetector;Z)Z

    .line 227
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;->this$0:Lcom/pubmatic/sdk/common/LocationDetector;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/LocationDetector;->notifyObservers()V

    .line 228
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationListener.onProviderDisabled provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 234
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationListener.onProviderEnabled provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 240
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationListener.onStatusChanged provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    .line 244
    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 247
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;->this$0:Lcom/pubmatic/sdk/common/LocationDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/LocationDetector;->access$002(Lcom/pubmatic/sdk/common/LocationDetector;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_0
.end method
