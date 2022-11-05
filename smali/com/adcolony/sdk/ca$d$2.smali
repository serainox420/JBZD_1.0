.class Lcom/adcolony/sdk/ca$d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$2;->a:Lcom/adcolony/sdk/ca$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$2;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$c;->c:Lcom/adcolony/sdk/cm$c;

    iput-object v1, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 255
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$2;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->c:Landroid/webkit/WebView;

    const-string v1, "http://www.yvolver.com"

    iget-object v2, p0, Lcom/adcolony/sdk/ca$d$2;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/cm;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$2;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->a()V

    .line 257
    return-void
.end method
