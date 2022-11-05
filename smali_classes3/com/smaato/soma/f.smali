.class public Lcom/smaato/soma/f;
.super Ljava/lang/Object;
.source "BannerStateDelegateImp.java"

# interfaces
.implements Lcom/smaato/soma/internal/statemachine/a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/smaato/soma/j;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smaato/soma/f;->a:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionDisplayBanner;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lcom/smaato/soma/f$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/f$1;-><init>(Lcom/smaato/soma/f;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/smaato/soma/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/smaato/soma/j;->f()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :cond_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    throw v0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    new-instance v1, Lcom/smaato/soma/exception/UnableToTriggerTransitionDisplayBanner;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToTriggerTransitionDisplayBanner;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToEnterBannerStateExpanded;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lcom/smaato/soma/f$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/f$2;-><init>(Lcom/smaato/soma/f;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/smaato/soma/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/LoadingState;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :cond_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    throw v0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    new-instance v1, Lcom/smaato/soma/exception/UnableToEnterBannerStateExpanded;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToEnterBannerStateExpanded;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToExitBannerStateExpanded;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Lcom/smaato/soma/f$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/f$3;-><init>(Lcom/smaato/soma/f;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/smaato/soma/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/statemachine/LoadingState;->e()Z

    .line 84
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/smaato/soma/bannerutilities/b;->b(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    throw v0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Lcom/smaato/soma/exception/UnableToExitBannerStateExpanded;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToExitBannerStateExpanded;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseNoOrmmaBanner;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    new-instance v0, Lcom/smaato/soma/f$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/f$4;-><init>(Lcom/smaato/soma/f;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/smaato/soma/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 103
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerStateListener()Lcom/smaato/soma/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerStateListener()Lcom/smaato/soma/g;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1, v0}, Lcom/smaato/soma/g;->onWillCloseLandingPage(Lcom/smaato/soma/j;)V

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :cond_1
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    throw v0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    new-instance v1, Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseNoOrmmaBanner;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseNoOrmmaBanner;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseOrmmaBanner;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    new-instance v0, Lcom/smaato/soma/f$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/f$5;-><init>(Lcom/smaato/soma/f;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/smaato/soma/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 126
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerStateListener()Lcom/smaato/soma/g;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1, v0}, Lcom/smaato/soma/g;->onWillCloseLandingPage(Lcom/smaato/soma/j;)V

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :cond_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    throw v0

    .line 135
    :catch_1
    move-exception v0

    .line 136
    new-instance v1, Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseOrmmaBanner;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseOrmmaBanner;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToSetBannerStateToEmpty;
        }
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToExitEmptyState;
        }
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public h()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerDisplayedEnteredFailedException;
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method

.method public i()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToExitBannerStateDisplayed;
        }
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method public j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionExpandBanner;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method
