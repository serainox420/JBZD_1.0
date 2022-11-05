.class Lcom/smaato/soma/video/c$8;
.super Lcom/smaato/soma/l;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/c;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/smaato/soma/video/c$8;->a:Lcom/smaato/soma/video/c;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Vector;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smaato/soma/video/c$8;->a:Lcom/smaato/soma/video/c;

    invoke-static {v3}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smaato/soma/internal/d/c;->g()Ljava/util/Vector;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/video/c$8;->a:Lcom/smaato/soma/video/c;

    invoke-static {v2}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/d/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    iget-object v1, p0, Lcom/smaato/soma/video/c$8;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v1}, Lcom/smaato/soma/video/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    iget-object v0, p0, Lcom/smaato/soma/video/c$8;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->m(Lcom/smaato/soma/video/c;)V

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/smaato/soma/video/c$8;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
