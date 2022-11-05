.class public Lcom/smaato/soma/internal/b;
.super Ljava/lang/Object;
.source "ReceivedBanner.java"

# interfaces
.implements Lcom/smaato/soma/p;


# instance fields
.field a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smaato/soma/mediation/o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

.field private e:Lcom/smaato/soma/AdType;

.field private f:Lcom/smaato/soma/mediation/CSMAdFormat;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/smaato/soma/ErrorCode;

.field private p:Ljava/lang/String;

.field private q:Lcom/smaato/soma/internal/d/c;

.field private r:Lcom/smaato/soma/internal/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/smaato/soma/internal/b;->b:Z

    .line 45
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    iput-object v0, p0, Lcom/smaato/soma/internal/b;->d:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    .line 95
    iput-boolean v1, p0, Lcom/smaato/soma/internal/b;->i:Z

    .line 103
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/b;->a:Ljava/util/TreeMap;

    .line 127
    sget-object v0, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    iput-object v0, p0, Lcom/smaato/soma/internal/b;->o:Lcom/smaato/soma/ErrorCode;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/b;->p:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/smaato/soma/internal/d/c;

    invoke-direct {v0}, Lcom/smaato/soma/internal/d/c;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/b;->q:Lcom/smaato/soma/internal/d/c;

    .line 135
    new-instance v0, Lcom/smaato/soma/internal/b/a;

    invoke-direct {v0}, Lcom/smaato/soma/internal/b/a;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/b;->r:Lcom/smaato/soma/internal/b/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->d:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OpeningLandingPageFailed;
        }
    .end annotation

    .prologue
    .line 321
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/b$1;-><init>(Lcom/smaato/soma/internal/b;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 322
    iget-boolean v0, p0, Lcom/smaato/soma/internal/b;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/smaato/soma/internal/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/smaato/soma/internal/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/internal/b;->b:Z

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 326
    invoke-virtual {p0}, Lcom/smaato/soma/internal/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    :cond_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    throw v0

    .line 332
    :catch_1
    move-exception v0

    .line 333
    new-instance v1, Lcom/smaato/soma/exception/OpeningLandingPageFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/OpeningLandingPageFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/smaato/soma/AdType;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->e:Lcom/smaato/soma/AdType;

    .line 183
    return-void
.end method

.method public final a(Lcom/smaato/soma/ErrorCode;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->o:Lcom/smaato/soma/ErrorCode;

    .line 295
    return-void
.end method

.method public final a(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->d:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    .line 167
    return-void
.end method

.method public a(Lcom/smaato/soma/internal/b/a;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->r:Lcom/smaato/soma/internal/b/a;

    .line 349
    return-void
.end method

.method public a(Lcom/smaato/soma/internal/d/c;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->q:Lcom/smaato/soma/internal/d/c;

    .line 339
    return-void
.end method

.method public a(Lcom/smaato/soma/mediation/CSMAdFormat;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->f:Lcom/smaato/soma/mediation/CSMAdFormat;

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->j:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->k:Ljava/util/List;

    .line 231
    return-void
.end method

.method public a(Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smaato/soma/mediation/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->a:Ljava/util/TreeMap;

    .line 360
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/smaato/soma/internal/b;->i:Z

    .line 82
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->c:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/smaato/soma/internal/b;->i:Z

    return v0
.end method

.method public c()Lcom/smaato/soma/mediation/CSMAdFormat;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->f:Lcom/smaato/soma/mediation/CSMAdFormat;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->g:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public final d()Lcom/smaato/soma/AdType;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->e:Lcom/smaato/soma/AdType;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->h:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->m:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->n:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->k:Ljava/util/List;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/smaato/soma/internal/b;->p:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lcom/smaato/soma/ErrorCode;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->o:Lcom/smaato/soma/ErrorCode;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/smaato/soma/internal/d/c;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->q:Lcom/smaato/soma/internal/d/c;

    return-object v0
.end method

.method public n()Lcom/smaato/soma/internal/b/a;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->r:Lcom/smaato/soma/internal/b/a;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smaato/soma/mediation/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->a:Ljava/util/TreeMap;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/smaato/soma/internal/b;->c:Ljava/lang/String;

    return-object v0
.end method
