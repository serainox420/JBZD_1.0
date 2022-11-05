.class final Landroid/support/v7/media/l;
.super Landroid/support/v7/media/c;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/l$d;,
        Landroid/support/v7/media/l$c;,
        Landroid/support/v7/media/l$a;,
        Landroid/support/v7/media/l$b;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Landroid/support/v7/media/l$c;

.field private final c:Landroid/content/ComponentName;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/l$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Landroid/support/v7/media/l$a;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/l;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/support/v7/media/c$c;

    invoke-direct {v0, p2}, Landroid/support/v7/media/c$c;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/c;-><init>(Landroid/content/Context;Landroid/support/v7/media/c$c;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    .line 89
    iput-object p2, p0, Landroid/support/v7/media/l;->c:Landroid/content/ComponentName;

    .line 90
    new-instance v0, Landroid/support/v7/media/l$c;

    invoke-direct {v0, p0}, Landroid/support/v7/media/l$c;-><init>(Landroid/support/v7/media/l;)V

    iput-object v0, p0, Landroid/support/v7/media/l;->b:Landroid/support/v7/media/l$c;

    .line 91
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/c$d;
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/support/v7/media/l;->f()Landroid/support/v7/media/d;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v0}, Landroid/support/v7/media/d;->a()Ljava/util/List;

    move-result-object v2

    .line 254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 255
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 256
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/a;

    .line 257
    invoke-virtual {v0}, Landroid/support/v7/media/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    new-instance v0, Landroid/support/v7/media/l$b;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/media/l$b;-><init>(Landroid/support/v7/media/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-boolean v1, p0, Landroid/support/v7/media/l;->h:Z

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/l$b;->a(Landroid/support/v7/media/l$a;)V

    .line 263
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/l;->k()V

    .line 268
    :goto_1
    return-object v0

    .line 255
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 268
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private k()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/support/v7/media/l;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Landroid/support/v7/media/l;->m()V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/l;->n()V

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    iget-boolean v1, p0, Landroid/support/v7/media/l;->e:Z

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {p0}, Landroid/support/v7/media/l;->d()Landroid/support/v7/media/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 218
    iget-boolean v0, p0, Landroid/support/v7/media/l;->f:Z

    if-nez v0, :cond_1

    .line 219
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Landroid/support/v7/media/l;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 226
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/media/l;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/l;->f:Z

    .line 227
    iget-boolean v0, p0, Landroid/support/v7/media/l;->f:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_1

    .line 228
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Bind failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    sget-boolean v1, Landroid/support/v7/media/l;->a:Z

    if-eqz v1, :cond_1

    .line 232
    const-string v1, "MediaRouteProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Bind failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/support/v7/media/l;->f:Z

    if-eqz v0, :cond_1

    .line 240
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/l;->f:Z

    .line 245
    invoke-direct {p0}, Landroid/support/v7/media/l;->o()V

    .line 246
    invoke-virtual {p0}, Landroid/support/v7/media/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 248
    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0, v1}, Landroid/support/v7/media/l;->a(Landroid/support/v7/media/d;)V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/l;->h:Z

    .line 315
    invoke-direct {p0}, Landroid/support/v7/media/l;->q()V

    .line 316
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    invoke-virtual {v0}, Landroid/support/v7/media/l$a;->b()V

    .line 317
    iput-object v1, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    .line 319
    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 329
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 330
    iget-object v0, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/l$b;

    iget-object v3, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/l$b;->a(Landroid/support/v7/media/l$a;)V

    .line 329
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 336
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 337
    iget-object v0, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/l$b;

    invoke-virtual {v0}, Landroid/support/v7/media/l$b;->d()V

    .line 336
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v7/media/c$d;
    .locals 2

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/l;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/c$d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/c$d;
    .locals 2

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    if-nez p2, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeGroupId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/l;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/c$d;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/support/v7/media/l$a;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    if-ne v0, p1, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/l;->h:Z

    .line 274
    invoke-direct {p0}, Landroid/support/v7/media/l;->p()V

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/media/l;->d()Landroid/support/v7/media/b;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/l$a;->a(Landroid/support/v7/media/b;)V

    .line 281
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/media/l$a;Landroid/support/v7/media/d;)V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    if-ne v0, p1, :cond_1

    .line 304
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Descriptor changed, descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/media/l;->a(Landroid/support/v7/media/d;)V

    .line 309
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/media/l$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    if-ne v0, p1, :cond_1

    .line 294
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Service connection error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/l;->n()V

    .line 299
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/media/l$b;)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/v7/media/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {p1}, Landroid/support/v7/media/l$b;->d()V

    .line 324
    invoke-direct {p0}, Landroid/support/v7/media/l;->k()V

    .line 325
    return-void
.end method

.method public b(Landroid/support/v7/media/b;)V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/support/v7/media/l;->h:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/l$a;->a(Landroid/support/v7/media/b;)V

    .line 118
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/l;->k()V

    .line 119
    return-void
.end method

.method b(Landroid/support/v7/media/l$a;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    if-ne v0, p1, :cond_1

    .line 285
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/l;->o()V

    .line 290
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/media/l;->c:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/l;->c:Landroid/content/ComponentName;

    .line 161
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 165
    iget-boolean v0, p0, Landroid/support/v7/media/l;->e:Z

    if-nez v0, :cond_1

    .line 166
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/l;->e:Z

    .line 171
    invoke-direct {p0}, Landroid/support/v7/media/l;->k()V

    .line 173
    :cond_1
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 176
    iget-boolean v0, p0, Landroid/support/v7/media/l;->e:Z

    if-eqz v0, :cond_1

    .line 177
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/l;->e:Z

    .line 182
    invoke-direct {p0}, Landroid/support/v7/media/l;->k()V

    .line 184
    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/media/l;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Landroid/support/v7/media/l;->n()V

    .line 189
    invoke-direct {p0}, Landroid/support/v7/media/l;->m()V

    .line 191
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 123
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/media/l;->f:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Landroid/support/v7/media/l;->o()V

    .line 130
    if-eqz p2, :cond_2

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 131
    :goto_0
    invoke-static {v0}, Landroid/support/v7/media/e;->a(Landroid/os/Messenger;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    new-instance v1, Landroid/support/v7/media/l$a;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/media/l$a;-><init>(Landroid/support/v7/media/l;Landroid/os/Messenger;)V

    .line 133
    invoke-virtual {v1}, Landroid/support/v7/media/l$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    iput-object v1, p0, Landroid/support/v7/media/l;->g:Landroid/support/v7/media/l$a;

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 130
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_3
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Registration failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    :cond_4
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Service returned invalid messenger binder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 148
    sget-boolean v0, Landroid/support/v7/media/l;->a:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/l;->o()V

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/l;->c:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
