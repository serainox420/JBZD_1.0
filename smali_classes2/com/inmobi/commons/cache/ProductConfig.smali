.class public abstract Lcom/inmobi/commons/cache/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->a:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->b:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->c:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/inmobi/commons/cache/ProductConfig;->d:I

    .line 13
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->e:I

    .line 14
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->f:I

    .line 15
    iput v1, p0, Lcom/inmobi/commons/cache/ProductConfig;->g:I

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->h:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->i:Z

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/inmobi/commons/cache/ProductConfig;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/inmobi/commons/cache/JSONMapBuilder;

    invoke-direct {v0}, Lcom/inmobi/commons/cache/JSONMapBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/cache/JSONMapBuilder;->buildMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/cache/ProductConfig;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExpiry()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->d:I

    return v0
.end method

.method public getMaxRetry()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->e:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryInterval()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->f:I

    return v0
.end method

.method public getRetryNumber()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->g:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->h:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isSendUidMap()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/inmobi/commons/cache/ProductConfig;->i:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->c:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setExpiry(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->d:I

    .line 74
    return-void
.end method

.method public setMaxRetry(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->e:I

    .line 78
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->b:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRetryInterval(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->f:I

    .line 82
    return-void
.end method

.method public setRetryNumber(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->g:I

    .line 86
    return-void
.end method

.method public setSendUidMap(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->i:Z

    .line 94
    return-void
.end method

.method public setTimestamp(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->h:I

    .line 90
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/inmobi/commons/cache/ProductConfig;->a:Ljava/lang/String;

    .line 62
    return-void
.end method
