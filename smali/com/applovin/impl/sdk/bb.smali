.class public Lcom/applovin/impl/sdk/bb;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:F

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:J

.field private s:Lcom/applovin/impl/sdk/AppLovinSdkImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/NativeAdImpl;
    .locals 24

    new-instance v2, Lcom/applovin/impl/sdk/NativeAdImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/applovin/impl/sdk/bb;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/impl/sdk/bb;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/applovin/impl/sdk/bb;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/applovin/impl/sdk/bb;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/applovin/impl/sdk/bb;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/impl/sdk/bb;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/applovin/impl/sdk/bb;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/applovin/impl/sdk/bb;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/applovin/impl/sdk/bb;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/applovin/impl/sdk/bb;->j:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/applovin/impl/sdk/bb;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/impl/sdk/bb;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/applovin/impl/sdk/bb;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/bb;->n:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/bb;->o:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/bb;->p:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/bb;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/applovin/impl/sdk/bb;->r:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/impl/sdk/bb;->s:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v2 .. v23}, Lcom/applovin/impl/sdk/NativeAdImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/ba;)V

    return-object v2
.end method

.method public a(F)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/bb;->j:F

    return-object p0
.end method

.method public a(J)Lcom/applovin/impl/sdk/bb;
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/bb;->r:J

    return-object p0
.end method

.method public a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->s:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->h:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->i:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->k:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->l:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->m:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->n:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->o:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->p:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/applovin/impl/sdk/bb;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->q:Ljava/lang/String;

    return-object p0
.end method
