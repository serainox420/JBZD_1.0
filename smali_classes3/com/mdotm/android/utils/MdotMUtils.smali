.class public Lcom/mdotm/android/utils/MdotMUtils;
.super Ljava/lang/Object;
.source "MdotMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;
    }
.end annotation


# static fields
.field public static AD_ICON_WITH_TEXT_MESSAGE:I

.field public static AD_RECEVIED:I

.field public static AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

.field private static _mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;


# instance fields
.field private interstitialActionListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mdotm/android/listener/InterstitialActionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    .line 30
    sput v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    .line 31
    sput v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_RECEVIED:I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 3

    .prologue
    .line 407
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    invoke-static {p1}, Lcom/mdotm/android/utils/MdotMAdInfo;->getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    :goto_0
    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 410
    const-string v1, "this"

    const-string v2, "GPS not found "

    invoke-static {v1, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 412
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserAgentManually()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :goto_0
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 88
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_0
    :goto_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 101
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_1
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 108
    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_2
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    .line 113
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_3
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 94
    :cond_4
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mdotm/android/utils/MdotMUtils;->_mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/mdotm/android/utils/MdotMUtils;

    invoke-direct {v0}, Lcom/mdotm/android/utils/MdotMUtils;-><init>()V

    sput-object v0, Lcom/mdotm/android/utils/MdotMUtils;->_mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;

    .line 42
    :cond_0
    sget-object v0, Lcom/mdotm/android/utils/MdotMUtils;->_mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;

    return-object v0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 358
    const-string v1, "connectivity"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 359
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 392
    .line 393
    invoke-direct {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils;->getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 394
    const/4 v0, 0x0

    .line 395
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Id is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    :cond_0
    return-object v0
.end method

.method public getBandWidth(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 162
    .line 163
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 164
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 169
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 170
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 173
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 174
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wifi bandwidth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "000"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 184
    goto :goto_0

    .line 185
    :cond_1
    if-nez v2, :cond_3

    .line 186
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 251
    goto :goto_0

    .line 188
    :pswitch_0
    const-string v0, "50"

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "14"

    goto :goto_0

    .line 195
    :pswitch_2
    const-string v0, "50"

    goto :goto_0

    .line 199
    :pswitch_3
    const-string v0, "400"

    goto :goto_0

    .line 203
    :pswitch_4
    const-string v0, "600"

    goto :goto_0

    .line 207
    :pswitch_5
    const-string v0, "100"

    goto :goto_0

    .line 211
    :pswitch_6
    const-string v0, "2000"

    goto :goto_0

    .line 215
    :pswitch_7
    const-string v0, "700"

    goto :goto_0

    .line 219
    :pswitch_8
    const-string v0, "1024"

    goto :goto_0

    .line 223
    :pswitch_9
    const-string v0, "400"

    goto :goto_0

    .line 229
    :pswitch_a
    const-string v0, "1024"

    goto :goto_0

    .line 233
    :pswitch_b
    const-string v0, "5120"

    goto :goto_0

    .line 237
    :pswitch_c
    const-string v0, "10240"

    goto :goto_0

    .line 241
    :pswitch_d
    const-string v0, "25600"

    goto :goto_0

    .line 244
    :pswitch_e
    const-string v0, "10240"

    goto :goto_0

    :pswitch_f
    move-object v0, v1

    .line 249
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 255
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 257
    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public getDisplaySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 121
    .line 123
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 125
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Landroid/view/WindowManager;

    .line 127
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v1, v3, :cond_0

    .line 128
    const-string v1, "Getting conditional display size"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 130
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 131
    iget v0, v2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SCREEN DISPLAY SIZE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    return-object v0

    .line 134
    :cond_0
    :try_start_1
    const-string v1, "Default display"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 137
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string v1, "Default display"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 147
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getInterstitialActionListener(J)Lcom/mdotm/android/listener/InterstitialActionListener;
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/listener/InterstitialActionListener;

    return-object v0
.end method

.method public getLAT(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 419
    .line 420
    invoke-direct {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils;->getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 421
    const/4 v0, 0x0

    .line 422
    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isLAT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    :cond_0
    return v0
.end method

.method public getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    .line 56
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/mdotm/android/utils/MdotMUtils;->getUserAgentManually()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public removeInterstitialActionListener(J)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void
.end method

.method public reportImpression(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initiated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 267
    new-instance v0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;

    invoke-direct {v0, p0, p2}, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;-><init>(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;

    invoke-direct {v0, p0, p2}, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;-><init>(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setInterstitialActionListener(JLcom/mdotm/android/listener/InterstitialActionListener;)V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method
