.class Lcom/loopme/video360/MDStatusManager;
.super Ljava/lang/Object;
.source "MDStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/video360/MDStatusManager$Status;,
        Lcom/loopme/video360/MDStatusManager$StatusImpl;
    }
.end annotation


# static fields
.field public static final STATUS_INIT:I = 0x0

.field public static final STATUS_READY:I = 0x1


# instance fields
.field private mReadyList:Landroid/util/SparseBooleanArray;

.field private mStatus:I

.field private mVisibleSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/video360/MDStatusManager;->mStatus:I

    .line 9
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 23
    iget v1, p0, Lcom/loopme/video360/MDStatusManager;->mVisibleSize:I

    if-ne v1, v0, :cond_1

    .line 24
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/loopme/video360/MDStatusManager;->mStatus:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newChild()Lcom/loopme/video360/MDStatusManager$Status;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 43
    new-instance v1, Lcom/loopme/video360/MDStatusManager$StatusImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/loopme/video360/MDStatusManager$StatusImpl;-><init>(ILcom/loopme/video360/MDStatusManager;Lcom/loopme/video360/MDStatusManager$1;)V

    return-object v1
.end method

.method public reset(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13
    iput p1, p0, Lcom/loopme/video360/MDStatusManager;->mVisibleSize:I

    .line 14
    iput v1, p0, Lcom/loopme/video360/MDStatusManager;->mStatus:I

    move v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public declared-synchronized setChildReady(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    :goto_0
    monitor-exit p0

    return-void

    .line 32
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v2, v1

    move v3, v0

    .line 34
    :goto_1
    iget-object v4, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 35
    iget-object v4, p0, Lcom/loopme/video360/MDStatusManager;->mReadyList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    and-int/2addr v3, v4

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_1
    if-eqz v3, :cond_2

    :goto_2
    iput v0, p0, Lcom/loopme/video360/MDStatusManager;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    .line 37
    goto :goto_2
.end method
