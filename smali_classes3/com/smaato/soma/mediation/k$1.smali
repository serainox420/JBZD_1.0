.class Lcom/smaato/soma/mediation/k$1;
.super Ljava/lang/Object;
.source "MediationEventInterstitialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/mediation/k;-><init>(Lcom/smaato/soma/interstitial/b;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smaato/soma/mediation/k;


# direct methods
.method constructor <init>(Lcom/smaato/soma/mediation/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/smaato/soma/mediation/k$1;->b:Lcom/smaato/soma/mediation/k;

    iput-object p2, p0, Lcom/smaato/soma/mediation/k$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MediationEventInterstitialAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Third-party network timed out."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/mediation/k$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 59
    iget-object v0, p0, Lcom/smaato/soma/mediation/k$1;->b:Lcom/smaato/soma/mediation/k;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_TIMEOUT:Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/mediation/k;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 60
    iget-object v0, p0, Lcom/smaato/soma/mediation/k$1;->b:Lcom/smaato/soma/mediation/k;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/k;->g()V

    .line 61
    return-void
.end method
