.class public final Lcom/openx/common/deviceData/managers/DeviceInfoImpl;
.super Lcom/openx/core/sdk/OXMBaseManager;
.source "DeviceInfoImpl.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/DeviceInfoListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMBaseManager;-><init>()V

    return-void
.end method

.method private getDeviceMacAddressesFromArp()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/common/deviceData/managers/ArpEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 386
    const/4 v2, 0x0

    .line 390
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/proc/net/arp"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    const-string v2, " +"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v4, 0x4

    if-lt v2, v4, :cond_0

    .line 398
    const/4 v2, 0x3

    aget-object v2, v0, v2

    .line 399
    const-string v4, "..:..:..:..:..:.."

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    new-instance v4, Lcom/openx/common/deviceData/managers/ArpEntity;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-direct {v4, v0, v2}, Lcom/openx/common/deviceData/managers/ArpEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 408
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    if-eqz v1, :cond_1

    .line 415
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 424
    :cond_1
    :goto_2
    return-object v3

    .line 414
    :cond_2
    if-eqz v1, :cond_1

    .line 415
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 418
    :catch_1
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 418
    :catch_2
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 412
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 414
    :goto_3
    if-eqz v1, :cond_3

    .line 415
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 421
    :cond_3
    :goto_4
    throw v0

    .line 418
    :catch_3
    move-exception v1

    .line 420
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 412
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 406
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public canStorePicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 361
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastFroyo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->isExternalStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createCalendarEvent(Lcom/openx/sdk/calendar/OXMCalendarEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/openx/sdk/calendar/OXMCalendarFactory;->getCalendarInstance()Lcom/openx/sdk/calendar/OXMCalendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/openx/sdk/calendar/OXMCalendar;->createCalendarEvent(Landroid/content/Context;Lcom/openx/sdk/calendar/OXMCalendarEvent;)V

    .line 288
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->dispose()V

    .line 172
    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 173
    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 174
    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 176
    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 178
    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 179
    return-void
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 121
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceDensity()F
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 432
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return-object v0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getDeviceMacAddressesFromArp()Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/common/deviceData/managers/ArpEntity;

    invoke-virtual {v0}, Lcom/openx/common/deviceData/managers/ArpEntity;->getMac()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 161
    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    :goto_1
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getODIN1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 220
    invoke-static {v0}, Lcom/openx/common/utils/helpers/Utils;->generateSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 202
    .line 203
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 187
    .line 188
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTelephony()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    move v0, v1

    .line 86
    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 93
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 94
    iget-object v2, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hasSystemFeature"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 96
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v5, "android.hardware.telephony"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 97
    iget-object v3, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 101
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 105
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/openx/core/sdk/OXMBaseManager;->init(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mContext:Landroid/content/Context;

    .line 56
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 62
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 63
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 67
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->hasTelephony()Z

    .line 72
    :cond_0
    return-void
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenLocked()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/openx/sdk/browser/AdBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    const-string v1, "EXTRA_IS_VIDEO"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const-string v1, "EXTRA_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/DeviceInfoImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 298
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->atLeastFroyo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 308
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 310
    invoke-static {p1}, Lcom/openx/common/utils/helpers/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 326
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v2, 0x400

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 329
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 331
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V

    goto :goto_1

    .line 302
    :cond_1
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->isExternalStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 336
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 337
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 339
    return-void
.end method
