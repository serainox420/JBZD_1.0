.class public Lcom/loopme/common/ExpirationTimer;
.super Landroid/os/CountDownTimer;
.source "ExpirationTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/common/ExpirationTimer$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/loopme/common/ExpirationTimer$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/loopme/common/ExpirationTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/ExpirationTimer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/loopme/common/ExpirationTimer$Listener;)V
    .locals 3

    .prologue
    .line 16
    const-wide/32 v0, 0xea60

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 17
    if-nez p3, :cond_0

    .line 18
    sget-object v0, Lcom/loopme/common/ExpirationTimer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Listener should not be null"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    sget-object v0, Lcom/loopme/common/ExpirationTimer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start schedule expiration"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p3, p0, Lcom/loopme/common/ExpirationTimer;->mListener:Lcom/loopme/common/ExpirationTimer$Listener;

    .line 22
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/loopme/common/ExpirationTimer;->mListener:Lcom/loopme/common/ExpirationTimer$Listener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/loopme/common/ExpirationTimer;->mListener:Lcom/loopme/common/ExpirationTimer$Listener;

    invoke-interface {v0}, Lcom/loopme/common/ExpirationTimer$Listener;->onExpired()V

    .line 29
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
