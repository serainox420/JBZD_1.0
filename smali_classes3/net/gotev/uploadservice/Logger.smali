.class public Lnet/gotev/uploadservice/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/Logger$b;,
        Lnet/gotev/uploadservice/Logger$a;,
        Lnet/gotev/uploadservice/Logger$LogLevel;
    }
.end annotation


# instance fields
.field private a:Lnet/gotev/uploadservice/Logger$LogLevel;

.field private b:Lnet/gotev/uploadservice/Logger$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lnet/gotev/uploadservice/Logger$LogLevel;->OFF:Lnet/gotev/uploadservice/Logger$LogLevel;

    iput-object v0, p0, Lnet/gotev/uploadservice/Logger;->a:Lnet/gotev/uploadservice/Logger$LogLevel;

    .line 28
    new-instance v0, Lnet/gotev/uploadservice/b;

    invoke-direct {v0}, Lnet/gotev/uploadservice/b;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/Logger;->b:Lnet/gotev/uploadservice/Logger$a;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lnet/gotev/uploadservice/Logger$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lnet/gotev/uploadservice/Logger;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->a:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->ERROR:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 59
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->b:Lnet/gotev/uploadservice/Logger$a;

    invoke-interface {v0, p0, p1}, Lnet/gotev/uploadservice/Logger$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->a:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->ERROR:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 65
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->b:Lnet/gotev/uploadservice/Logger$a;

    invoke-interface {v0, p0, p1, p2}, Lnet/gotev/uploadservice/Logger$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->a:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->INFO:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 71
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->b:Lnet/gotev/uploadservice/Logger$a;

    invoke-interface {v0, p0, p1}, Lnet/gotev/uploadservice/Logger$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->a:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->DEBUG:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 77
    invoke-static {}, Lnet/gotev/uploadservice/Logger$b;->a()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->b:Lnet/gotev/uploadservice/Logger$a;

    invoke-interface {v0, p0, p1}, Lnet/gotev/uploadservice/Logger$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
