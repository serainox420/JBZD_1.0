.class public Lcom/smaato/soma/internal/d/c;
.super Ljava/lang/Object;
.source "VASTAd.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/smaato/soma/internal/d/a;

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/d/c;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/d/c;->e:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/d/c;->g:Ljava/util/Vector;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Lcom/smaato/soma/internal/d/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->f:Lcom/smaato/soma/internal/d/a;

    return-object v0
.end method

.method public a(Lcom/smaato/soma/internal/d/a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/smaato/soma/internal/d/c;->f:Lcom/smaato/soma/internal/d/a;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smaato/soma/internal/d/c;->a:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/smaato/soma/internal/d/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/smaato/soma/internal/d/c;->c:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/smaato/soma/internal/d/c$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/d/c$1;-><init>(Lcom/smaato/soma/internal/d/c;)V

    .line 99
    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/c$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 91
    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/smaato/soma/internal/d/c;->d:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public e()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public g()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->e:Ljava/util/Vector;

    return-object v0
.end method

.method public h()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/smaato/soma/internal/d/c;->g:Ljava/util/Vector;

    return-object v0
.end method
