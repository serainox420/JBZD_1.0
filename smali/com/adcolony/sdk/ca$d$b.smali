.class Lcom/adcolony/sdk/ca$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/cm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ca$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/ca$d;Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 355
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$b;->a:Lcom/adcolony/sdk/ca$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object v0, p0, Lcom/adcolony/sdk/ca$d$b;->b:Landroid/webkit/WebView;

    .line 354
    iput-object v0, p0, Lcom/adcolony/sdk/ca$d$b;->c:Landroid/content/Context;

    .line 356
    iput-object p2, p0, Lcom/adcolony/sdk/ca$d$b;->b:Landroid/webkit/WebView;

    .line 357
    iput-object p3, p0, Lcom/adcolony/sdk/ca$d$b;->c:Landroid/content/Context;

    .line 358
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ca$d$b;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b;->b:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public a(Lcom/adcolony/sdk/bk;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$d$b$2;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/ca$d$b$2;-><init>(Lcom/adcolony/sdk/ca$d$b;Lcom/adcolony/sdk/bk;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 387
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b;->c:Landroid/content/Context;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b;->a:Lcom/adcolony/sdk/ca$d;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$d;->g:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->c(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ca$d$b$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ca$d$b$1;-><init>(Lcom/adcolony/sdk/ca$d$b;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 377
    return-void
.end method
