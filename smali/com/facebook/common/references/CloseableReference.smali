.class public abstract Lcom/facebook/common/references/CloseableReference;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;,
        Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;,
        Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSEABLE_RELEASER:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/common/references/CloseableReference;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sUnclosedReferenceListener:Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sUseFinalizers:Z


# instance fields
.field protected mIsClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected mRelevantTrace:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mSharedReference:Lcom/facebook/common/references/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/SharedReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/facebook/common/references/CloseableReference;

    sput-object v0, Lcom/facebook/common/references/CloseableReference;->TAG:Ljava/lang/Class;

    .line 71
    new-instance v0, Lcom/facebook/common/references/CloseableReference$1;

    invoke-direct {v0}, Lcom/facebook/common/references/CloseableReference$1;-><init>()V

    sput-object v0, Lcom/facebook/common/references/CloseableReference;->DEFAULT_CLOSEABLE_RELEASER:Lcom/facebook/common/references/ResourceReleaser;

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/common/references/CloseableReference;->sUseFinalizers:Z

    return-void
.end method

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
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    .line 98
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/SharedReference;

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 99
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->addReference()V

    .line 100
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->getTraceOrNull()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mRelevantTrace:Ljava/lang/Throwable;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/common/references/CloseableReference;-><init>(Lcom/facebook/common/references/SharedReference;)V

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
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    .line 105
    new-instance v0, Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/references/SharedReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    .line 106
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->getTraceOrNull()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mRelevantTrace:Ljava/lang/Throwable;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$800()Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->sUnclosedReferenceListener:Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;

    return-object v0
.end method

.method public static cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .param p0    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cloneOrNull(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 275
    if-nez p0, :cond_0

    .line 276
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 278
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 280
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 282
    goto :goto_0
.end method

.method public static closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    .locals 0
    .param p0    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 294
    :cond_0
    return-void
.end method

.method public static closeSafely(Ljava/lang/Iterable;)V
    .locals 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/common/references/CloseableReference",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 302
    if-eqz p0, :cond_0

    .line 303
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 304
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method

.method private static getTraceOrNull()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->sUnclosedReferenceListener:Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnclosedTrackingEnabled()Z
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->sUnclosedReferenceListener:Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(Lcom/facebook/common/references/CloseableReference;)Z
    .locals 1
    .param p0    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCloseableReference()Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 195
    sget-boolean v0, Lcom/facebook/common/references/CloseableReference;->sUseFinalizers:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;

    iget-object v1, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;-><init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$1;)V

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;

    iget-object v1, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;-><init>(Lcom/facebook/common/references/SharedReference;Lcom/facebook/common/references/CloseableReference$1;)V

    goto :goto_0
.end method

.method private static makeCloseableReference(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/ResourceReleaser",
            "<TT;>;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    sget-boolean v0, Lcom/facebook/common/references/CloseableReference;->sUseFinalizers:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithFinalizer;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$1;)V

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/common/references/CloseableReference$CloseableReferenceWithoutFinalizer;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;Lcom/facebook/common/references/CloseableReference$1;)V

    goto :goto_0
.end method

.method public static of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/common/references/CloseableReference;->DEFAULT_CLOSEABLE_RELEASER:Lcom/facebook/common/references/ResourceReleaser;

    invoke-static {p0, v0}, Lcom/facebook/common/references/CloseableReference;->makeCloseableReference(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/common/references/ResourceReleaser",
            "<TT;>;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/common/references/CloseableReference;->makeCloseableReference(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static setUnclosedReferenceListener(Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;)V
    .locals 0

    .prologue
    .line 315
    sput-object p0, Lcom/facebook/common/references/CloseableReference;->sUnclosedReferenceListener:Lcom/facebook/common/references/CloseableReference$UnclosedReferenceListener;

    .line 316
    return-void
.end method

.method public static setUseFinalizers(Z)V
    .locals 0

    .prologue
    .line 319
    sput-boolean p0, Lcom/facebook/common/references/CloseableReference;->sUseFinalizers:Z

    .line 320
    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->getTraceOrNull()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mRelevantTrace:Ljava/lang/Throwable;

    .line 182
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 183
    invoke-direct {p0}, Lcom/facebook/common/references/CloseableReference;->makeCloseableReference()Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized cloneOrNull()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/common/references/CloseableReference;->getTraceOrNull()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mRelevantTrace:Ljava/lang/Throwable;

    .line 188
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/facebook/common/references/CloseableReference;->makeCloseableReference()Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 191
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 158
    monitor-exit p0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->deleteReference()V

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 172
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnderlyingReferenceTestOnly()Lcom/facebook/common/references/SharedReference;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/SharedReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueHash()I
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/references/CloseableReference;->mSharedReference:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/references/CloseableReference;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUnclosedRelevantTrance(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/facebook/common/references/CloseableReference;->mRelevantTrace:Ljava/lang/Throwable;

    .line 227
    return-void
.end method
