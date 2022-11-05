.class Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;
.super Ljava/lang/ref/PhantomReference;
.source "CloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Destructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/facebook/common/references/CloseableReference;",
        ">;"
    }
.end annotation


# static fields
.field private static sHead:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Destructor.class"
    .end annotation
.end field


# instance fields
.field private destroyed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSharedReference:Lcom/facebook/common/references/SharedReference;

.field private next:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Destructor.class"
    .end annotation
.end field

.field private previous:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Destructor.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/facebook/common/references/CloseableReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 353
    iget-object v0, p1, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 355
    const-class v1, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    monitor-enter v1

    .line 356
    :try_start_0
    sget-object v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->sHead:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->sHead:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    iput-object p0, v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->next:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    .line 358
    sget-object v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->sHead:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->previous:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    .line 360
    :cond_0
    sput-object p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->sHead:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->destroyed:Z

    if-eqz v0, :cond_0

    .line 371
    monitor-exit p0

    .line 396
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->destroyed:Z

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    const-class v1, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    monitor-enter v1

    .line 377
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->previous:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->previous:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    iget-object v2, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->next:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    iput-object v2, v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->next:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->next:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->next:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    iget-object v2, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->previous:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    iput-object v2, v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->previous:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    .line 385
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    if-nez p1, :cond_2

    .line 389
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->access$400()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "GCed without closing: %x %x (type = %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 391
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 392
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 393
    invoke-virtual {v4}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 388
    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->deleteReference()V

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 383
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->previous:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    sput-object v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->sHead:Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;

    goto :goto_1

    .line 385
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer$Destructor;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
