.class public Lcom/loopme/common/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "Debug.LoopMe."


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Debug.LoopMe."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    sget-boolean v1, Lcom/loopme/common/StaticParams;->DEBUG_MODE:Z

    if-eqz v1, :cond_1

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_1
    invoke-static {v0, p1}, Lcom/loopme/debugging/LiveDebug;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
