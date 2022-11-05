.class Lcom/applovin/impl/sdk/bp;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bn;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bn;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/applovin/impl/sdk/bp;-><init>(Lcom/applovin/impl/sdk/bn;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/bn;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/applovin/impl/sdk/bp;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&postback_ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/bp;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/bp;->b:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/applovin/impl/sdk/bp;

    iget v2, p0, Lcom/applovin/impl/sdk/bp;->b:I

    iget v3, p1, Lcom/applovin/impl/sdk/bp;->b:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    iget-object v3, p1, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    if-nez v2, :cond_3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/applovin/impl/sdk/bp;->b:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostbackRequest{attemptNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/bp;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bp;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
