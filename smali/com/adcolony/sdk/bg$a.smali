.class Lcom/adcolony/sdk/bg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg;


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/bg;)V
    .locals 3

    .prologue
    .line 195
    iput-object p1, p0, Lcom/adcolony/sdk/bg$a;->a:Lcom/adcolony/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Installed exception handler"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 202
    iget-object v1, p0, Lcom/adcolony/sdk/bg$a;->a:Lcom/adcolony/sdk/bg;

    sget-object v2, Lcom/adcolony/sdk/bn$a;->C:Lcom/adcolony/sdk/bn$a;

    const-string v3, "Uncaught exception"

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/Exception;Lcom/adcolony/sdk/bn$a;Ljava/lang/String;Z)V

    .line 205
    iget-object v0, p0, Lcom/adcolony/sdk/bg$a;->a:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->am:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method
