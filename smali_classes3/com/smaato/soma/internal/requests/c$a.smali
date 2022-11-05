.class Lcom/smaato/soma/internal/requests/c$a;
.super Landroid/os/AsyncTask;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/requests/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Lcom/smaato/soma/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/requests/c;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/internal/requests/c;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/c$a;->a:Lcom/smaato/soma/internal/requests/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/internal/requests/c;Lcom/smaato/soma/internal/requests/c$1;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/smaato/soma/internal/requests/c$a;-><init>(Lcom/smaato/soma/internal/requests/c;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/net/URL;)Lcom/smaato/soma/p;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/smaato/soma/internal/requests/c$a$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/requests/c$a$1;-><init>(Lcom/smaato/soma/internal/requests/c$a;[Ljava/net/URL;)V

    .line 202
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/c$a$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/p;

    .line 197
    return-object v0
.end method

.method protected a(Lcom/smaato/soma/p;)V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/smaato/soma/internal/requests/c$a$2;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/requests/c$a$2;-><init>(Lcom/smaato/soma/internal/requests/c$a;Lcom/smaato/soma/p;)V

    .line 219
    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/c$a$2;->c()Ljava/lang/Object;

    .line 220
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/internal/requests/c$a;->a([Ljava/net/URL;)Lcom/smaato/soma/p;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    check-cast p1, Lcom/smaato/soma/p;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/internal/requests/c$a;->a(Lcom/smaato/soma/p;)V

    return-void
.end method
