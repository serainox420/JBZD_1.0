.class Lcom/adcolony/sdk/ca$a$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a$c;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a$c;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$c$1;->a:Lcom/adcolony/sdk/ca$a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$1;->a:Lcom/adcolony/sdk/ca$a$c;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$a$c;->a(Lcom/adcolony/sdk/ca$a$c;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$c$1;->a:Lcom/adcolony/sdk/ca$a$c;

    invoke-static {v0}, Lcom/adcolony/sdk/ca$a$c;->a(Lcom/adcolony/sdk/ca$a$c;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:finishDigitalRedemptionTransaction()"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 729
    :cond_0
    return-void
.end method
