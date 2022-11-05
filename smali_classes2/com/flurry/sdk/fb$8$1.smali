.class final Lcom/flurry/sdk/fb$8$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb$8;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb$8;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/flurry/sdk/fb$8$1;->a:Lcom/flurry/sdk/fb$8;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 410
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/fb;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load view in 10 seconds."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/flurry/sdk/fb$8$1;->a:Lcom/flurry/sdk/fb$8;

    iget-object v0, v0, Lcom/flurry/sdk/fb$8;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->h(Lcom/flurry/sdk/fb;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/flurry/sdk/fb$8$1;->a:Lcom/flurry/sdk/fb$8;

    iget-object v0, v0, Lcom/flurry/sdk/fb$8;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->h(Lcom/flurry/sdk/fb;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fb$8$1;->a:Lcom/flurry/sdk/fb$8;

    iget-object v0, v0, Lcom/flurry/sdk/fb$8;->a:Lcom/flurry/sdk/fb;

    sget-object v1, Lcom/flurry/sdk/fb$a;->g:Lcom/flurry/sdk/fb$a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;Lcom/flurry/sdk/fb$a;)V

    .line 416
    sget-object v0, Lcom/flurry/sdk/ei;->n:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/fb$8$1;->a:Lcom/flurry/sdk/fb$8;

    iget-object v1, v1, Lcom/flurry/sdk/fb$8;->a:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->d(Lcom/flurry/sdk/fb;)I

    move-result v1

    const-string v2, "Request timed out"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/flurry/sdk/fb$8$1;->a:Lcom/flurry/sdk/fb$8;

    iget-object v0, v0, Lcom/flurry/sdk/fb$8;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;)V

    .line 418
    iget-object v0, p0, Lcom/flurry/sdk/fb$8$1;->a:Lcom/flurry/sdk/fb$8;

    iget-object v0, v0, Lcom/flurry/sdk/fb$8;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->c(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/ho;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/ho;->a()V

    .line 419
    return-void
.end method
