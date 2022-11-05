.class Lcom/adcolony/sdk/ca$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field private static final d:I = 0x1f4


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d;

.field private b:Landroid/webkit/WebView;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/ca$d;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 395
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/ca$d$a;->b:Landroid/webkit/WebView;

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/ca$d$a;->c:Z

    .line 396
    iput-object p2, p0, Lcom/adcolony/sdk/ca$d$a;->b:Landroid/webkit/WebView;

    .line 397
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca$d$a;)Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/adcolony/sdk/ca$d$a;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca$d$a;Z)Z
    .locals 0

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/adcolony/sdk/ca$d$a;->c:Z

    return p1
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openCatalogItem was called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 459
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/adcolony/sdk/cn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/adcolony/sdk/cm;)V

    .line 460
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$d$a$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/ca$d$a$1;-><init>(Lcom/adcolony/sdk/ca$d$a;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 441
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->h()V

    .line 447
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$a;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->a(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->i()V

    .line 453
    return-void
.end method
