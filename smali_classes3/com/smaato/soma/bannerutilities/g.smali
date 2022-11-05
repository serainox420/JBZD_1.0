.class public Lcom/smaato/soma/bannerutilities/g;
.super Ljava/lang/Object;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/bannerutilities/g$b;,
        Lcom/smaato/soma/bannerutilities/g$a;,
        Lcom/smaato/soma/bannerutilities/g$c;
    }
.end annotation


# instance fields
.field a:Lcom/smaato/soma/bannerutilities/a;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/bannerutilities/a;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g;->a:Lcom/smaato/soma/bannerutilities/a;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VideoChromeContextFailed;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/smaato/soma/bannerutilities/g;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VideoChromeContextFailed;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    throw v0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Lcom/smaato/soma/exception/VideoChromeContextFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/VideoChromeContextFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()Lcom/smaato/soma/bannerutilities/g$a;
    .locals 2

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 74
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$b;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$b;-><init>(Lcom/smaato/soma/bannerutilities/g;)V

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$a;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$a;-><init>(Lcom/smaato/soma/bannerutilities/g;)V

    goto :goto_0
.end method
