.class Lcom/adcolony/sdk/d$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->c(Lcom/adcolony/sdk/z;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyInterstitial;

.field final synthetic b:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/adcolony/sdk/d$20;->b:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$20;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/adcolony/sdk/d$20;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->h:Z

    .line 519
    iget-object v0, p0, Lcom/adcolony/sdk/d$20;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/d$20;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 520
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    iget-object v0, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    iget-object v0, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 525
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/k;->b:Landroid/app/AlertDialog;

    .line 528
    :cond_0
    return-void
.end method
