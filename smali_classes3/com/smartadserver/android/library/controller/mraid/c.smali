.class public Lcom/smartadserver/android/library/controller/mraid/c;
.super Ljava/lang/Object;
.source "SASMRAIDOrientationProperties.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/c;->a:Z

    .line 25
    const-string v0, "none"

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/c;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    :try_start_0
    const-string v1, "allowOrientationChange"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/c;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    const-string v1, "forceOrientation"

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
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
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v1, "allowOrientationChange"

    iget-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/c;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/c;->a:Z

    .line 31
    const-string v1, "forceOrientation"

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/mraid/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/c;->b:Ljava/lang/String;

    .line 32
    return-void
.end method
