.class public Lcom/openx/view/tp/chain/parser/SDKParams;
.super Ljava/lang/Object;
.source "SDKParams.java"


# instance fields
.field public dictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mediationMethod:Ljava/lang/String;

.field public networkUid:Ljava/lang/String;

.field private params:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->params:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    .line 24
    invoke-direct {p0}, Lcom/openx/view/tp/chain/parser/SDKParams;->processParams()V

    .line 26
    return-void
.end method

.method private processParams()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 29
    iget-object v0, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->params:Ljava/lang/String;

    iget-object v2, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->params:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->params:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->params:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->params:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->params:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 35
    array-length v0, v2

    if-lez v0, :cond_2

    move v0, v1

    .line 37
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 39
    aget-object v3, v2, v0

    const-string v4, "mediation_method"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->mediationMethod:Ljava/lang/String;

    .line 37
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    aget-object v3, v2, v0

    const-string v4, "network_uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->networkUid:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aget-object v5, v2, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_2
    sput-boolean v7, Lcom/openx/view/tp/chain/network/ChainLoadWrapper;->parseError:Z

    .line 64
    :cond_3
    return-void
.end method
