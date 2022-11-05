.class Lcom/adcolony/sdk/ca$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/cm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/ca$a;Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 706
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->b:Landroid/webkit/WebView;

    .line 704
    iput-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->c:Landroid/content/Context;

    .line 707
    iput-object p2, p0, Lcom/adcolony/sdk/ca$a$c;->b:Landroid/webkit/WebView;

    .line 708
    iput-object p3, p0, Lcom/adcolony/sdk/ca$a$c;->c:Landroid/content/Context;

    .line 709
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca$a$c;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca$a$c;Lcom/adcolony/sdk/bk;)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ca$a$c;->b(Lcom/adcolony/sdk/bk;)V

    return-void
.end method

.method private b(Lcom/adcolony/sdk/bk;)V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cm;->r()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->b(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/ca$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 783
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$a;->d()V

    .line 784
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 786
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public a(Lcom/adcolony/sdk/bk;)V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$a$c$2;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/ca$a$c$2;-><init>(Lcom/adcolony/sdk/ca$a$c;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 778
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->c:Landroid/content/Context;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$a$c$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ca$a$c$1;-><init>(Lcom/adcolony/sdk/ca$a$c;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 731
    return-void
.end method
