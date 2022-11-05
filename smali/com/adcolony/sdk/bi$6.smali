.class Lcom/adcolony/sdk/bi$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/adcolony/sdk/bi$6;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/adcolony/sdk/bi$6;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/adcolony/sdk/bi$6;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    const-string v1, "javascript:finishDigitalRedemptionTransaction()"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 543
    :cond_0
    return-void
.end method
