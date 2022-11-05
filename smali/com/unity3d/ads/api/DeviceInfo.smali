.class public Lcom/unity3d/ads/api/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getAdvertisingTrackingId(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static getAndroidId(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static getApiLevel(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getApiLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public static getBatteryLevel(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getBatteryLevel()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public static getBatteryStatus(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getBatteryStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public static getConnectionType(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/unity3d/ads/device/Device;->isUsingWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "wifi"

    .line 92
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 93
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/device/Device;->isActiveNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "cellular"

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method public static getDeviceVolume(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/unity3d/ads/device/Device;->getStreamVolume(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method private static getFileForStorageType(Lcom/unity3d/ads/api/DeviceInfo$StorageType;)Ljava/io/File;
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/unity3d/ads/api/DeviceInfo$1;->$SwitchMap$com$unity3d$ads$api$DeviceInfo$StorageType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled storagetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getFreeMemory(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getFreeMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public static getFreeSpace(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 6
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    invoke-static {p0}, Lcom/unity3d/ads/api/DeviceInfo;->getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/unity3d/ads/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads/device/DeviceError;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 230
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/api/DeviceInfo;->getFileForStorageType(Lcom/unity3d/ads/api/DeviceInfo$StorageType;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/device/Device;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 226
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 227
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads/device/DeviceError;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getHeadset(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->isWiredHeadsetOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public static getInstalledPackages(ZLcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lcom/unity3d/ads/device/Device;->getInstalledPackages(Z)Ljava/util/List;

    move-result-object v0

    .line 123
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public static getLimitAdTrackingFlag(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static getManufacturer(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static getModel(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static getNetworkOperator(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public static getNetworkOperatorName(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public static getNetworkType(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static getOsVersion(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static getRingerMode(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getRingerMode()I

    move-result v0

    .line 145
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 146
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 161
    :goto_0
    return-void

    .line 148
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled ringerMode error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_0
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :pswitch_1
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->AUDIOMANAGER_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScreenBrightness(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenBrightness()I

    move-result v0

    .line 176
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 177
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void

    .line 179
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled screenBrightness error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_0
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getScreenDensity(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenDensity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static getScreenHeight(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static getScreenLayout(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenLayout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static getScreenWidth(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method private static getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    .locals 3

    .prologue
    .line 194
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 198
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSystemLanguage(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/ads/device/Device;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public static getTimeZone(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public static getTotalMemory(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getTotalMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public static getTotalSpace(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 6
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-static {p0}, Lcom/unity3d/ads/api/DeviceInfo;->getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    move-result-object v0

    .line 236
    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lcom/unity3d/ads/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads/device/DeviceError;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/api/DeviceInfo;->getFileForStorageType(Lcom/unity3d/ads/api/DeviceInfo$StorageType;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/device/Device;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 242
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 243
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    sget-object v2, Lcom/unity3d/ads/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads/device/DeviceError;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getUniqueEventId(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getUniqueEventId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public static isAppInstalled(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/unity3d/ads/device/Device;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static isRooted(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->isRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 118
    return-void
.end method
