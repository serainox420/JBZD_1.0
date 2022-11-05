.class Lcom/adcolony/sdk/ca$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/adcolony/sdk/cm;


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/ca$a;Landroid/webkit/WebView;Lcom/adcolony/sdk/cm;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 646
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object v0, p0, Lcom/adcolony/sdk/ca$a$d;->b:Landroid/webkit/WebView;

    .line 644
    iput-object v0, p0, Lcom/adcolony/sdk/ca$a$d;->c:Lcom/adcolony/sdk/cm;

    .line 647
    iput-object p2, p0, Lcom/adcolony/sdk/ca$a$d;->b:Landroid/webkit/WebView;

    .line 648
    iput-object p3, p0, Lcom/adcolony/sdk/ca$a$d;->c:Lcom/adcolony/sdk/cm;

    .line 649
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca$a$d;)Lcom/adcolony/sdk/cm;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d;->c:Lcom/adcolony/sdk/cm;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->f(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/bu;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$a$d$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/adcolony/sdk/ca$a$d$2;-><init>(Lcom/adcolony/sdk/ca$a$d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 699
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

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
    .line 659
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->f(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/bu;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$a$d$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ca$a$d$1;-><init>(Lcom/adcolony/sdk/ca$a$d;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 672
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 676
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$d;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openCatalog()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    invoke-virtual {p0, v3, v3}, Lcom/adcolony/sdk/ca$a$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method
