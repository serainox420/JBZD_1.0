.class public Lcom/openx/view/tp/chain/parser/Ads;
.super Ljava/lang/Object;
.source "Ads.java"


# instance fields
.field public adUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/view/tp/chain/parser/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public isChain:Z

.field public medium:Ljava/lang/String;

.field public recordTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    const-string v1, "chain"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/openx/view/tp/chain/parser/Ads;->isChain:Z

    .line 52
    const-string v1, "medium"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/Ads;->medium:Ljava/lang/String;

    .line 53
    const-string v1, "record_tmpl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/Ads;->recordTemplate:Ljava/lang/String;

    .line 55
    const-string v1, "adunits"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_2

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/view/tp/chain/parser/Ads;->adUnits:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 62
    if-lez v2, :cond_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 67
    iget-object v3, p0, Lcom/openx/view/tp/chain/parser/Ads;->adUnits:Ljava/util/ArrayList;

    new-instance v4, Lcom/openx/view/tp/chain/parser/AdUnit;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/openx/view/tp/chain/parser/AdUnit;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    sput-boolean v3, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 79
    :cond_2
    sput-boolean v3, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    goto :goto_1
.end method
