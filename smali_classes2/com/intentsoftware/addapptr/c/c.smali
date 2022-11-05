.class public Lcom/intentsoftware/addapptr/c/c;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "AATKit"

.field private static userSetLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x7

    sput v0, Lcom/intentsoftware/addapptr/c/c;->userSetLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x3

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x6

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method private static formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    if-eqz p0, :cond_2

    .line 99
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    check-cast p0, Ljava/lang/String;

    .line 110
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 102
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 107
    :cond_2
    const-string p0, "Unknown"

    goto :goto_0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x4

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x4

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 25
    const-string v1, "AATKit"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "AATKit"

    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/intentsoftware/addapptr/c/c;->userSetLogLevel:I

    if-le v1, p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/16 v1, 0xfa0

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 85
    const-string v0, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 86
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 89
    :cond_0
    const-string v2, "AATKit"

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "AATKit"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 73
    if-eqz p2, :cond_0

    .line 74
    if-eqz p1, :cond_1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;)V

    .line 81
    return-void

    .line 77
    :cond_1
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static setUserSetLogLevel(I)V
    .locals 0

    .prologue
    .line 114
    sput p0, Lcom/intentsoftware/addapptr/c/c;->userSetLogLevel:I

    .line 115
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;)V

    .line 34
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x2

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x5

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x5

    invoke-static {p0, p1}, Lcom/intentsoftware/addapptr/c/c;->formatMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/intentsoftware/addapptr/c/c;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
