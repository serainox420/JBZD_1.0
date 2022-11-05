.class public Lcom/openx/view/tp/chain/parser/ChainItem;
.super Lcom/openx/model/Ad;
.source "ChainItem.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public height:I

.field public isFallback:Z

.field public mediationUrl:Ljava/lang/String;

.field public sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

.field public transaction:Ljava/lang/String;

.field public transactionUrl:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/openx/model/Ad;-><init>()V

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_1

    .line 64
    const-string v1, "is_fallback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->isFallback:Z

    .line 65
    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->mHTML:Ljava/lang/String;

    .line 66
    const-string v1, "ts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->transaction:Ljava/lang/String;

    .line 67
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->type:Ljava/lang/String;

    .line 68
    const-string v1, "mediation_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->mediationUrl:Ljava/lang/String;

    .line 69
    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->width:I

    .line 70
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->height:I

    .line 72
    const-string v1, "sdk_params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/openx/view/tp/chain/parser/SDKParams;

    const-string v2, "sdk_params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/openx/view/tp/chain/parser/SDKParams;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/openx/model/Ad;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/openx/view/tp/chain/parser/ChainItem;->mHTML:Ljava/lang/String;

    .line 55
    return-void
.end method
