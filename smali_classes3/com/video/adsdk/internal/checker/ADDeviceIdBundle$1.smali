.class Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;
.super Ljava/lang/Object;
.source "ADDeviceIdBundle.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->readDeviceIds(Landroid/content/Context;Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

.field final synthetic val$a:Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;->this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

    iput-object p2, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;->val$a:Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingIdRequestCompleted(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;->this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

    invoke-static {v0, p1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->access$002(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 70
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;->this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

    new-instance v1, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;

    iget-object v2, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;->this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

    invoke-direct {v1, v2}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;-><init>(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;)V

    invoke-static {v0, v1}, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;->access$202(Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;)Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$Identification;

    .line 71
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;->val$a:Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;

    iget-object v1, p0, Lcom/video/adsdk/internal/checker/ADDeviceIdBundle$1;->this$0:Lcom/video/adsdk/internal/checker/ADDeviceIdBundle;

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/DeviceIdBundleReadyAction;->onDeviceIdBundleReady(Lcom/video/adsdk/interfaces/checker/DeviceIdBundle;)V

    .line 72
    return-void
.end method
