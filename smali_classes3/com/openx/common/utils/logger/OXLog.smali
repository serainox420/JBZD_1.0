.class public Lcom/openx/common/utils/logger/OXLog;
.super Ljava/lang/Object;
.source "OXLog.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final NONE:I = -0x1

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static logLevel:I

.field private static mLogNode:Lcom/openx/common/utils/logger/OXLogNodeInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/openx/common/utils/logger/OXLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/openx/common/utils/logger/OXLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/openx/common/utils/logger/OXLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/openx/common/utils/logger/OXLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/openx/common/utils/logger/OXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/openx/common/utils/logger/OXLog;->logLevel:I

    return v0
.end method

.method public static getLogNode()Lcom/openx/common/utils/logger/OXLogNodeInterface;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/openx/common/utils/logger/OXLog;->mLogNode:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/openx/common/utils/logger/OXLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/openx/common/utils/logger/OXLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    return-void
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/openx/common/utils/logger/OXLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method private static println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/openx/common/utils/logger/OXLog;->mLogNode:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/openx/common/utils/logger/OXLog;->mLogNode:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/openx/common/utils/logger/OXLogNodeInterface;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .prologue
    .line 61
    sput p0, Lcom/openx/common/utils/logger/OXLog;->logLevel:I

    .line 62
    return-void
.end method

.method public static setLogNode(Lcom/openx/common/utils/logger/OXLogNodeInterface;)V
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lcom/openx/common/utils/logger/OXLog;->mLogNode:Lcom/openx/common/utils/logger/OXLogNodeInterface;

    .line 55
    return-void
.end method

.method private static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/openx/common/utils/logger/OXLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/openx/common/utils/logger/OXLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    return-void
.end method

.method private static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/openx/common/utils/logger/OXLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    return-void
.end method

.method private static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/openx/common/utils/logger/OXLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/openx/common/utils/logger/OXLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    return-void
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x7

    invoke-static {v0, p0, p1, p2}, Lcom/openx/common/utils/logger/OXLog;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    return-void
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/openx/common/utils/logger/OXLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    return-void
.end method
