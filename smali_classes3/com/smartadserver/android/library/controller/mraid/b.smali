.class public Lcom/smartadserver/android/library/controller/mraid/b;
.super Ljava/lang/Object;
.source "SASMRAIDExpandProperties.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    .line 24
    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    .line 25
    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->d:Z

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string v1, "useCustomClose"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    const-string v1, "isModal"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
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
    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "width"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->a:I

    .line 32
    const-string v1, "height"

    iget v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/b;->b:I

    .line 33
    const-string v1, "useCustomClose"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/b;->d:Z

    .line 36
    return-void
.end method
