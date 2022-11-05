.class public abstract Lio/realm/u;
.super Ljava/lang/Object;
.source "RealmObject.java"

# interfaces
.implements Lio/realm/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lio/realm/t;Lio/realm/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;",
            "Lio/realm/o",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    if-nez p0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    if-nez p1, :cond_1

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_2

    .line 346
    check-cast p0, Lio/realm/internal/l;

    .line 347
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 349
    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->d:Lio/realm/internal/a;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/a;->a(Ljava/lang/String;)V

    .line 351
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/k;->a(Lio/realm/o;)V

    .line 355
    return-void

    .line 353
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asObservable(Lio/realm/t;)La/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)",
            "La/a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 506
    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 507
    check-cast v0, Lio/realm/internal/l;

    .line 508
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    .line 509
    instance-of v1, v0, Lio/realm/l;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, v0, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v1}, Lio/realm/p;->m()Lio/realm/a/b;

    move-result-object v1

    check-cast v0, Lio/realm/l;

    invoke-interface {v1, v0, p0}, Lio/realm/a/b;->a(Lio/realm/l;Lio/realm/t;)La/a;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 511
    :cond_0
    instance-of v1, v0, Lio/realm/d;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 512
    check-cast v1, Lio/realm/d;

    .line 513
    check-cast p0, Lio/realm/e;

    .line 515
    iget-object v0, v0, Lio/realm/b;->d:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->m()Lio/realm/a/b;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lio/realm/a/b;->a(Lio/realm/d;Lio/realm/e;)La/a;

    move-result-object v0

    goto :goto_0

    .line 518
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteFromRealm(Lio/realm/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 93
    instance-of v0, p0, Lio/realm/internal/l;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    check-cast p0, Lio/realm/internal/l;

    .line 99
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 107
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-interface {v0}, Lio/realm/internal/n;->getIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->d(J)V

    .line 109
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    sget-object v1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    invoke-virtual {v0, v1}, Lio/realm/k;->a(Lio/realm/internal/n;)V

    .line 110
    return-void
.end method

.method public static isLoaded(Lio/realm/t;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    .line 233
    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    .line 234
    check-cast p0, Lio/realm/internal/l;

    .line 235
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 236
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->i()Z

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isManaged(Lio/realm/t;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    .line 284
    instance-of v0, p0, Lio/realm/internal/l;

    return v0
.end method

.method public static isValid(Lio/realm/t;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 142
    instance-of v1, p0, Lio/realm/internal/l;

    if-eqz v1, :cond_0

    .line 143
    check-cast p0, Lio/realm/internal/l;

    .line 144
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/realm/internal/n;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Lio/realm/t;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-static {p0}, Lio/realm/u;->isLoaded(Lio/realm/t;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    :goto_0
    return v0

    .line 309
    :cond_0
    instance-of v1, p0, Lio/realm/internal/l;

    if-eqz v1, :cond_1

    .line 310
    check-cast p0, Lio/realm/internal/l;

    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/k;->j()V

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeAllChangeListeners(Lio/realm/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 432
    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    .line 433
    check-cast p0, Lio/realm/internal/l;

    .line 434
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 436
    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->d:Lio/realm/internal/a;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/a;->a(Ljava/lang/String;)V

    .line 437
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->e()V

    .line 441
    return-void

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeChangeListener(Lio/realm/t;Lio/realm/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;",
            "Lio/realm/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    if-nez p0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    if-nez p1, :cond_1

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_2

    .line 385
    check-cast p0, Lio/realm/internal/l;

    .line 386
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->a()Lio/realm/b;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 388
    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->d:Lio/realm/internal/a;

    const-string v1, "Listeners cannot be used on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/a;->a(Ljava/lang/String;)V

    .line 390
    invoke-interface {p0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/k;->b(Lio/realm/o;)V

    .line 394
    return-void

    .line 392
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeChangeListeners(Lio/realm/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(TE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 422
    invoke-static {p0}, Lio/realm/u;->removeAllChangeListeners(Lio/realm/t;)V

    .line 423
    return-void
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Lio/realm/o",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p0, p1}, Lio/realm/u;->addChangeListener(Lio/realm/t;Lio/realm/o;)V

    .line 327
    return-void
.end method

.method public final asObservable()La/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/u;",
            ">()",
            "La/a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {p0}, Lio/realm/u;->asObservable(Lio/realm/t;)La/a;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0}, Lio/realm/u;->deleteFromRealm(Lio/realm/t;)V

    .line 81
    return-void
.end method

.method public final isLoaded()Z
    .locals 1

    .prologue
    .line 190
    invoke-static {p0}, Lio/realm/u;->isLoaded(Lio/realm/t;)Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 261
    invoke-static {p0}, Lio/realm/u;->isManaged(Lio/realm/t;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 131
    invoke-static {p0}, Lio/realm/u;->isValid(Lio/realm/t;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .locals 1

    .prologue
    .line 295
    invoke-static {p0}, Lio/realm/u;->load(Lio/realm/t;)Z

    move-result v0

    return v0
.end method

.method public final removeAllChangeListeners()V
    .locals 0

    .prologue
    .line 410
    invoke-static {p0}, Lio/realm/u;->removeAllChangeListeners(Lio/realm/t;)V

    .line 411
    return-void
.end method

.method public final removeChangeListener(Lio/realm/o;)V
    .locals 0

    .prologue
    .line 365
    invoke-static {p0, p1}, Lio/realm/u;->removeChangeListener(Lio/realm/t;Lio/realm/o;)V

    .line 366
    return-void
.end method

.method public final removeChangeListeners()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    invoke-static {p0}, Lio/realm/u;->removeChangeListeners(Lio/realm/t;)V

    .line 404
    return-void
.end method
