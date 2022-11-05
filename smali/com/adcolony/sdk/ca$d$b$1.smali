.class Lcom/adcolony/sdk/ca$d$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$d$b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$d$b;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$d$b;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/adcolony/sdk/ca$d$b$1;->a:Lcom/adcolony/sdk/ca$d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b$1;->a:Lcom/adcolony/sdk/ca$d$b;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$d$b;->a(Lcom/adcolony/sdk/ca$d$b;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/adcolony/sdk/ca$d$b$1;->a:Lcom/adcolony/sdk/ca$d$b;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$d$b;->a(Lcom/adcolony/sdk/ca$d$b;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:finishDigitalRedemptionTransaction()"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method
