.class Lcom/applovin/impl/sdk/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/r;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/r;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/u;Lcom/applovin/impl/sdk/u;)I
    .locals 4

    iget-wide v0, p1, Lcom/applovin/impl/sdk/u;->d:J

    iget-wide v2, p2, Lcom/applovin/impl/sdk/u;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/applovin/impl/sdk/u;->d:J

    iget-wide v2, p2, Lcom/applovin/impl/sdk/u;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/applovin/impl/sdk/u;

    check-cast p2, Lcom/applovin/impl/sdk/u;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/s;->a(Lcom/applovin/impl/sdk/u;Lcom/applovin/impl/sdk/u;)I

    move-result v0

    return v0
.end method
