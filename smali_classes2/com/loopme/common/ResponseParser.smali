.class public Lcom/loopme/common/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/common/ResponseParser$Listener;
    }
.end annotation


# static fields
.field private static final JSON_DEBUG:Ljava/lang/String; = "debug"

.field private static final JSON_EXPIRED_TIME:Ljava/lang/String; = "ad_expiry_time"

.field private static final JSON_FORMAT:Ljava/lang/String; = "format"

.field private static final JSON_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final JSON_PACKAGE_IDS:Ljava/lang/String; = "package_ids"

.field private static final JSON_PART_PRELOAD:Ljava/lang/String; = "preload25"

.field private static final JSON_SCRIPT:Ljava/lang/String; = "script"

.field private static final JSON_SETTINGS:Ljava/lang/String; = "settings"

.field private static final JSON_TOKEN:Ljava/lang/String; = "token"

.field private static final JSON_V360:Ljava/lang/String; = "v360"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdFormat:I

.field private mListener:Lcom/loopme/common/ResponseParser$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/loopme/common/ResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/ResponseParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/common/ResponseParser$Listener;I)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    sget-object v0, Lcom/loopme/common/ResponseParser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Wrong parameter(s)"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/loopme/common/ResponseParser;->mListener:Lcom/loopme/common/ResponseParser$Listener;

    .line 44
    iput p2, p0, Lcom/loopme/common/ResponseParser;->mAdFormat:I

    .line 45
    return-void
.end method

.method private handleParseError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/loopme/common/ResponseParser;->mListener:Lcom/loopme/common/ResponseParser$Listener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/loopme/common/ResponseParser;->mListener:Lcom/loopme/common/ResponseParser$Listener;

    new-instance v1, Lcom/loopme/common/LoopMeError;

    invoke-direct {v1, p1}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/loopme/common/ResponseParser$Listener;->onParseError(Lcom/loopme/common/LoopMeError;)V

    .line 126
    :cond_0
    return-void
.end method

.method private isValidFormat(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "banner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "interstitial"

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 133
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    sget-object v0, Lcom/loopme/common/ResponseParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " absent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-object v2
.end method

.method private parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    sget-object v1, Lcom/loopme/common/ResponseParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " absent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    sget-object v1, Lcom/loopme/common/ResponseParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " absent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    sget-object v1, Lcom/loopme/common/ResponseParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " absent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdParams(Ljava/lang/String;)Lcom/loopme/common/AdParams;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 48
    if-nez p1, :cond_0

    move-object v0, v1

    .line 103
    :goto_0
    return-object v0

    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 57
    const-string v4, "settings"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 59
    const-string v4, "format"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-direct {p0, v6}, Lcom/loopme/common/ResponseParser;->isValidFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broken response [wrong format parameter: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "server"

    invoke-static {v4, v7}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    iget v4, p0, Lcom/loopme/common/ResponseParser;->mAdFormat:I

    packed-switch v4, :pswitch_data_0

    .line 72
    const-string v4, ""

    .line 75
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    const-string v0, "Wrong Ad format"

    invoke-direct {p0, v0}, Lcom/loopme/common/ResponseParser;->handleParseError(Ljava/lang/String;)V

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 66
    :pswitch_0
    const-string v4, "banner"

    goto :goto_1

    .line 69
    :pswitch_1
    const-string v4, "interstitial"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v0, "Exception during json parse"

    invoke-direct {p0, v0}, Lcom/loopme/common/ResponseParser;->handleParseError(Ljava/lang/String;)V

    .line 82
    const-string v0, "Broken response"

    const-string v2, "server"

    invoke-static {v0, v2}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 83
    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 87
    const-string v0, "Exception during json parse"

    invoke-direct {p0, v0}, Lcom/loopme/common/ResponseParser;->handleParseError(Ljava/lang/String;)V

    .line 88
    const-string v0, "Broken response"

    const-string v2, "server"

    invoke-static {v0, v2}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    const-string v1, "debug"

    invoke-direct {p0, v5, v1}, Lcom/loopme/common/ResponseParser;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 93
    if-ne v1, v2, :cond_3

    move v1, v2

    .line 94
    :goto_2
    invoke-static {v1}, Lcom/loopme/debugging/LiveDebug;->setLiveDebug(Z)V

    .line 96
    const-string v1, "preload25"

    invoke-direct {p0, v5, v1}, Lcom/loopme/common/ResponseParser;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 97
    if-ne v1, v2, :cond_4

    move v1, v2

    .line 98
    :goto_3
    sput-boolean v1, Lcom/loopme/common/StaticParams;->PART_PRELOAD:Z

    .line 100
    const-string v4, "v360"

    invoke-direct {p0, v5, v4}, Lcom/loopme/common/ResponseParser;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 101
    if-ne v4, v2, :cond_5

    .line 103
    :goto_4
    new-instance v3, Lcom/loopme/common/AdParams$AdParamsBuilder;

    invoke-direct {v3, v6}, Lcom/loopme/common/AdParams$AdParamsBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "script"

    .line 104
    invoke-direct {p0, v0, v4}, Lcom/loopme/common/ResponseParser;->parseString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/loopme/common/AdParams$AdParamsBuilder;->html(Ljava/lang/String;)Lcom/loopme/common/AdParams$AdParamsBuilder;

    move-result-object v0

    const-string v3, "orientation"

    .line 105
    invoke-direct {p0, v5, v3}, Lcom/loopme/common/ResponseParser;->parseString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/loopme/common/AdParams$AdParamsBuilder;->orientation(Ljava/lang/String;)Lcom/loopme/common/AdParams$AdParamsBuilder;

    move-result-object v0

    const-string v3, "ad_expiry_time"

    .line 106
    invoke-direct {p0, v5, v3}, Lcom/loopme/common/ResponseParser;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/loopme/common/AdParams$AdParamsBuilder;->expiredTime(I)Lcom/loopme/common/AdParams$AdParamsBuilder;

    move-result-object v0

    const-string v3, "token"

    .line 107
    invoke-direct {p0, v5, v3}, Lcom/loopme/common/ResponseParser;->parseString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/loopme/common/AdParams$AdParamsBuilder;->token(Ljava/lang/String;)Lcom/loopme/common/AdParams$AdParamsBuilder;

    move-result-object v0

    const-string v3, "package_ids"

    .line 108
    invoke-direct {p0, v5, v3}, Lcom/loopme/common/ResponseParser;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/loopme/common/AdParams$AdParamsBuilder;->packageIds(Ljava/util/List;)Lcom/loopme/common/AdParams$AdParamsBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->partPreload(Z)Lcom/loopme/common/AdParams$AdParamsBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Lcom/loopme/common/AdParams$AdParamsBuilder;->video360(Z)Lcom/loopme/common/AdParams$AdParamsBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/loopme/common/AdParams$AdParamsBuilder;->build()Lcom/loopme/common/AdParams;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 93
    goto :goto_2

    :cond_4
    move v1, v3

    .line 97
    goto :goto_3

    :cond_5
    move v2, v3

    .line 101
    goto :goto_4

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
