.class Lcom/smaato/soma/j$a;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Lcom/smaato/soma/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/j;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/j;Lcom/smaato/soma/j$1;)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/smaato/soma/j$a;-><init>(Lcom/smaato/soma/j;)V

    return-void
.end method


# virtual methods
.method public final onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OnReceiveAdFailedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 854
    :try_start_0
    new-instance v0, Lcom/smaato/soma/j$a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/j$a$1;-><init>(Lcom/smaato/soma/j$a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 855
    invoke-interface {p2}, Lcom/smaato/soma/p;->a()Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    if-ne v0, v1, :cond_0

    .line 856
    new-instance v0, Lcom/smaato/soma/debug/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/smaato/soma/p;->a()Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "transitionErrorLoading"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 860
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->g()Z

    .line 936
    :goto_0
    invoke-interface {p2}, Lcom/smaato/soma/p;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;I)I

    .line 939
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;Z)Z

    .line 944
    :goto_1
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/j;->b(Lcom/smaato/soma/j;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-static {v0, v6}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;I)I

    .line 964
    return-void

    .line 862
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lcom/smaato/soma/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/smaato/soma/p;->c()Lcom/smaato/soma/mediation/CSMAdFormat;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-eq v0, v1, :cond_1

    .line 869
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    iget-object v0, v0, Lcom/smaato/soma/j;->l:Landroid/os/Handler;

    new-instance v1, Lcom/smaato/soma/j$a$2;

    invoke-direct {v1, p0, p2}, Lcom/smaato/soma/j$a$2;-><init>(Lcom/smaato/soma/j$a;Lcom/smaato/soma/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 947
    :try_start_2
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "BaseView"

    const-string v3, "RuntimeException occured in Mediation AdNetwork onReceiveAd()"

    const/4 v4, 0x1

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 951
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 961
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-static {v1, v6}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;I)I

    throw v0

    .line 893
    :cond_1
    :try_start_3
    invoke-interface {p2}, Lcom/smaato/soma/p;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/smaato/soma/p;->c()Lcom/smaato/soma/mediation/CSMAdFormat;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    if-ne v0, v1, :cond_2

    .line 895
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    iget-object v0, v0, Lcom/smaato/soma/j;->l:Landroid/os/Handler;

    new-instance v1, Lcom/smaato/soma/j$a$3;

    invoke-direct {v1, p0, p2}, Lcom/smaato/soma/j$a$3;-><init>(Lcom/smaato/soma/j$a;Lcom/smaato/soma/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 952
    :catch_1
    move-exception v0

    .line 954
    :try_start_4
    new-instance v1, Lcom/smaato/soma/debug/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/smaato/soma/p;->a()Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception occured in Mediation AdNetwork onReceiveAd()"

    const/4 v4, 0x1

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 958
    new-instance v1, Lcom/smaato/soma/exception/OnReceiveAdFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/OnReceiveAdFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 929
    :cond_2
    :try_start_5
    invoke-static {}, Lcom/smaato/soma/internal/a;->a()Lcom/smaato/soma/internal/a;

    move-result-object v0

    .line 930
    invoke-interface {p2}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/a;->a(Lcom/smaato/soma/AdType;)Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    .line 931
    iget-object v1, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/j;->setNextPackage(Lcom/smaato/soma/bannerutilities/a;)V

    .line 932
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/p;)V

    .line 933
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->c()Z

    goto/16 :goto_0

    .line 941
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/j$a;->a:Lcom/smaato/soma/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smaato/soma/j;->a(Lcom/smaato/soma/j;Z)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method
