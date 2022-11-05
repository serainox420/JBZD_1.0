.class public Lcom/openx/model/AdTracking;
.super Ljava/lang/Object;
.source "AdTracking.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x530869657f33142fL


# instance fields
.field private mClickURL:Ljava/lang/String;

.field private mHasParseError:Z

.field private mImpressionURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setClickURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private setImpressionURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private setParseError(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/openx/model/AdTracking;->mHasParseError:Z

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 72
    :cond_3
    check-cast p1, Lcom/openx/model/AdTracking;

    .line 74
    iget-boolean v2, p0, Lcom/openx/model/AdTracking;->mHasParseError:Z

    iget-boolean v3, p1, Lcom/openx/model/AdTracking;->mHasParseError:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 76
    :cond_7
    iget-object v2, p0, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getClickURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    return-object v0
.end method

.method protected hasParseError()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/openx/model/AdTracking;->mHasParseError:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/AdTracking;->mImpressionURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 85
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/AdTracking;->mClickURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/openx/model/AdTracking;->mHasParseError:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 87
    return v0

    :cond_1
    move v0, v1

    .line 84
    goto :goto_0

    :cond_2
    move v0, v1

    .line 85
    goto :goto_1
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/model/AdTracking;->setParseError(Z)V

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v1, "impression"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/model/AdTracking;->setImpressionURL(Ljava/lang/String;)V

    .line 58
    const-string v1, "click"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openx/model/AdTracking;->setClickURL(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    invoke-direct {p0, v2}, Lcom/openx/model/AdTracking;->setParseError(Z)V

    goto :goto_0
.end method
