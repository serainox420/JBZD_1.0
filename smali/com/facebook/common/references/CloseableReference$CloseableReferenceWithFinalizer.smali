.class Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;
.super Lcom/facebook/common/references/CloseableReference;
.source "CloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/references/CloseableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseableReferenceWithFinalizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/references/CloseableReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/common/references/SharedReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/references/CloseableReference;-><init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$1;)V

    .line 444
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$1;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;-><init>(Lcom/facebook/common/references/SharedReference;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/common/references/ResourceReleaser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/common/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$1;)V

    .line 448
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$1;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-super {p0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 455
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 456
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 457
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 477
    :goto_0
    return-void

    .line 459
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :try_start_3
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->access$800()Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_1

    .line 463
    iget-object v1, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;->mRelevantTrace:Ljava/lang/Throwable;

    invoke-interface {v0, p0, v1}, Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;->onUnclosedReferenceFinalized(Lcom/facebook/common/references/CloseableReference;Ljava/lang/Throwable;)V

    .line 473
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 475
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 475
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    .line 466
    :cond_1
    :try_start_6
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->access$400()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Finalized without closing: %x %x (type = %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 468
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 469
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 470
    invoke-virtual {v4}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 465
    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method
