.class public Lcom/smaato/soma/internal/b/a;
.super Ljava/lang/Object;
.source "BannerNativeAd.java"


# instance fields
.field a:Lcom/facebook/ads/NativeAd;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:F

.field i:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/Vector;
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/b/a;->i:Ljava/util/Vector;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/b/a;->j:Ljava/util/Vector;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
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
    .line 24
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->j:Ljava/util/Vector;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/smaato/soma/internal/b/a;->h:F

    .line 156
    return-void
.end method

.method public a(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->a:Lcom/facebook/ads/NativeAd;

    .line 188
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->i:Ljava/util/Vector;

    .line 35
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->d:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->e:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->f:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/smaato/soma/internal/b/a;->g:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/smaato/soma/internal/b/a;->h:F

    return v0
.end method

.method public final i()Ljava/util/Vector;
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
    .line 163
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->i:Ljava/util/Vector;

    return-object v0
.end method

.method public j()Lcom/facebook/ads/NativeAd;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smaato/soma/internal/b/a;->a:Lcom/facebook/ads/NativeAd;

    return-object v0
.end method
