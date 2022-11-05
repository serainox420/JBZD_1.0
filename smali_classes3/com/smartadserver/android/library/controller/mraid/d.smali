.class public Lcom/smartadserver/android/library/controller/mraid/d;
.super Ljava/lang/Object;
.source "SASMRAIDResizeProperties.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->f:Z

    .line 43
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    .line 44
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    .line 45
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/d;->d:I

    .line 47
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/d;->e:I

    .line 48
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->f:Z

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v1, "customClosePosition"

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "offsetX"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string v1, "offsetY"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v1, "allowOffscreen"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->f:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/d;->a:I

    .line 61
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/d;->b:I

    .line 62
    const-string v1, "customClosePosition"

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    .line 63
    const-string v1, "offsetX"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/d;->d:I

    .line 64
    const-string v1, "offsetY"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/d;->e:I

    .line 65
    const-string v1, "allowOffscreen"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/d;->f:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/d;->f:Z

    .line 66
    return-void
.end method

.method public b()I
    .locals 4

    .prologue
    const/4 v0, 0x6

    .line 95
    const/4 v1, 0x1

    .line 97
    const-string v2, "top-left"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string v2, "top-center"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const/4 v0, 0x4

    goto :goto_0

    .line 101
    :cond_2
    const-string v2, "bottom-left"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    const/4 v0, 0x2

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "bottom-center"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    const/4 v0, 0x5

    goto :goto_0

    .line 105
    :cond_4
    const-string v2, "bottom-right"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    :cond_5
    const-string v2, "center"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    const-string v2, "none"

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
