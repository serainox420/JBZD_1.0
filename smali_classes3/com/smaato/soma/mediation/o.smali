.class public Lcom/smaato/soma/mediation/o;
.super Ljava/lang/Object;
.source "MediationNetworkInfo.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/smaato/soma/mediation/o;->f:I

    .line 14
    iput v0, p0, Lcom/smaato/soma/mediation/o;->g:I

    .line 26
    new-instance v0, Lcom/smaato/soma/mediation/o$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/mediation/o$1;-><init>(Lcom/smaato/soma/mediation/o;)V

    iput-object v0, p0, Lcom/smaato/soma/mediation/o;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/smaato/soma/mediation/o;->c:I

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->j:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->a:Ljava/util/Map;

    .line 24
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/smaato/soma/mediation/o;->f:I

    .line 72
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->k:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/smaato/soma/mediation/o;->g:I

    .line 80
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->h:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/smaato/soma/mediation/o;->c:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->i:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/smaato/soma/mediation/o;->f:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->e:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/smaato/soma/mediation/o;->g:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/smaato/soma/mediation/o;->d:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/smaato/soma/mediation/o;->d:Ljava/lang/String;

    return-object v0
.end method
