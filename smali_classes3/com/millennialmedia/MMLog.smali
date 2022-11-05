.class public Lcom/millennialmedia/MMLog;
.super Ljava/lang/Object;
.source "MMLog.java"


# static fields
.field public static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x4

    sput v0, Lcom/millennialmedia/MMLog;->logLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/millennialmedia/MMLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lcom/millennialmedia/MMLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    invoke-static {p0}, Lcom/millennialmedia/MMLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 69
    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 76
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 135
    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 142
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, Lcom/millennialmedia/MMLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    invoke-static {p0}, Lcom/millennialmedia/MMLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 91
    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 98
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 2

    .prologue
    .line 62
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerboseEnabled()Z
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0

    .prologue
    .line 28
    sput p0, Lcom/millennialmedia/MMLog;->logLevel:I

    .line 29
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 41
    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 120
    sget v0, Lcom/millennialmedia/MMLog;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method
