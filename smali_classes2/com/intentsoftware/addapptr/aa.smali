.class Lcom/intentsoftware/addapptr/aa;
.super Ljava/lang/Object;
.source "SessionController.java"


# instance fields
.field private final session:Lcom/intentsoftware/addapptr/z;

.field private sessionPauseTime:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/intentsoftware/addapptr/z;

    invoke-direct {v0}, Lcom/intentsoftware/addapptr/z;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    .line 14
    return-void
.end method

.method private startSession()V
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/z;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "New session started"

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/z;->clear()V

    .line 30
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/z;->setRunning(Z)V

    .line 31
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/intentsoftware/addapptr/z;->setStartTime(J)V

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method finishSession()V
    .locals 6

    .prologue
    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/z;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/z;->setRunning(Z)V

    .line 38
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    iget-wide v2, p0, Lcom/intentsoftware/addapptr/aa;->sessionPauseTime:J

    iget-object v1, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/z;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/z;->setDurationInSeconds(I)V

    .line 39
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session finished. Duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/z;->getDurationInSeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method getSessionDurationInSeconds()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/intentsoftware/addapptr/aa;->session:Lcom/intentsoftware/addapptr/z;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/z;->getDurationInSeconds()I

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/aa;->sessionPauseTime:J

    .line 22
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/aa;->startSession()V

    .line 18
    return-void
.end method
