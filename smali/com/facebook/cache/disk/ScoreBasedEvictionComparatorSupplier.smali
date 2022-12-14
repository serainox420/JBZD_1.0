.class public Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;


# instance fields
.field private final mAgeWeight:F

.field private final mSizeWeight:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    .line 24
    iput p2, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    .line 25
    return-void
.end method


# virtual methods
.method calculateScore(Lcom/facebook/cache/disk/DiskStorage$Entry;J)F
    .locals 6
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 52
    invoke-interface {p1}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 53
    invoke-interface {p1}, Lcom/facebook/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v2

    .line 54
    iget v4, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mAgeWeight:F

    long-to-float v0, v0

    mul-float/2addr v0, v4

    iget v1, p0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;->mSizeWeight:F

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public get()Lcom/facebook/cache/disk/EntryEvictionComparator;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier$1;-><init>(Lcom/facebook/cache/disk/ScoreBasedEvictionComparatorSupplier;)V

    return-object v0
.end method
