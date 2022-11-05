.class public Lcom/mopub/mobileads/VideoViewabilityTracker;
.super Lcom/mopub/mobileads/VastTracker;
.source "VideoViewabilityTracker.java"


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    .line 12
    iput p1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->b:I

    .line 13
    iput p2, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public getPercentViewable()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->c:I

    return v0
.end method

.method public getViewablePlaytimeMS()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->b:I

    return v0
.end method
