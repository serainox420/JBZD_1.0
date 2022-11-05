.class Lcom/smaato/soma/internal/requests/settings/a$b$1;
.super Lcom/smaato/soma/l;
.source "DeviceDataCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/requests/settings/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/requests/settings/a$b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/settings/a$b;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 756
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    iget-object v0, v0, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/a;->a(Lcom/smaato/soma/internal/requests/settings/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smaato/soma/internal/requests/settings/a;->b:Ljava/lang/String;

    .line 759
    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, v1, Lcom/smaato/soma/internal/requests/settings/a;->c:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    iget-object v0, v0, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/a;->b(Lcom/smaato/soma/internal/requests/settings/a;)V

    .line 764
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    iget-object v0, v0, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/settings/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a:Lcom/smaato/soma/internal/requests/settings/a$b;

    iget-object v2, v2, Lcom/smaato/soma/internal/requests/settings/a$b;->a:Lcom/smaato/soma/internal/requests/settings/a;

    iget-object v2, v2, Lcom/smaato/soma/internal/requests/settings/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/smaato/soma/internal/requests/settings/a;->a(Lcom/smaato/soma/internal/requests/settings/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 759
    :cond_0
    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Data_Collector"

    const-string v2, "Please add dependency:  compile \'com.google.android.gms:play-services-ads:7.8.+\' to your build.gradle!"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1

    .line 771
    :catch_1
    move-exception v0

    .line 772
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Data_Collector"

    const-string v2, "Please add dependency:  compile \'com.google.android.gms:play-services-ads:7.8.+\' to your build.gradle!"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1

    .line 776
    :catch_2
    move-exception v0

    .line 777
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Data_Collector"

    const-string v2, "Device is not having the latest gms installed for GoogleAdvertisingIdProvider.Please add dependency:  compile \'com.google.android.gms:play-services-ads:7.8.+\' to your build.gradle!"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/settings/a$b$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
