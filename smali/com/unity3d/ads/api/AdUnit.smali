.class public Lcom/unity3d/ads/api/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"


# static fields
.field private static _adUnitActivity:Lcom/unity3d/ads/adunit/AdUnitActivity;

.field private static _currentActivityId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/unity3d/ads/api/AdUnit;->_currentActivityId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static close(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->finish()V

    .line 123
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/unity3d/ads/api/AdUnit;->_adUnitActivity:Lcom/unity3d/ads/adunit/AdUnitActivity;

    return-object v0
.end method

.method public static getCurrentAdUnitActivityId()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/unity3d/ads/api/AdUnit;->_currentActivityId:I

    return v0
.end method

.method private static getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_0
    return-object v1
.end method

.method public static getOrientation(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 3
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getViewFrame(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getViewFrame(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getViewFrame(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 287
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "x"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "y"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_1
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    return-object v1
.end method

.method public static getViews(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getViews()[Ljava/lang/String;

    move-result-object v0

    .line 170
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/unity3d/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 52
    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 7
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads/api/AdUnit;->open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V

    .line 57
    return-void
.end method

.method public static open(Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Lorg/json/JSONArray;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 6
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "Unity Ads opening new hardware accelerated ad unit activity"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/unity3d/ads/adunit/AdUnitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    :goto_0
    const/high16 v1, 0x10010000

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    if-eqz p0, :cond_2

    .line 76
    :try_start_0
    const-string v1, "activityId"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/unity3d/ads/api/AdUnit;->setCurrentAdUnitActivityId(I)V

    .line 93
    :try_start_1
    const-string v1, "views"

    invoke-static {p1}, Lcom/unity3d/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    if-eqz p3, :cond_0

    .line 103
    :try_start_2
    const-string v1, "keyEvents"

    invoke-static {p3}, Lcom/unity3d/ads/api/AdUnit;->getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    :cond_0
    const-string v1, "systemUiVisibility"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    const-string v1, "orientation"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 114
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opened AdUnitActivity with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 116
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p6, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 117
    :goto_1
    return-void

    .line 67
    :cond_1
    const-string v0, "Unity Ads opening new ad unit activity, hardware acceleration disabled"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/unity3d/ads/adunit/AdUnitSoftwareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "Could not set activityId for intent"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 80
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p6, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_2
    const-string v0, "Activity ID is NULL"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Activity ID NULL"

    aput-object v2, v1, v4

    invoke-virtual {p6, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    const-string v1, "Error parsing views from viewList"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p6, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 105
    :catch_2
    move-exception v0

    .line 106
    const-string v1, "Error parsing views from viewList"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 107
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p6, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setAdUnitActivity(Lcom/unity3d/ads/adunit/AdUnitActivity;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/unity3d/ads/api/AdUnit;->_adUnitActivity:Lcom/unity3d/ads/adunit/AdUnitActivity;

    .line 35
    return-void
.end method

.method public static setCurrentAdUnitActivityId(I)V
    .locals 0

    .prologue
    .line 46
    sput p0, Lcom/unity3d/ads/api/AdUnit;->_currentActivityId:I

    .line 47
    return-void
.end method

.method public static setKeepScreenOn(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$3;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/AdUnit$3;-><init>(Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setKeyEventList(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 5
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->getKeyEventList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setKeyEventList(Ljava/util/ArrayList;)V

    .line 251
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "Error parsing views from viewList"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    sget-object v1, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setOrientation(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 179
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$2;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/AdUnit$2;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setSystemUiVisibility(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$4;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/AdUnit$4;-><init>(Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setViewFrame(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 7
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 265
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/api/AdUnit$5;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p5, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setViews(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 4
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/ads/api/AdUnit;->getViewList(Lorg/json/JSONArray;)[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 142
    :goto_0
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/unity3d/ads/api/AdUnit$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/AdUnit$1;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 164
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {p1, v0, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    move v0, v2

    .line 139
    goto :goto_0

    .line 161
    :cond_1
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ACTIVITY_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method
