.class public Lcom/openx/model/AdCreative;
.super Ljava/lang/Object;
.source "AdCreative.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7f1ed5e73ac56577L


# instance fields
.field private mAlt:Ljava/lang/String;

.field private mHasParseError:Z

.field private mHeight:I

.field private mMedia:Ljava/lang/String;

.field private mMime:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mTracking:Lcom/openx/model/AdTracking;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setAlt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private setMedia(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private setMime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private setParseError(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/openx/model/AdCreative;->mHasParseError:Z

    .line 59
    return-void
.end method

.method private setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private setTracking(Lcom/openx/model/AdTracking;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    instance-of v2, p1, Lcom/openx/model/AdCreative;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 28
    :cond_2
    check-cast p1, Lcom/openx/model/AdCreative;

    .line 30
    iget-boolean v2, p0, Lcom/openx/model/AdCreative;->mHasParseError:Z

    iget-boolean v3, p1, Lcom/openx/model/AdCreative;->mHasParseError:Z

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 31
    :cond_3
    iget v2, p0, Lcom/openx/model/AdCreative;->mHeight:I

    iget v3, p1, Lcom/openx/model/AdCreative;->mHeight:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 32
    :cond_4
    iget v2, p0, Lcom/openx/model/AdCreative;->mWidth:I

    iget v3, p1, Lcom/openx/model/AdCreative;->mWidth:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 33
    :cond_5
    iget-object v2, p0, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 34
    :cond_8
    iget-object v2, p0, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 35
    :cond_b
    iget-object v2, p0, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p1, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 36
    :cond_e
    iget-object v2, p0, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    iget-object v3, p1, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    iget-object v2, p1, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37
    :cond_11
    iget-object v2, p0, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    iget-object v3, p1, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    invoke-virtual {v2, v3}, Lcom/openx/model/AdTracking;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/openx/model/AdCreative;->mHeight:I

    return v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getTracking()Lcom/openx/model/AdTracking;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/openx/model/AdCreative;->mWidth:I

    return v0
.end method

.method protected hasParseError()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/openx/model/AdCreative;->mHasParseError:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mMedia:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 46
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mTracking:Lcom/openx/model/AdTracking;

    invoke-virtual {v0}, Lcom/openx/model/AdTracking;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mMime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/openx/model/AdCreative;->mWidth:I

    add-int/2addr v0, v2

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/openx/model/AdCreative;->mHeight:I

    add-int/2addr v0, v2

    .line 50
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mAlt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/openx/model/AdCreative;->mTarget:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/openx/model/AdCreative;->mHasParseError:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 53
    return v0

    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_1

    :cond_3
    move v0, v1

    .line 47
    goto :goto_2

    :cond_4
    move v0, v1

    .line 50
    goto :goto_3

    :cond_5
    move v0, v1

    .line 51
    goto :goto_4
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 140
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/model/AdCreative;->setParseError(Z)V

    .line 168
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/openx/model/AdTracking;

    invoke-direct {v1}, Lcom/openx/model/AdTracking;-><init>()V

    .line 148
    const-string v2, "tracking"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/openx/model/AdTracking;->parse(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Lcom/openx/model/AdTracking;->hasParseError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/openx/model/AdCreative;->setParseError(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    invoke-direct {p0, v3}, Lcom/openx/model/AdCreative;->setParseError(Z)V

    goto :goto_0

    .line 155
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/openx/model/AdCreative;->setTracking(Lcom/openx/model/AdTracking;)V

    .line 156
    const-string v1, "alt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/model/AdCreative;->setAlt(Ljava/lang/String;)V

    .line 157
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/openx/model/AdCreative;->setHeight(I)V

    .line 158
    const-string v1, "media"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/model/AdCreative;->setMedia(Ljava/lang/String;)V

    .line 159
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/model/AdCreative;->setMime(Ljava/lang/String;)V

    .line 160
    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/openx/model/AdCreative;->setTarget(Ljava/lang/String;)V

    .line 161
    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/openx/model/AdCreative;->setWidth(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/openx/model/AdCreative;->mHeight:I

    .line 109
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/openx/model/AdCreative;->mWidth:I

    .line 99
    return-void
.end method
