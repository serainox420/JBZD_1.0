.class Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;
.super Ljava/lang/Object;
.source "ADDeviceIdBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Identification"
.end annotation


# instance fields
.field final deviceId:Ljava/lang/String;

.field final identificationType:I

.field final synthetic this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;)V
    .locals 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;->this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->access$000(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-static {v0}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->access$100(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;->identificationType:I

    .line 33
    invoke-static {p1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->access$000(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;->deviceId:Ljava/lang/String;

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "VIDEO_AD_SDK"

    const-string v1, "No avertising ID detected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;->deviceId:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;->identificationType:I

    goto :goto_0
.end method
