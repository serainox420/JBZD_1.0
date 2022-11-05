.class public Lcom/openx/view/tp/chain/parser/ChainResponse;
.super Lcom/openx/model/AdGroup;
.source "ChainResponse.java"


# instance fields
.field public ads:Lcom/openx/view/tp/chain/parser/Ads;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 41
    invoke-direct {p0}, Lcom/openx/model/AdGroup;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Lcom/openx/view/tp/chain/parser/Ads;

    invoke-direct {v0, p1}, Lcom/openx/view/tp/chain/parser/Ads;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/openx/view/tp/chain/parser/ChainResponse;->ads:Lcom/openx/view/tp/chain/parser/Ads;

    .line 51
    iget-object v0, p0, Lcom/openx/view/tp/chain/parser/ChainResponse;->ads:Lcom/openx/view/tp/chain/parser/Ads;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/view/tp/chain/parser/ChainResponse;->ads:Lcom/openx/view/tp/chain/parser/Ads;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/Ads;->adUnits:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/openx/view/tp/chain/parser/ChainResponse;->ads:Lcom/openx/view/tp/chain/parser/Ads;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/Ads;->adUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/openx/view/tp/chain/parser/ChainResponse;->ads:Lcom/openx/view/tp/chain/parser/Ads;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/Ads;->adUnits:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/AdUnit;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/AdUnit;->chainItems:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    .line 58
    iget-object v2, p0, Lcom/openx/view/tp/chain/parser/ChainResponse;->ads:Lcom/openx/view/tp/chain/parser/Ads;

    iget-object v2, v2, Lcom/openx/view/tp/chain/parser/Ads;->recordTemplate:Ljava/lang/String;

    const-string v3, "{medium}"

    iget-object v4, p0, Lcom/openx/view/tp/chain/parser/ChainResponse;->ads:Lcom/openx/view/tp/chain/parser/Ads;

    iget-object v4, v4, Lcom/openx/view/tp/chain/parser/Ads;->medium:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->transactionUrl:Ljava/lang/String;

    .line 60
    iget-object v2, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->transactionUrl:Ljava/lang/String;

    const-string v3, "{txn_state}"

    iget-object v4, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->transaction:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->transactionUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    sput-boolean v5, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
