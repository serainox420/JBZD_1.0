.class Lcom/intentsoftware/addapptr/z;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private durationInSeconds:I

.field private running:Z

.field private startTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lcom/intentsoftware/addapptr/z;->running:Z

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intentsoftware/addapptr/z;->startTime:J

    .line 12
    iput v2, p0, Lcom/intentsoftware/addapptr/z;->durationInSeconds:I

    .line 13
    return-void
.end method

.method getDurationInSeconds()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/intentsoftware/addapptr/z;->durationInSeconds:I

    return v0
.end method

.method getStartTime()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/z;->startTime:J

    return-wide v0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/z;->running:Z

    return v0
.end method

.method setDurationInSeconds(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/intentsoftware/addapptr/z;->durationInSeconds:I

    .line 37
    return-void
.end method

.method setRunning(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/z;->running:Z

    .line 21
    return-void
.end method

.method setStartTime(J)V
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/z;->startTime:J

    .line 29
    return-void
.end method
