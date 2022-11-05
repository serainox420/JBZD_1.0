.class public Lcom/mopub/mobileads/VastTracker;
.super Ljava/lang/Object;
.source "VastTracker.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final a:Ljava/lang/String;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastTracker;->c:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getTrackingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->c:Z

    return v0
.end method

.method public isTracked()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Z

    return v0
.end method

.method public setTracked()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Z

    .line 36
    return-void
.end method
