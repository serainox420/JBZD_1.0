.class public Lcom/applovin/impl/sdk/bt;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;

.field private final c:J

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    iput-wide p3, p0, Lcom/applovin/impl/sdk/bt;->c:J

    iput-object p5, p0, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/bt;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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

    check-cast p1, Lcom/applovin/impl/sdk/bt;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/bt;->c:J

    iget-wide v4, p1, Lcom/applovin/impl/sdk/bt;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/applovin/impl/sdk/bt;->c:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/bt;->c:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkEvent{eventType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bt;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creationTsMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/bt;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uniqueIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bt;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
