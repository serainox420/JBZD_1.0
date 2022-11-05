.class Lcom/smaato/soma/j$a$3;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/j$a;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/p;

.field final synthetic b:Lcom/smaato/soma/j$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/j$a;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/smaato/soma/j$a$3;->b:Lcom/smaato/soma/j$a;

    iput-object p2, p0, Lcom/smaato/soma/j$a$3;->a:Lcom/smaato/soma/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 899
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/internal/a;->a()Lcom/smaato/soma/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/j$a$3;->a:Lcom/smaato/soma/p;

    .line 900
    invoke-interface {v1}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/a;->a(Lcom/smaato/soma/AdType;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    .line 901
    iget-object v1, p0, Lcom/smaato/soma/j$a$3;->b:Lcom/smaato/soma/j$a;

    iget-object v1, v1, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/j;->setNextPackage(Lcom/smaato/soma/bannerutilities/a;)V

    .line 904
    iget-object v0, p0, Lcom/smaato/soma/j$a$3;->b:Lcom/smaato/soma/j$a;

    iget-object v0, v0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/smaato/soma/j$a$3;->b:Lcom/smaato/soma/j$a;

    iget-object v0, v0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/j$a$3;->a:Lcom/smaato/soma/p;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;)V

    .line 914
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/j$a$3;->b:Lcom/smaato/soma/j$a;

    iget-object v0, v0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->c()Z

    .line 923
    :goto_1
    return-void

    .line 908
    :cond_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BaseView"

    const-string v2, "getNextPackage() is Null handling Mediation Network InterstitialAd BaseView.onReceiveAd()"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 917
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BaseView"

    const-string v2, "Exception from Mediation Network InterstitialAd BaseView.onReceiveAd()"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1
.end method
