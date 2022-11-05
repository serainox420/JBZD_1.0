.class Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker$1;
.super Ljava/lang/Object;
.source "DefaultAdvertisingIdChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;->requestAdvertisingId(Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;

.field final synthetic val$a:Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker$1;->this$0:Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;

    iput-object p2, p0, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker$1;->val$a:Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    iget-object v1, p0, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker$1;->this$0:Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;

    iget-object v1, v1, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/video/adsdk/internal/checker/DefaultAdvertisingIdChecker$1;->val$a:Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;

    invoke-interface {v1, v0}, Lcom/video/adsdk/interfaces/AdvertisingIdRequestCompletedAction;->onAdvertisingIdRequestCompleted(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    .line 48
    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 36
    const-string v2, "VideoAdSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Advertising ID not available! Unrecoverable error connecting to Google Play services e.g., the old version of the service doesn\'t support getting AdvertisingId.\nError message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :catch_1
    move-exception v1

    .line 39
    const-string v2, "VideoAdSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Advertising ID not available! Encountered a recoverable error connecting to Google Play services.\nError message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :catch_2
    move-exception v1

    .line 42
    const-string v1, "VideoAdSDK"

    const-string v2, "Google Advertising ID not available! Google Play is not installed on this device."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :catch_3
    move-exception v1

    .line 45
    const-string v2, "VideoAdSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google Advertising ID not available!\nReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
