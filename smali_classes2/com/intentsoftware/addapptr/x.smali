.class Lcom/intentsoftware/addapptr/x;
.super Ljava/lang/Object;
.source "Reporter.java"


# static fields
.field private static final MIN_FAIR_SESSION_TIME_SECONDS:I = 0x2

.field private static final handlerDelay:J = 0x3e8L


# instance fields
.field private action:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private final placements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/s;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionController:Lcom/intentsoftware/addapptr/aa;

.field private final statisticsReporter:Lcom/intentsoftware/addapptr/ac;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/ab;Lcom/intentsoftware/addapptr/ac;Lcom/intentsoftware/addapptr/aa;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intentsoftware/addapptr/ab;",
            "Lcom/intentsoftware/addapptr/ac;",
            "Lcom/intentsoftware/addapptr/aa;",
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/intentsoftware/addapptr/x;->handler:Landroid/os/Handler;

    .line 18
    iput-object v0, p0, Lcom/intentsoftware/addapptr/x;->action:Ljava/lang/Runnable;

    .line 21
    iput-object p3, p0, Lcom/intentsoftware/addapptr/x;->sessionController:Lcom/intentsoftware/addapptr/aa;

    .line 22
    iput-object p2, p0, Lcom/intentsoftware/addapptr/x;->statisticsReporter:Lcom/intentsoftware/addapptr/ac;

    .line 23
    iput-object p4, p0, Lcom/intentsoftware/addapptr/x;->placements:Ljava/util/List;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/x;->handler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/intentsoftware/addapptr/x$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/x$1;-><init>(Lcom/intentsoftware/addapptr/x;Lcom/intentsoftware/addapptr/aa;Lcom/intentsoftware/addapptr/ab;Ljava/util/List;Lcom/intentsoftware/addapptr/ac;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/x;->action:Ljava/lang/Runnable;

    .line 43
    return-void
.end method


# virtual methods
.method public onPause(Z)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->sessionController:Lcom/intentsoftware/addapptr/aa;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/aa;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->statisticsReporter:Lcom/intentsoftware/addapptr/ac;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/x;->placements:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/ac;->shouldReportImmediately(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/x;->action:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onResume(Z)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->sessionController:Lcom/intentsoftware/addapptr/aa;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/aa;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/x;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/x;->action:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    :cond_0
    return-void
.end method
