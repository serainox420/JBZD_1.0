.class Lcom/adcolony/sdk/ca$a$2$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cm$c;

.field final synthetic b:Lcom/adcolony/sdk/ca$a$2;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a$2;Lcom/adcolony/sdk/cm$c;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$2$3;->b:Lcom/adcolony/sdk/ca$a$2;

    iput-object p2, p0, Lcom/adcolony/sdk/ca$a$2$3;->a:Lcom/adcolony/sdk/cm$c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .prologue
    .line 524
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 525
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2$3;->b:Lcom/adcolony/sdk/ca$a$2;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2$3;->b:Lcom/adcolony/sdk/ca$a$2;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2$3;->a:Lcom/adcolony/sdk/cm$c;

    sget-object v1, Lcom/adcolony/sdk/cm$c;->d:Lcom/adcolony/sdk/cm$c;

    if-ne v0, v1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2$3;->b:Lcom/adcolony/sdk/ca$a$2;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$a;->a(Lcom/adcolony/sdk/ca$a;)Lcom/adcolony/sdk/ca$a$b;

    move-result-object v0

    .line 533
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2$3;->b:Lcom/adcolony/sdk/ca$a$2;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v1

    .line 534
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    .line 535
    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bm;->d()I

    move-result v2

    int-to-long v2, v2

    .line 533
    invoke-virtual {v1, v0, v2, v3}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    .line 538
    :cond_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2$3;->b:Lcom/adcolony/sdk/ca$a$2;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$a;->b(Lcom/adcolony/sdk/ca$a;)Lcom/adcolony/sdk/ca$a$a;

    move-result-object v0

    goto :goto_0
.end method
