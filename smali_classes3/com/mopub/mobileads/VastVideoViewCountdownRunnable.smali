.class public Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewCountdownRunnable.java"


# instance fields
.field private final c:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 19
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    .line 24
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->m()V

    .line 30
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->k()V

    .line 33
    :cond_0
    return-void
.end method
