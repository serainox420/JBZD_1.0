.class Landroid/support/v7/media/o$b;
.super Landroid/support/v7/media/o;
.source "SystemMediaRouteProvider.java"

# interfaces
.implements Landroid/support/v7/media/i$a;
.implements Landroid/support/v7/media/i$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/o$b$a;,
        Landroid/support/v7/media/o$b$c;,
        Landroid/support/v7/media/o$b$b;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Ljava/lang/Object;

.field protected final c:Ljava/lang/Object;

.field protected final d:Ljava/lang/Object;

.field protected e:I

.field protected f:Z

.field protected g:Z

.field protected final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/o$b$b;",
            ">;"
        }
    .end annotation
.end field

.field protected final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/o$b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/support/v7/media/o$f;

.field private m:Landroid/support/v7/media/i$e;

.field private n:Landroid/support/v7/media/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/o$b;->j:Ljava/util/ArrayList;

    .line 223
    sget-object v1, Landroid/support/v7/media/o$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/o$b;->k:Ljava/util/ArrayList;

    .line 232
    sget-object v1, Landroid/support/v7/media/o$b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/o$f;)V
    .locals 3

    .prologue
    .line 260
    invoke-direct {p0, p1}, Landroid/support/v7/media/o;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/o$b;->i:Ljava/util/ArrayList;

    .line 261
    iput-object p2, p0, Landroid/support/v7/media/o$b;->l:Landroid/support/v7/media/o$f;

    .line 262
    invoke-static {p1}, Landroid/support/v7/media/i;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->k()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/o$b;->b:Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->l()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/o$b;->c:Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 267
    iget-object v1, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_user_route_category_name:I

    .line 268
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 267
    invoke-static {v1, v0, v2}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/o$b;->d:Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Landroid/support/v7/media/o$b;->m()V

    .line 271
    return-void
.end method

.method private e(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->f(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Landroid/support/v7/media/o$b;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    new-instance v1, Landroid/support/v7/media/o$b$b;

    invoke-direct {v1, p1, v0}, Landroid/support/v7/media/o$b$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, v1}, Landroid/support/v7/media/o$b;->a(Landroid/support/v7/media/o$b$b;)V

    .line 335
    iget-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 345
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->h()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v4

    .line 346
    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "DEFAULT_ROUTE"

    .line 348
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->b(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 354
    :goto_2
    return-object v0

    :cond_0
    move v0, v5

    .line 345
    goto :goto_0

    .line 346
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ROUTE_%08x"

    new-array v3, v4, [Ljava/lang/Object;

    .line 347
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 352
    :goto_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s_%d"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual {p0, v3}, Landroid/support/v7/media/o$b;->b(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_3

    move-object v0, v3

    .line 354
    goto :goto_2

    .line 351
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private m()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->j()V

    .line 320
    const/4 v0, 0x0

    .line 321
    iget-object v1, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 322
    invoke-direct {p0, v2}, Landroid/support/v7/media/o$b;->e(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 323
    goto :goto_0

    .line 324
    :cond_0
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->i()V

    .line 327
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v7/media/c$d;
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->b(Ljava/lang/String;)I

    move-result v0

    .line 276
    if-ltz v0, :cond_0

    .line 277
    iget-object v1, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    .line 278
    new-instance v1, Landroid/support/v7/media/o$b$a;

    iget-object v0, v0, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/media/o$b$a;-><init>(Landroid/support/v7/media/o$b;Ljava/lang/Object;)V

    move-object v0, v1

    .line 280
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/media/o$b;->g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_2

    .line 411
    iget-object v0, v0, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->v()V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v7/media/o$b;->f(Ljava/lang/Object;)I

    move-result v0

    .line 416
    if-ltz v0, :cond_0

    .line 417
    iget-object v1, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    .line 418
    iget-object v1, p0, Landroid/support/v7/media/o$b;->l:Landroid/support/v7/media/o$f;

    iget-object v0, v0, Landroid/support/v7/media/o$b$b;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/support/v7/media/o$f;->b(Ljava/lang/String;)Landroid/support/v7/media/g$g;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->v()V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/media/g$g;)V
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 462
    iget-object v0, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/o$b;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    new-instance v1, Landroid/support/v7/media/o$b$c;

    invoke-direct {v1, p1, v0}, Landroid/support/v7/media/o$b$c;-><init>(Landroid/support/v7/media/g$g;Ljava/lang/Object;)V

    .line 465
    invoke-static {v0, v1}, Landroid/support/v7/media/i$d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    iget-object v2, p0, Landroid/support/v7/media/o$b;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v7/media/i$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 467
    invoke-virtual {p0, v1}, Landroid/support/v7/media/o$b;->a(Landroid/support/v7/media/o$b$c;)V

    .line 468
    iget-object v2, p0, Landroid/support/v7/media/o$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v1, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/support/v7/media/i;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 476
    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->f(Ljava/lang/Object;)I

    move-result v0

    .line 477
    if-ltz v0, :cond_0

    .line 478
    iget-object v1, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    .line 479
    iget-object v0, v0, Landroid/support/v7/media/o$b$b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->v()V

    goto :goto_0
.end method

.method protected a(Landroid/support/v7/media/o$b$b;)V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Landroid/support/v7/media/a$a;

    iget-object v1, p1, Landroid/support/v7/media/o$b$b;->b:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 583
    invoke-virtual {p0, v2}, Landroid/support/v7/media/o$b;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/media/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/o$b;->a(Landroid/support/v7/media/o$b$b;Landroid/support/v7/media/a$a;)V

    .line 585
    invoke-virtual {v0}, Landroid/support/v7/media/a$a;->a()Landroid/support/v7/media/a;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    .line 586
    return-void
.end method

.method protected a(Landroid/support/v7/media/o$b$b;Landroid/support/v7/media/a$a;)V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v7/media/i$d;->a(Ljava/lang/Object;)I

    move-result v0

    .line 601
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 602
    sget-object v1, Landroid/support/v7/media/o$b;->j:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Landroid/support/v7/media/a$a;->a(Ljava/util/Collection;)Landroid/support/v7/media/a$a;

    .line 604
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 605
    sget-object v0, Landroid/support/v7/media/o$b;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->a(Ljava/util/Collection;)Landroid/support/v7/media/a$a;

    .line 608
    :cond_1
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 609
    invoke-static {v0}, Landroid/support/v7/media/i$d;->b(Ljava/lang/Object;)I

    move-result v0

    .line 608
    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->a(I)Landroid/support/v7/media/a$a;

    .line 610
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 611
    invoke-static {v0}, Landroid/support/v7/media/i$d;->c(Ljava/lang/Object;)I

    move-result v0

    .line 610
    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->b(I)Landroid/support/v7/media/a$a;

    .line 612
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 613
    invoke-static {v0}, Landroid/support/v7/media/i$d;->d(Ljava/lang/Object;)I

    move-result v0

    .line 612
    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->d(I)Landroid/support/v7/media/a$a;

    .line 614
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 615
    invoke-static {v0}, Landroid/support/v7/media/i$d;->e(Ljava/lang/Object;)I

    move-result v0

    .line 614
    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->e(I)Landroid/support/v7/media/a$a;

    .line 616
    iget-object v0, p1, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    .line 617
    invoke-static {v0}, Landroid/support/v7/media/i$d;->f(Ljava/lang/Object;)I

    move-result v0

    .line 616
    invoke-virtual {p2, v0}, Landroid/support/v7/media/a$a;->f(I)Landroid/support/v7/media/a$a;

    .line 618
    return-void
.end method

.method protected a(Landroid/support/v7/media/o$b$c;)V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p1, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    .line 622
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->d()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p1, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    .line 624
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->l()I

    move-result v1

    .line 623
    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->a(Ljava/lang/Object;I)V

    .line 625
    iget-object v0, p1, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    .line 626
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->m()I

    move-result v1

    .line 625
    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->b(Ljava/lang/Object;I)V

    .line 627
    iget-object v0, p1, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    .line 628
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->q()I

    move-result v1

    .line 627
    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->c(Ljava/lang/Object;I)V

    .line 629
    iget-object v0, p1, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    .line 630
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->r()I

    move-result v1

    .line 629
    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->d(Ljava/lang/Object;I)V

    .line 631
    iget-object v0, p1, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    .line 632
    invoke-virtual {v1}, Landroid/support/v7/media/g$g;->p()I

    move-result v1

    .line 631
    invoke-static {v0, v1}, Landroid/support/v7/media/i$f;->e(Ljava/lang/Object;I)V

    .line 633
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0, p1}, Landroid/support/v7/media/o$b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->i()V

    .line 316
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_0

    .line 447
    iget-object v0, v0, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/g$g;->a(I)V

    .line 449
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method protected b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 556
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 557
    iget-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    iget-object v0, v0, Landroid/support/v7/media/o$b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 561
    :goto_1
    return v0

    .line 556
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public b(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public b(Landroid/support/v7/media/b;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 285
    .line 287
    if-eqz p1, :cond_5

    .line 288
    invoke-virtual {p1}, Landroid/support/v7/media/b;->a()Landroid/support/v7/media/f;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Landroid/support/v7/media/f;->a()Ljava/util/List;

    move-result-object v3

    .line 290
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    .line 291
    :goto_0
    if-ge v2, v4, :cond_2

    .line 292
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    const-string v5, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    or-int/lit8 v0, v1, 0x1

    .line 291
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 295
    :cond_0
    const-string v5, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    or-int/lit8 v0, v1, 0x2

    goto :goto_1

    .line 298
    :cond_1
    const/high16 v0, 0x800000

    or-int/2addr v0, v1

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/b;->b()Z

    move-result v0

    .line 304
    :goto_2
    iget v2, p0, Landroid/support/v7/media/o$b;->e:I

    if-ne v2, v1, :cond_3

    iget-boolean v2, p0, Landroid/support/v7/media/o$b;->f:Z

    if-eq v2, v0, :cond_4

    .line 305
    :cond_3
    iput v1, p0, Landroid/support/v7/media/o$b;->e:I

    .line 306
    iput-boolean v0, p0, Landroid/support/v7/media/o$b;->f:Z

    .line 307
    invoke-direct {p0}, Landroid/support/v7/media/o$b;->m()V

    .line 309
    :cond_4
    return-void

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method public b(Landroid/support/v7/media/g$g;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->e(Landroid/support/v7/media/g$g;)I

    move-result v0

    .line 490
    if-ltz v0, :cond_0

    .line 491
    iget-object v1, p0, Landroid/support/v7/media/o$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$c;

    .line 492
    iget-object v1, v0, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v7/media/i$d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    iget-object v1, v0, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v7/media/i$f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    iget-object v1, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    iget-object v0, v0, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/support/v7/media/i;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->f(Ljava/lang/Object;)I

    move-result v0

    .line 363
    if-ltz v0, :cond_0

    .line 364
    iget-object v1, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->i()V

    .line 368
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    .line 455
    iget-object v0, v0, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/g$g;->b(I)V

    .line 457
    :cond_0
    return-void
.end method

.method public c(Landroid/support/v7/media/g$g;)V
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 502
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->e(Landroid/support/v7/media/g$g;)I

    move-result v0

    .line 503
    if-ltz v0, :cond_0

    .line 504
    iget-object v1, p0, Landroid/support/v7/media/o$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$c;

    .line 505
    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->a(Landroid/support/v7/media/o$b$c;)V

    .line 508
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->f(Ljava/lang/Object;)I

    move-result v0

    .line 374
    if-ltz v0, :cond_0

    .line 375
    iget-object v1, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    .line 376
    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->a(Landroid/support/v7/media/o$b$b;)V

    .line 377
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->i()V

    .line 380
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/media/g$g;)V
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->x()Landroid/support/v7/media/c;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 519
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->e(Landroid/support/v7/media/g$g;)I

    move-result v0

    .line 520
    if-ltz v0, :cond_0

    .line 521
    iget-object v1, p0, Landroid/support/v7/media/o$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$c;

    .line 522
    iget-object v0, v0, Landroid/support/v7/media/o$b$c;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/media/g$g;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->b(Ljava/lang/String;)I

    move-result v0

    .line 526
    if-ltz v0, :cond_0

    .line 527
    iget-object v1, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    .line 528
    iget-object v0, v0, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Landroid/support/v7/media/o$b;->f(Ljava/lang/Object;)I

    move-result v0

    .line 386
    if-ltz v0, :cond_0

    .line 387
    iget-object v1, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    .line 388
    invoke-static {p1}, Landroid/support/v7/media/i$d;->d(Ljava/lang/Object;)I

    move-result v1

    .line 389
    iget-object v2, v0, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    invoke-virtual {v2}, Landroid/support/v7/media/a;->p()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 390
    new-instance v2, Landroid/support/v7/media/a$a;

    iget-object v3, v0, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    invoke-direct {v2, v3}, Landroid/support/v7/media/a$a;-><init>(Landroid/support/v7/media/a;)V

    .line 392
    invoke-virtual {v2, v1}, Landroid/support/v7/media/a$a;->d(I)Landroid/support/v7/media/a$a;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Landroid/support/v7/media/a$a;->a()Landroid/support/v7/media/a;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->i()V

    .line 398
    :cond_0
    return-void
.end method

.method protected e(Landroid/support/v7/media/g$g;)I
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v7/media/o$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 566
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 567
    iget-object v0, p0, Landroid/support/v7/media/o$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$c;

    iget-object v0, v0, Landroid/support/v7/media/o$b$c;->a:Landroid/support/v7/media/g$g;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 571
    :goto_1
    return v0

    .line 566
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected f(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 546
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 547
    iget-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    iget-object v0, v0, Landroid/support/v7/media/o$b$b;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 551
    :goto_1
    return v0

    .line 546
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected g(Ljava/lang/Object;)Landroid/support/v7/media/o$b$c;
    .locals 2

    .prologue
    .line 575
    invoke-static {p1}, Landroid/support/v7/media/i$d;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 576
    instance-of v1, v0, Landroid/support/v7/media/o$b$c;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/media/o$b$c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v7/media/o$b;->n:Landroid/support/v7/media/i$c;

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Landroid/support/v7/media/i$c;

    invoke-direct {v0}, Landroid/support/v7/media/i$c;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/o$b;->n:Landroid/support/v7/media/i$c;

    .line 668
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/o$b;->n:Landroid/support/v7/media/i$c;

    iget-object v1, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/i$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Landroid/support/v7/media/o$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v7/media/i$d;->a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected i()V
    .locals 4

    .prologue
    .line 534
    new-instance v2, Landroid/support/v7/media/d$a;

    invoke-direct {v2}, Landroid/support/v7/media/d$a;-><init>()V

    .line 536
    iget-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 537
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 538
    iget-object v0, p0, Landroid/support/v7/media/o$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/o$b$b;

    iget-object v0, v0, Landroid/support/v7/media/o$b$b;->c:Landroid/support/v7/media/a;

    invoke-virtual {v2, v0}, Landroid/support/v7/media/d$a;->a(Landroid/support/v7/media/a;)Landroid/support/v7/media/d$a;

    .line 537
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/media/d$a;->a()Landroid/support/v7/media/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/o$b;->a(Landroid/support/v7/media/d;)V

    .line 542
    return-void
.end method

.method protected i(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Landroid/support/v7/media/o$b;->m:Landroid/support/v7/media/i$e;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Landroid/support/v7/media/i$e;

    invoke-direct {v0}, Landroid/support/v7/media/i$e;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/o$b;->m:Landroid/support/v7/media/i$e;

    .line 659
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/o$b;->m:Landroid/support/v7/media/i$e;

    iget-object v1, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    const v2, 0x800003

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v7/media/i$e;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 661
    return-void
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 636
    iget-boolean v0, p0, Landroid/support/v7/media/o$b;->g:Z

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/o$b;->g:Z

    .line 638
    iget-object v0, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/o$b;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 641
    :cond_0
    iget v0, p0, Landroid/support/v7/media/o$b;->e:I

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/o$b;->g:Z

    .line 643
    iget-object v0, p0, Landroid/support/v7/media/o$b;->a:Ljava/lang/Object;

    iget v1, p0, Landroid/support/v7/media/o$b;->e:I

    iget-object v2, p0, Landroid/support/v7/media/o$b;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/support/v7/media/i;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 645
    :cond_1
    return-void
.end method

.method protected k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 648
    invoke-static {p0}, Landroid/support/v7/media/i;->a(Landroid/support/v7/media/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 652
    invoke-static {p0}, Landroid/support/v7/media/i;->a(Landroid/support/v7/media/i$g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
