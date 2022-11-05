.class Lcom/smaato/soma/video/c$6;
.super Lcom/smaato/soma/l;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/c;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/smaato/soma/video/c$6;->a:Lcom/smaato/soma/video/c;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 347
    new-instance v0, Lcom/smaato/soma/internal/c/e;

    invoke-direct {v0}, Lcom/smaato/soma/internal/c/e;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Vector;

    iget-object v2, p0, Lcom/smaato/soma/video/c$6;->a:Lcom/smaato/soma/video/c;

    invoke-static {v2}, Lcom/smaato/soma/video/c;->d(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smaato/soma/internal/d/c;->e()Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    iget-object v0, p0, Lcom/smaato/soma/video/c$6;->a:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->k(Lcom/smaato/soma/video/c;)Lcom/smaato/soma/video/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/c$a;->d()V

    .line 349
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    .line 343
    invoke-virtual {p0}, Lcom/smaato/soma/video/c$6;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
