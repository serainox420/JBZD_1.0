.class public final Landroid/support/v7/media/g;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/g$d;,
        Landroid/support/v7/media/g$b;,
        Landroid/support/v7/media/g$c;,
        Landroid/support/v7/media/g$a;,
        Landroid/support/v7/media/g$e;,
        Landroid/support/v7/media/g$f;,
        Landroid/support/v7/media/g$g;
    }
.end annotation


# static fields
.field static final a:Z

.field static b:Landroid/support/v7/media/g$d;


# instance fields
.field final c:Landroid/content/Context;

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "MediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/g;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    .line 233
    iput-object p1, p0, Landroid/support/v7/media/g;->c:Landroid/content/Context;

    .line 234
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v7/media/g;
    .locals 2

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 259
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Landroid/support/v7/media/g$d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/media/g$d;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    .line 261
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->a()V

    .line 263
    :cond_1
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/g$d;->a(Landroid/content/Context;)Landroid/support/v7/media/g;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 785
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/media/g$a;)I
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 642
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 643
    iget-object v0, p0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$b;

    iget-object v0, v0, Landroid/support/v7/media/g$b;->b:Landroid/support/v7/media/g$a;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 647
    :goto_1
    return v0

    .line 642
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static e()V
    .locals 2

    .prologue
    .line 778
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 779
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/media/g$g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 272
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 420
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported reason to unselect route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 428
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->f()Landroid/support/v7/media/g$g;

    move-result-object v0

    .line 429
    sget-object v1, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v1}, Landroid/support/v7/media/g$d;->d()Landroid/support/v7/media/g$g;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 430
    sget-object v1, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;I)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_2
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    sget-object v1, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v1}, Landroid/support/v7/media/g$d;->c()Landroid/support/v7/media/g$g;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/g$d;->c(Landroid/support/v7/media/g$g;I)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 3

    .prologue
    .line 763
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_0

    .line 764
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMediaSessionCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/g$d;->a(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 767
    return-void
.end method

.method public a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;)V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/media/g;->a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;I)V

    .line 482
    return-void
.end method

.method public a(Landroid/support/v7/media/f;Landroid/support/v7/media/g$a;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 579
    if-nez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    if-nez p2, :cond_1

    .line 583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_1
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 587
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_2

    .line 588
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallback: selector="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", callback="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", flags="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/media/g;->b(Landroid/support/v7/media/g$a;)I

    move-result v0

    .line 594
    if-gez v0, :cond_5

    .line 595
    new-instance v0, Landroid/support/v7/media/g$b;

    invoke-direct {v0, p0, p2}, Landroid/support/v7/media/g$b;-><init>(Landroid/support/v7/media/g;Landroid/support/v7/media/g$a;)V

    .line 596
    iget-object v1, p0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :goto_0
    const/4 v1, 0x0

    .line 601
    iget v3, v0, Landroid/support/v7/media/g$b;->d:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p3

    if-eqz v3, :cond_3

    .line 602
    iget v1, v0, Landroid/support/v7/media/g$b;->d:I

    or-int/2addr v1, p3

    iput v1, v0, Landroid/support/v7/media/g$b;->d:I

    move v1, v2

    .line 605
    :cond_3
    iget-object v3, v0, Landroid/support/v7/media/g$b;->c:Landroid/support/v7/media/f;

    invoke-virtual {v3, p1}, Landroid/support/v7/media/f;->a(Landroid/support/v7/media/f;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 606
    new-instance v1, Landroid/support/v7/media/f$a;

    iget-object v3, v0, Landroid/support/v7/media/g$b;->c:Landroid/support/v7/media/f;

    invoke-direct {v1, v3}, Landroid/support/v7/media/f$a;-><init>(Landroid/support/v7/media/f;)V

    .line 607
    invoke-virtual {v1, p1}, Landroid/support/v7/media/f$a;->a(Landroid/support/v7/media/f;)Landroid/support/v7/media/f$a;

    move-result-object v1

    .line 608
    invoke-virtual {v1}, Landroid/support/v7/media/f$a;->a()Landroid/support/v7/media/f;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/media/g$b;->c:Landroid/support/v7/media/f;

    .line 611
    :goto_1
    if-eqz v2, :cond_4

    .line 612
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->e()V

    .line 614
    :cond_4
    return-void

    .line 598
    :cond_5
    iget-object v1, p0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$b;

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public a(Landroid/support/v7/media/g$a;)V
    .locals 3

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 629
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_1

    .line 630
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/media/g;->b(Landroid/support/v7/media/g$a;)I

    move-result v0

    .line 634
    if-ltz v0, :cond_2

    .line 635
    iget-object v1, p0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 636
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->e()V

    .line 638
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/media/g$g;)V
    .locals 3

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "route must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 400
    sget-boolean v0, Landroid/support/v7/media/g;->a:Z

    if-eqz v0, :cond_1

    .line 401
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectRoute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$g;)V

    .line 404
    return-void
.end method

.method public a(Landroid/support/v7/media/f;I)Z
    .locals 2

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 464
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/f;I)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v7/media/g$g;
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 295
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->c()Landroid/support/v7/media/g$g;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/support/v7/media/g$g;
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Landroid/support/v7/media/g;->e()V

    .line 356
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->d()Landroid/support/v7/media/g$g;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 770
    sget-object v0, Landroid/support/v7/media/g;->b:Landroid/support/v7/media/g$d;

    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->g()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
