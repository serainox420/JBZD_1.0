.class public Lcom/openx/model/Ad;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x66a6cd3d407d1f1dL


# instance fields
.field protected mAdGroupId:I

.field protected mAdId:I

.field protected mAdUnitId:I

.field protected mCreatives:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/openx/model/AdCreative;",
            ">;"
        }
    .end annotation
.end field

.field protected mHTML:Ljava/lang/String;

.field protected mHasParseError:Z

.field protected mType:Ljava/lang/String;

.field protected refreshInterval:I

.field protected tpJSON:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/openx/model/Ad;->refreshInterval:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/openx/model/Ad;->tpJSON:Ljava/lang/String;

    return-void
.end method

.method private setAdGroupId(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/openx/model/Ad;->mAdGroupId:I

    .line 85
    return-void
.end method

.method private setAdId(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/openx/model/Ad;->mAdId:I

    .line 105
    return-void
.end method

.method private setAdUnitId(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/openx/model/Ad;->mAdUnitId:I

    .line 95
    return-void
.end method

.method private setParseError(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/openx/model/Ad;->mHasParseError:Z

    .line 60
    return-void
.end method

.method private setRefreshInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/openx/model/Ad;->refreshInterval:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    if-ne p0, p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    instance-of v2, p1, Lcom/openx/model/Ad;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 31
    :cond_2
    check-cast p1, Lcom/openx/model/Ad;

    .line 33
    iget v2, p0, Lcom/openx/model/Ad;->mAdGroupId:I

    iget v3, p1, Lcom/openx/model/Ad;->mAdGroupId:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 34
    :cond_3
    iget v2, p0, Lcom/openx/model/Ad;->mAdId:I

    iget v3, p1, Lcom/openx/model/Ad;->mAdId:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 35
    :cond_4
    iget v2, p0, Lcom/openx/model/Ad;->mAdUnitId:I

    iget v3, p1, Lcom/openx/model/Ad;->mAdUnitId:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 36
    :cond_5
    iget-boolean v2, p0, Lcom/openx/model/Ad;->mHasParseError:Z

    iget-boolean v3, p1, Lcom/openx/model/Ad;->mHasParseError:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 37
    :cond_6
    iget-object v2, p0, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    iget-object v3, p1, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    if-nez v2, :cond_7

    .line 38
    :cond_9
    iget-object v2, p0, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 39
    :cond_c
    iget-object v2, p0, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p1, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAdGroupId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/openx/model/Ad;->mAdGroupId:I

    return v0
.end method

.method public getAdId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/openx/model/Ad;->mAdId:I

    return v0
.end method

.method public getAdUnitId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/openx/model/Ad;->mAdUnitId:I

    return v0
.end method

.method public getCreative()Lcom/openx/model/AdCreative;
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/AdCreative;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreatives()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/openx/model/AdCreative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    return-object v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/openx/model/Ad;->refreshInterval:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected hasParseError()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/openx/model/Ad;->mHasParseError:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 48
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/Ad;->mCreatives:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/openx/model/Ad;->mAdGroupId:I

    add-int/2addr v0, v2

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/openx/model/Ad;->mAdUnitId:I

    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/openx/model/Ad;->mAdId:I

    add-int/2addr v0, v2

    .line 52
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/Ad;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/openx/model/Ad;->mHasParseError:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 54
    return v0

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0

    :cond_2
    move v0, v1

    .line 48
    goto :goto_1

    :cond_3
    move v0, v1

    .line 52
    goto :goto_2
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 148
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setParseError(Z)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    if-eqz v1, :cond_6

    .line 157
    const-string v0, "creative"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 159
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 162
    new-instance v3, Lcom/openx/model/AdCreative;

    invoke-direct {v3}, Lcom/openx/model/AdCreative;-><init>()V

    .line 163
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 164
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/openx/model/AdCreative;->parse(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3}, Lcom/openx/model/AdCreative;->hasParseError()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setParseError(Z)V

    .line 181
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/openx/model/Ad;->hasParseError()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const-string v0, "adid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setAdId(I)V

    .line 184
    const-string v0, "adunitid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setAdUnitId(I)V

    .line 185
    const-string v0, "adunitgroup"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setAdGroupId(I)V

    .line 186
    const-string v0, "html"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openx/model/Ad;->setHTML(Ljava/lang/String;)V

    .line 187
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setType(Ljava/lang/String;)V

    .line 188
    const-string v0, "refresh_delay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setRefreshInterval(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    invoke-direct {p0, v5}, Lcom/openx/model/Ad;->setParseError(Z)V

    goto :goto_0

    .line 169
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/openx/model/Ad;->getCreatives()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/model/Ad;->setParseError(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/openx/model/Ad;->mHTML:Ljava/lang/String;

    .line 70
    return-void
.end method
