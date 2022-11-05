.class Lcom/adcolony/sdk/ca$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 490
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showToastNonModal()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 491
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 492
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/adcolony/sdk/cm;->c:J

    .line 493
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v1

    sget-object v2, Lcom/adcolony/sdk/cm$c;->b:Lcom/adcolony/sdk/cm$c;

    iput-object v2, v1, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 499
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    new-instance v2, Lcom/adcolony/sdk/ca$b;

    iget-object v3, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v3, v3, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    iget-object v4, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v4, v4, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v4}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adcolony/sdk/ca$b;-><init>(Lcom/adcolony/sdk/ca;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    .line 500
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    new-instance v2, Lcom/adcolony/sdk/ba;

    new-instance v3, Lcom/adcolony/sdk/ca$a$d;

    iget-object v4, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v5, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v5, v5, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    iget-object v6, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v6, v6, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    .line 501
    invoke-static {v6}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/adcolony/sdk/ca$a$d;-><init>(Lcom/adcolony/sdk/ca$a;Landroid/webkit/WebView;Lcom/adcolony/sdk/cm;)V

    invoke-direct {v2, v3}, Lcom/adcolony/sdk/ba;-><init>(Lcom/adcolony/sdk/cr;)V

    const-string v3, "Android"

    .line 500
    invoke-virtual {v1, v2, v3}, Lcom/adcolony/sdk/ca$b;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ar()Lcom/adcolony/sdk/bo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bo;->c()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 504
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    new-instance v2, Lcom/adcolony/sdk/ca$a$2$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ca$a$2$1;-><init>(Lcom/adcolony/sdk/ca$a$2;)V

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/ca$b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 520
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    new-instance v2, Lcom/adcolony/sdk/ca$a$2$3;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/ca$a$2$3;-><init>(Lcom/adcolony/sdk/ca$a$2;Lcom/adcolony/sdk/cm$c;)V

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/ca$b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 541
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$a$c;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v3, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v3, v3, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/adcolony/sdk/ca$a$c;-><init>(Lcom/adcolony/sdk/ca$a;Landroid/webkit/WebView;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/cm;->j:Lcom/adcolony/sdk/cm$d;

    .line 542
    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$2;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    new-instance v2, Lcom/adcolony/sdk/ca$a$2$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/ca$a$2$2;-><init>(Lcom/adcolony/sdk/ca$a$2;)V

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/ca$b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method
