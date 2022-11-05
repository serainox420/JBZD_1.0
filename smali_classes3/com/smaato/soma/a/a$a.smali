.class Lcom/smaato/soma/a/a$a;
.super Landroid/os/AsyncTask;
.source "DummyConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/smaato/soma/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/a/a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/a/a;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/smaato/soma/a/a$a;->a:Lcom/smaato/soma/a/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/a/a;Lcom/smaato/soma/a/a$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/smaato/soma/a/a$a;-><init>(Lcom/smaato/soma/a/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/smaato/soma/p;
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    const-string v1, "Download task created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/a/a$a;->a:Lcom/smaato/soma/a/a;

    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/a/a;->a(Ljava/net/URL;)Lcom/smaato/soma/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    sget-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/smaato/soma/a/a$a;->a:Lcom/smaato/soma/a/a;

    invoke-static {v0}, Lcom/smaato/soma/a/a;->a(Lcom/smaato/soma/a/a;)Lcom/smaato/soma/internal/b;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/smaato/soma/p;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    const-string v1, "Load async finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/smaato/soma/a/a$a;->a:Lcom/smaato/soma/a/a;

    invoke-static {v0}, Lcom/smaato/soma/a/a;->b(Lcom/smaato/soma/a/a;)Lcom/smaato/soma/internal/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/a/a$a;->a:Lcom/smaato/soma/a/a;

    invoke-static {v0}, Lcom/smaato/soma/a/a;->b(Lcom/smaato/soma/a/a;)Lcom/smaato/soma/internal/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smaato/soma/internal/c/b;->b(Lcom/smaato/soma/p;)V
    :try_end_0
    .catch Lcom/smaato/soma/exception/UnableToNotifyAdListener; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 49
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    sget-object v0, Lcom/smaato/soma/a/a;->a:Ljava/lang/String;

    const-string v1, "Unable to download Banner"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/a/a$a;->a([Ljava/lang/String;)Lcom/smaato/soma/p;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/smaato/soma/p;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/a/a$a;->a(Lcom/smaato/soma/p;)V

    return-void
.end method
