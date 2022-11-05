.class public Lcom/moat/analytics/mobile/aol/MoatConfig;
.super Ljava/lang/Object;
.source "MoatConfig.java"


# static fields
.field public static final DEFAULT_VW_INTERVAL_MS:I = 0xc8

.field private static final JSON_KEY_OS_BLACKLIST:Ljava/lang/String; = "ob"

.field private static final JSON_KEY_STATUS:Ljava/lang/String; = "sa"

.field private static final JSON_KEY_VW_INTERVAL:Ljava/lang/String; = "in"

.field private static final JSON_VAL_STATUS_ON:Ljava/lang/String; = "on"

.field private static final MAX_WV_INTERVAL_MS:I = 0x3e8

.field private static final MIN_VW_INTERVAL_MS:I = 0x64


# instance fields
.field private isDebug:Z

.field private isOn:Z

.field private vwIntervalMillis:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isOn:Z

    .line 31
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isDebug:Z

    .line 32
    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->vwIntervalMillis:I

    .line 33
    invoke-virtual {p0, p1}, Lcom/moat/analytics/mobile/aol/MoatConfig;->parseConfig(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private isOSBlacklisted(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    :try_start_0
    const-string v2, "ob"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "ob"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 67
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 68
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    .line 75
    :goto_1
    return v0

    .line 66
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getVWIntervalMillis()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->vwIntervalMillis:I

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isDebug:Z

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isOn:Z

    return v0
.end method

.method public parseConfig(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v1, "sa"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "4724e28a731f8ba73e9eecc4d5c807705dd80963"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 43
    const-string v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/aol/MoatConfig;->isOSBlacklisted(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isOn:Z

    .line 46
    iput-boolean v2, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isDebug:Z

    .line 49
    :cond_1
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_2

    .line 52
    iput v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->vwIntervalMillis:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_2
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    iput-boolean v4, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isOn:Z

    .line 57
    iput-boolean v4, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->isDebug:Z

    .line 58
    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/aol/MoatConfig;->vwIntervalMillis:I

    goto :goto_0
.end method
