.class public Lcom/openx/view/tp/chain/parser/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"


# instance fields
.field public auid:Ljava/lang/String;

.field public chainItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/view/tp/chain/parser/ChainItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v1, "auid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openx/view/tp/chain/parser/AdUnit;->auid:Ljava/lang/String;

    .line 51
    const-string v1, "chain"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/view/tp/chain/parser/AdUnit;->chainItems:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/openx/view/tp/chain/parser/AdUnit;->chainItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/openx/view/tp/chain/parser/ChainItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/openx/view/tp/chain/parser/ChainItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    sput-boolean v2, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    .line 75
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    sput-boolean v2, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    goto :goto_1
.end method
