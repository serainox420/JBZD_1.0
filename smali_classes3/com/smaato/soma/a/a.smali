.class public Lcom/smaato/soma/a/a;
.super Ljava/lang/Object;
.source "DummyConnector.java"

# interfaces
.implements Lcom/smaato/soma/internal/requests/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/a/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static f:Lcom/smaato/soma/a/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smaato/soma/internal/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/smaato/soma/internal/c/b;

.field private e:Lcom/smaato/soma/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "SOMA_DummyConnector"

    sput-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/a/a;->b:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/smaato/soma/a/a;->c:I

    .line 56
    iput-object v1, p0, Lcom/smaato/soma/a/a;->d:Lcom/smaato/soma/internal/c/b;

    .line 57
    iput-object v1, p0, Lcom/smaato/soma/a/a;->e:Lcom/smaato/soma/internal/b;

    .line 74
    return-void
.end method

.method public static a()Lcom/smaato/soma/a/a;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/smaato/soma/a/a;->f:Lcom/smaato/soma/a/a;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/smaato/soma/a/a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/smaato/soma/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smaato/soma/a/a;->f:Lcom/smaato/soma/a/a;

    .line 80
    :cond_0
    sget-object v0, Lcom/smaato/soma/a/a;->f:Lcom/smaato/soma/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/a/a;)Lcom/smaato/soma/internal/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smaato/soma/a/a;->e:Lcom/smaato/soma/internal/b;

    return-object v0
.end method

.method static synthetic b(Lcom/smaato/soma/a/a;)Lcom/smaato/soma/internal/c/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/smaato/soma/a/a;->d:Lcom/smaato/soma/internal/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/URL;)Lcom/smaato/soma/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/LoadingNewBannerFailedException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/smaato/soma/a/a;->e:Lcom/smaato/soma/internal/b;

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/a/a;->e:Lcom/smaato/soma/internal/b;

    invoke-virtual {v2}, Lcom/smaato/soma/internal/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/a/a;->e:Lcom/smaato/soma/internal/b;

    .line 166
    return-object v0

    .line 162
    :cond_0
    sget-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    const-string v1, "mNextBanner not set!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/smaato/soma/internal/c/b;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/smaato/soma/a/a;->d:Lcom/smaato/soma/internal/c/b;

    .line 145
    return-void
.end method

.method public b()Lcom/smaato/soma/internal/b;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/smaato/soma/a/a;->e:Lcom/smaato/soma/internal/b;

    return-object v0
.end method

.method public b(Ljava/net/URL;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerHttpRequestFailed;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 184
    sget-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    const-string v1, "Create new DownloadTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/smaato/soma/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/smaato/soma/a/a$a;-><init>(Lcom/smaato/soma/a/a;Lcom/smaato/soma/a/a$1;)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/smaato/soma/a/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return v4
.end method
