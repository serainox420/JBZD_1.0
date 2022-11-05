.class public Lcom/applovin/impl/sdk/cb;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/ca;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aM:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aN:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aO:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public D()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aQ:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public E()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aP:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aU:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aV:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bc:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bd:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public J()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bh:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public K()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bi:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bj:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->bn:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->G:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aj:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ak:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->H:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->I:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aw:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ax:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ay:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->av:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->J:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ab:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ad:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ae:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->af:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ah:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ag:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->ai:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->al:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->am:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aB:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aC:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aD:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aJ:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aH:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aI:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    sget-object v1, Lcom/applovin/impl/sdk/bx;->aK:Lcom/applovin/impl/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/bz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
