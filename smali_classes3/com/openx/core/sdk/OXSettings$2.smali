.class final Lcom/openx/core/sdk/OXSettings$2;
.super Ljava/lang/Object;
.source "OXSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/core/sdk/OXSettings;->initSDK(Landroid/content/Context;Lcom/openx/common/deviceData/listeners/SDKInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/openx/core/sdk/OXSettings$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/openx/core/sdk/OXSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_0
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/openx/core/sdk/OXSettings;->ADID:Ljava/lang/String;

    .line 240
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/openx/core/sdk/OXSettings;->isLimitAdTrackingEnabled:Z

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/openx/core/sdk/OXSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/openx/core/sdk/OXSettings;->access$100(Landroid/content/Context;)V

    .line 244
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method
