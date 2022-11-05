.class public Lcom/unity3d/ads/api/Intent;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/api/Intent$IntentError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static getStartingActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public static launch(Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 12
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 27
    const-string v0, "className"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    const-string v2, "action"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    const-string v3, "uri"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    const-string v4, "mimeType"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 32
    const-string v5, "categories"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 33
    const-string v6, "flags"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 34
    const-string v7, "extras"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    .line 36
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    .line 37
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v10, :cond_0

    .line 41
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    :cond_0
    :goto_0
    if-eqz v0, :cond_a

    .line 70
    invoke-static {}, Lcom/unity3d/ads/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 71
    invoke-static {}, Lcom/unity3d/ads/api/Intent;->getStartingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 81
    :goto_1
    return-void

    .line 45
    :cond_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 47
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :cond_2
    if-eqz v2, :cond_3

    .line 51
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_3
    if-eqz v3, :cond_4

    .line 54
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 56
    :cond_4
    if-eqz v4, :cond_5

    .line 57
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v10, :cond_6

    .line 60
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    :cond_6
    invoke-static {v8, v5}, Lcom/unity3d/ads/api/Intent;->setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 63
    sget-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_CATEGORIES:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v5, v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 65
    :cond_7
    invoke-static {v8, v7}, Lcom/unity3d/ads/api/Intent;->setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 66
    sget-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->COULDNT_PARSE_EXTRAS:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v7, v1, v9

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :cond_8
    move-object v0, v8

    goto :goto_0

    .line 75
    :cond_9
    sget-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->ACTIVITY_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :cond_a
    sget-object v0, Lcom/unity3d/ads/api/Intent$IntentError;->INTENT_WAS_NULL:Lcom/unity3d/ads/api/Intent$IntentError;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static setCategories(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 85
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v2, "Couldn\'t parse categories for intent"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 95
    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 124
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 127
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 128
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 130
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 131
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_0

    .line 133
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 134
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse launch intent extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static setExtras(Landroid/content/Intent;Lorg/json/JSONArray;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_1

    move v0, v1

    .line 104
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 106
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 107
    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 115
    invoke-static {p0, v3, v2}, Lcom/unity3d/ads/api/Intent;->setExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :goto_1
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v2, "Couldn\'t parse extras"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
