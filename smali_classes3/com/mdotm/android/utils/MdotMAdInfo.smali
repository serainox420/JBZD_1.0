.class public Lcom/mdotm/android/utils/MdotMAdInfo;
.super Ljava/lang/Object;
.source "MdotMAdInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 23
    :try_start_0
    const-string v1, "this"

    const-string v2, "GPS is "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 28
    const-string v2, "this"

    const-string v3, "GPS not found "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 37
    :catch_1
    move-exception v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    goto :goto_0

    .line 41
    :catch_2
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 48
    :catch_3
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 52
    :catch_4
    move-exception v1

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    goto :goto_0
.end method
