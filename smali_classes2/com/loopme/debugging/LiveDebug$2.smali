.class final Lcom/loopme/debugging/LiveDebug$2;
.super Landroid/os/CountDownTimer;
.source "LiveDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/debugging/LiveDebug;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->access$100()V

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/loopme/debugging/LiveDebug;->access$202(Z)Z

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/loopme/debugging/LiveDebug;->access$302(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 78
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
