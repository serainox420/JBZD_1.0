.class public Lcom/loopme/common/AdFetcherTimer;
.super Landroid/os/CountDownTimer;
.source "AdFetcherTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/common/AdFetcherTimer$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/loopme/common/AdFetcherTimer$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/loopme/common/AdFetcherTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/AdFetcherTimer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/loopme/common/AdFetcherTimer$Listener;)V
    .locals 3

    .prologue
    .line 16
    const-wide/32 v0, 0xea60

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 17
    iput-object p3, p0, Lcom/loopme/common/AdFetcherTimer;->mListener:Lcom/loopme/common/AdFetcherTimer$Listener;

    .line 18
    sget-object v0, Lcom/loopme/common/AdFetcherTimer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start fetcher timeout"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/loopme/common/AdFetcherTimer;->mListener:Lcom/loopme/common/AdFetcherTimer$Listener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/loopme/common/AdFetcherTimer;->mListener:Lcom/loopme/common/AdFetcherTimer$Listener;

    invoke-interface {v0}, Lcom/loopme/common/AdFetcherTimer$Listener;->onTimeout()V

    .line 30
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
