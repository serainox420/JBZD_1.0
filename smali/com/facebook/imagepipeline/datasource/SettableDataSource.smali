.class public final Lcom/facebook/imagepipeline/datasource/SettableDataSource;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "SettableDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource",
        "<",
        "Lcom/facebook/common/references/CloseableReference",
        "<TT;>;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 37
    return-void
.end method

.method public static create()Lcom/facebook/imagepipeline/datasource/SettableDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/imagepipeline/datasource/SettableDataSource",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/imagepipeline/datasource/SettableDataSource;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/datasource/SettableDataSource;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected closeResult(Lcom/facebook/common/references/CloseableReference;)V
    .locals 0
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 94
    return-void
.end method

.method protected bridge synthetic closeResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/SettableDataSource;->closeResult(Lcom/facebook/common/references/CloseableReference;)V

    return-void
.end method

.method public getResult()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/SettableDataSource;->getResult()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/facebook/common/references/CloseableReference;)Z
    .locals 2
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 53
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/facebook/datasource/AbstractDataSource;->setResult(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->setFailure(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public setProgress(F)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->setProgress(F)Z

    move-result v0

    return v0
.end method
