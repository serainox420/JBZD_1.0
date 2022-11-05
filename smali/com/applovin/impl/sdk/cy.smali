.class abstract Lcom/applovin/impl/sdk/cy;
.super Lcom/applovin/impl/sdk/bw;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field private a:I

.field private b:J

.field private final c:Lcom/applovin/impl/sdk/p;

.field private d:Lcom/applovin/impl/sdk/bz;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/impl/sdk/cy;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cy;->d:Lcom/applovin/impl/sdk/bz;

    iput p2, p0, Lcom/applovin/impl/sdk/cy;->a:I

    new-instance v0, Lcom/applovin/impl/sdk/cz;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/impl/sdk/cz;-><init>(Lcom/applovin/impl/sdk/cy;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/cy;->c:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bz;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/sdk/cy;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cy;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/cy;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cy;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/cy;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/cy;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/cy;->b:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/cy;->d:Lcom/applovin/impl/sdk/bz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/cy;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cy;->d:Lcom/applovin/impl/sdk/bz;

    iget-object v2, p0, Lcom/applovin/impl/sdk/cy;->d:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/bz;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ca;->b()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/cy;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/cy;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/cy;->b:J

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cy;->d:Lcom/applovin/impl/sdk/bz;

    return-void
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cy;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cy;->c:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/cy;->a(Lcom/applovin/impl/sdk/o;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method
