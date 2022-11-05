.class public abstract Lcom/smaato/soma/l;
.super Ljava/lang/Object;
.source "CrashReportTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public c()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/l;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v5

    .line 36
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Error"

    const-string v2, "Crash Detected"

    const/4 v3, 0x2

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->EXCEPTION:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct/range {v0 .. v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 40
    invoke-static {}, Lcom/smaato/soma/internal/c/c;->a()Lcom/smaato/soma/internal/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/c/c;->b()V

    .line 42
    invoke-static {}, Lcom/smaato/soma/debug/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/smaato/soma/q;->c()Lcom/smaato/soma/q;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smaato/soma/q;->b(Ljava/lang/Throwable;)V

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
