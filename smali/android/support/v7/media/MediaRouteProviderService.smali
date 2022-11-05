.class public abstract Landroid/support/v7/media/MediaRouteProviderService;
.super Landroid/app/Service;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteProviderService$d;,
        Landroid/support/v7/media/MediaRouteProviderService$a;,
        Landroid/support/v7/media/MediaRouteProviderService$c;,
        Landroid/support/v7/media/MediaRouteProviderService$b;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Landroid/support/v7/media/MediaRouteProviderService$b;

.field c:Landroid/support/v7/media/c;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouteProviderService$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v7/media/MediaRouteProviderService$d;

.field private final f:Landroid/os/Messenger;

.field private final g:Landroid/support/v7/media/MediaRouteProviderService$c;

.field private h:Landroid/support/v7/media/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "MediaRouteProviderSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$d;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$d;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->e:Landroid/support/v7/media/MediaRouteProviderService$d;

    .line 121
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->e:Landroid/support/v7/media/MediaRouteProviderService$d;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->f:Landroid/os/Messenger;

    .line 122
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$b;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$b;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->b:Landroid/support/v7/media/MediaRouteProviderService$b;

    .line 123
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$c;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$c;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->g:Landroid/support/v7/media/MediaRouteProviderService$c;

    .line 124
    return-void
.end method

.method private a(Landroid/support/v7/media/d;Landroid/support/v7/media/MediaRouteProviderService$a;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/d;->a()Ljava/util/List;

    move-result-object v2

    .line 428
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 429
    iget v3, p2, Landroid/support/v7/media/MediaRouteProviderService$a;->b:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/a;

    invoke-virtual {v0}, Landroid/support/v7/media/a;->u()I

    move-result v0

    if-lt v3, v0, :cond_1

    iget v3, p2, Landroid/support/v7/media/MediaRouteProviderService$a;->b:I

    .line 430
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/a;

    invoke-virtual {v0}, Landroid/support/v7/media/a;->v()I

    move-result v0

    if-le v3, v0, :cond_2

    .line 431
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 436
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/media/d;->d()Landroid/os/Bundle;

    move-result-object v0

    .line 437
    const-string v1, "routes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 438
    new-instance v1, Landroid/support/v7/media/d$a;

    .line 439
    invoke-static {v0}, Landroid/support/v7/media/d;->a(Landroid/os/Bundle;)Landroid/support/v7/media/d;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/media/d$a;-><init>(Landroid/support/v7/media/d;)V

    .line 440
    invoke-virtual {v1, v2}, Landroid/support/v7/media/d$a;->a(Ljava/util/Collection;)Landroid/support/v7/media/d$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/d$a;->a()Landroid/support/v7/media/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/d;->d()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 506
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 507
    iput p1, v0, Landroid/os/Message;->what:I

    .line 508
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 509
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 510
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 513
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not send message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 514
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static b(Landroid/os/Messenger;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 493
    if-eqz p1, :cond_0

    move-object v0, p0

    move v2, p1

    move v3, v1

    move-object v5, v4

    .line 494
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 496
    :cond_0
    return-void
.end method

.method static c(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/os/Messenger;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 499
    if-eqz p1, :cond_0

    .line 500
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 502
    :cond_0
    return-void
.end method

.method private d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;)I

    move-result v0

    .line 478
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/os/Messenger;)V
    .locals 4

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;)I

    move-result v0

    .line 219
    if-ltz v0, :cond_1

    .line 220
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$a;

    .line 221
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Binder died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$a;->b()V

    .line 226
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/media/d;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v2

    .line 412
    :goto_0
    if-ge v7, v8, :cond_1

    .line 413
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/media/MediaRouteProviderService$a;

    .line 414
    iget-object v0, v6, Landroid/support/v7/media/MediaRouteProviderService$a;->a:Landroid/os/Messenger;

    const/4 v1, 0x5

    .line 415
    invoke-direct {p0, p1, v6}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/support/v7/media/d;Landroid/support/v7/media/MediaRouteProviderService$a;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    move v3, v2

    .line 414
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 416
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": Sent descriptor change event, descriptor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 420
    :cond_1
    return-void
.end method

.method a()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 444
    .line 447
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v5

    move v1, v5

    move-object v3, v2

    .line 448
    :goto_0
    if-ge v6, v7, :cond_2

    .line 449
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$a;

    iget-object v4, v0, Landroid/support/v7/media/MediaRouteProviderService$a;->c:Landroid/support/v7/media/b;

    .line 450
    if-eqz v4, :cond_7

    .line 451
    invoke-virtual {v4}, Landroid/support/v7/media/b;->a()Landroid/support/v7/media/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/media/b;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/media/b;->b()Z

    move-result v0

    or-int/2addr v0, v1

    .line 453
    if-nez v3, :cond_1

    move-object v1, v2

    move-object v2, v4

    .line 448
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    .line 456
    :cond_1
    if-nez v2, :cond_6

    .line 457
    new-instance v1, Landroid/support/v7/media/f$a;

    invoke-virtual {v3}, Landroid/support/v7/media/b;->a()Landroid/support/v7/media/f;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/media/f$a;-><init>(Landroid/support/v7/media/f;)V

    .line 459
    :goto_2
    invoke-virtual {v4}, Landroid/support/v7/media/b;->a()Landroid/support/v7/media/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/media/f$a;->a(Landroid/support/v7/media/f;)Landroid/support/v7/media/f$a;

    move-object v2, v3

    goto :goto_1

    .line 463
    :cond_2
    if-eqz v2, :cond_3

    .line 464
    new-instance v3, Landroid/support/v7/media/b;

    invoke-virtual {v2}, Landroid/support/v7/media/f$a;->a()Landroid/support/v7/media/f;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Landroid/support/v7/media/b;-><init>(Landroid/support/v7/media/f;Z)V

    .line 466
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->h:Landroid/support/v7/media/b;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->h:Landroid/support/v7/media/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->h:Landroid/support/v7/media/b;

    .line 468
    invoke-virtual {v0, v3}, Landroid/support/v7/media/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 469
    :cond_4
    iput-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->h:Landroid/support/v7/media/b;

    .line 470
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->c:Landroid/support/v7/media/c;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/c;->a(Landroid/support/v7/media/b;)V

    .line 471
    const/4 v0, 0x1

    .line 473
    :goto_3
    return v0

    :cond_5
    move v0, v5

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_2

    :cond_7
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method a(Landroid/os/Messenger;I)Z
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;)I

    move-result v0

    .line 205
    if-ltz v0, :cond_1

    .line 206
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$a;

    .line 207
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unregistered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$a;->b()V

    .line 211
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/os/Messenger;II)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 181
    if-lt p3, v3, :cond_2

    .line 182
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->b(Landroid/os/Messenger;)I

    move-result v0

    .line 183
    if-gez v0, :cond_2

    .line 184
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$a;

    invoke-direct {v0, p0, p1, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)V

    .line 185
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderService$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Registered, version="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    if-eqz p2, :cond_1

    .line 191
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->c:Landroid/support/v7/media/c;

    invoke-virtual {v1}, Landroid/support/v7/media/c;->f()Landroid/support/v7/media/d;

    move-result-object v2

    .line 192
    const/4 v1, 0x2

    .line 194
    invoke-direct {p0, v2, v0}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/support/v7/media/d;Landroid/support/v7/media/MediaRouteProviderService$a;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    .line 192
    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->a(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 200
    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method a(Landroid/os/Messenger;III)Z
    .locals 3

    .prologue
    .line 281
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->b(I)Landroid/support/v7/media/c$d;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1, p4}, Landroid/support/v7/media/c$d;->a(I)V

    .line 287
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Route unselected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .locals 8

    .prologue
    .line 338
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v2, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->b(I)Landroid/support/v7/media/c$d;

    move-result-object v7

    .line 342
    if-eqz v7, :cond_2

    .line 343
    const/4 v0, 0x0

    .line 344
    if-eqz p2, :cond_0

    .line 345
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$1;

    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$1;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$a;ILandroid/content/Intent;Landroid/os/Messenger;I)V

    .line 382
    :cond_0
    invoke-virtual {v7, p4, v0}, Landroid/support/v7/media/c$d;->a(Landroid/content/Intent;Landroid/support/v7/media/g$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v0, :cond_1

    .line 384
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Route control request delivered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controllerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 230
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0, p4, p5, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Route controller created, controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", routeId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", routeGroupId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 238
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/os/Messenger;ILandroid/support/v7/media/b;)Z
    .locals 4

    .prologue
    .line 396
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->a(Landroid/support/v7/media/b;)Z

    move-result v1

    .line 399
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v2, :cond_0

    .line 400
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": Set discovery request, request="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", actuallyChanged="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compositeDiscoveryRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->h:Landroid/support/v7/media/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/os/Messenger;)I
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 483
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 484
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProviderService$a;

    .line 485
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteProviderService$a;->a(Landroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 489
    :goto_1
    return v0

    .line 483
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method b(Landroid/os/Messenger;II)Z
    .locals 3

    .prologue
    .line 246
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Route controller released"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 254
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/os/Messenger;III)Z
    .locals 3

    .prologue
    .line 300
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->b(I)Landroid/support/v7/media/c$d;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1, p4}, Landroid/support/v7/media/c$d;->b(I)V

    .line 306
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Route volume changed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", volume="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 311
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Landroid/os/Messenger;II)Z
    .locals 3

    .prologue
    .line 262
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->b(I)Landroid/support/v7/media/c$d;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {v1}, Landroid/support/v7/media/c$d;->b()V

    .line 268
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Route selected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 273
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Landroid/os/Messenger;III)Z
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->d(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$a;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$a;->b(I)Landroid/support/v7/media/c$d;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_1

    .line 324
    invoke-virtual {v1, p4}, Landroid/support/v7/media/c$d;->c(I)V

    .line 325
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->a:Z

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Route volume updated"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", controllerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", delta="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->c(Landroid/os/Messenger;I)V

    .line 330
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
