.class Lcom/adcolony/sdk/d$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->i(Lcom/adcolony/sdk/z;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field final synthetic b:Lcom/adcolony/sdk/AdColonyInterstitial;

.field final synthetic c:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/adcolony/sdk/d$24;->c:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$24;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iput-object p3, p0, Lcom/adcolony/sdk/d$24;->b:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 825
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adcolony/sdk/h;->D:Z

    .line 826
    iget-object v0, p0, Lcom/adcolony/sdk/d$24;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/d$24;->b:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 827
    return-void
.end method
