.class public Lcom/openx/model/AdGroup;
.super Ljava/lang/Object;
.source "AdGroup.java"


# instance fields
.field private mAds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/openx/model/Ad;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mHasParseError:Z

.field private mLcookie:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/openx/model/AdGroup;->mAds:Ljava/util/Vector;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/openx/model/AdGroup;->mLcookie:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/openx/model/AdGroup;->mVersion:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/openx/model/AdGroup;->mCount:I

    return-void
.end method

.method private setCount(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/openx/model/AdGroup;->mCount:I

    .line 56
    return-void
.end method

.method private setLcookie(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/openx/model/AdGroup;->mLcookie:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/openx/model/AdGroup;->mVersion:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getAds()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/openx/model/Ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/openx/model/AdGroup;->mAds:Ljava/util/Vector;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/openx/model/AdGroup;->mCount:I

    return v0
.end method

.method public getLCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/openx/model/AdGroup;->mLcookie:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/openx/model/AdGroup;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasParseError()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/openx/model/AdGroup;->mHasParseError:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 67
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_5

    .line 75
    const-string v0, "ad"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 78
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 79
    new-instance v3, Lcom/openx/model/Ad;

    invoke-direct {v3}, Lcom/openx/model/Ad;-><init>()V

    .line 80
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 81
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/openx/model/Ad;->parse(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Lcom/openx/model/Ad;->hasParseError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openx/model/AdGroup;->setParseError(Z)V

    .line 101
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/openx/model/AdGroup;->hasParseError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/model/AdGroup;->setVersion(Ljava/lang/String;)V

    .line 104
    const-string v0, "count"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/openx/model/AdGroup;->setCount(I)V

    .line 105
    const-string v0, "lcookie"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/model/AdGroup;->setLcookie(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {p0, v5}, Lcom/openx/model/AdGroup;->setParseError(Z)V

    goto :goto_0

    .line 87
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/openx/model/AdGroup;->getAds()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openx/model/AdGroup;->setParseError(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setParseError(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/openx/model/AdGroup;->mHasParseError:Z

    .line 21
    return-void
.end method
