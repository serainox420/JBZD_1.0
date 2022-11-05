.class public Lcom/smaato/soma/bannerutilities/f;
.super Lcom/smaato/soma/bannerutilities/a;
.source "VideoBanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/smaato/soma/bannerutilities/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/smaato/soma/p;IIZ)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method a(Lcom/smaato/soma/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VideoViewInstantiationException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/f$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/f$1;-><init>(Lcom/smaato/soma/bannerutilities/f;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c;

    new-instance v1, Lcom/smaato/soma/bannerutilities/g;

    invoke-direct {v1, p0}, Lcom/smaato/soma/bannerutilities/g;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/smaato/soma/bannerutilities/g$c;-><init>(Lcom/smaato/soma/bannerutilities/g;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/bannerutilities/f;->a(Lcom/smaato/soma/bannerutilities/g$c;)V

    .line 37
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/f;->m()Lcom/smaato/soma/bannerutilities/g$c;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/f;->f()Lcom/smaato/soma/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/smaato/soma/p;->h()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/f;->f()Lcom/smaato/soma/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/smaato/soma/p;->f()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, p1, v1, v2}, Lcom/smaato/soma/bannerutilities/g$c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    throw v0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    new-instance v1, Lcom/smaato/soma/exception/VideoViewInstantiationException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/VideoViewInstantiationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
