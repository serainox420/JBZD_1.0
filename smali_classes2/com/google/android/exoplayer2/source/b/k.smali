.class public final Lcom/google/android/exoplayer2/source/b/k;
.super Ljava/lang/Object;
.source "TimestampAdjusterProvider.java"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/util/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/k;->a:Landroid/util/SparseArray;

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/util/s;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/s;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/util/s;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/util/s;-><init>(J)V

    .line 45
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 55
    return-void
.end method
