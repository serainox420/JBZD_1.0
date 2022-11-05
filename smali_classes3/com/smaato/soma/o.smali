.class public Lcom/smaato/soma/o;
.super Ljava/lang/Object;
.source "LoadingStateDelegateImp.java"

# interfaces
.implements Lcom/smaato/soma/internal/statemachine/b;


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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateBlockedEnteredFailedException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lcom/smaato/soma/o$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/o$1;-><init>(Lcom/smaato/soma/o;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 52
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->c()V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/j;->setNextPackage(Lcom/smaato/soma/bannerutilities/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :cond_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    throw v0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    new-instance v1, Lcom/smaato/soma/exception/StateBlockedEnteredFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/StateBlockedEnteredFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateIdleEnteredException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Lcom/smaato/soma/o$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/o$2;-><init>(Lcom/smaato/soma/o;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 78
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/smaato/soma/j;->j()V

    .line 82
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->c()V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/j;->setNextPackage(Lcom/smaato/soma/bannerutilities/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    throw v0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    new-instance v1, Lcom/smaato/soma/exception/StateIdleEnteredException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/StateIdleEnteredException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerLoadingEnteredFailedException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Lcom/smaato/soma/o$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/o$3;-><init>(Lcom/smaato/soma/o;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 102
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->f()Lcom/smaato/soma/p;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getLoadingState()Lcom/smaato/soma/internal/statemachine/LoadingState;

    move-result-object v3

    .line 111
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v4

    .line 107
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/smaato/soma/bannerutilities/a;->a(Landroid/content/Context;Lcom/smaato/soma/j;Lcom/smaato/soma/internal/statemachine/LoadingState;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :cond_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    throw v0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    new-instance v1, Lcom/smaato/soma/exception/BannerLoadingEnteredFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerLoadingEnteredFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionLoadXMLFailedException;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    new-instance v0, Lcom/smaato/soma/o$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/o$4;-><init>(Lcom/smaato/soma/o;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdDownloader()Lcom/smaato/soma/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getAdDownloader()Lcom/smaato/soma/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/b;->e()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :cond_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    throw v0

    .line 136
    :catch_1
    move-exception v0

    .line 137
    new-instance v1, Lcom/smaato/soma/exception/TransitionLoadXMLFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TransitionLoadXMLFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionFinishLoadingFailedException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    new-instance v0, Lcom/smaato/soma/o$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/o$5;-><init>(Lcom/smaato/soma/o;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/smaato/soma/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 150
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    instance-of v1, v1, Lcom/smaato/soma/bannerutilities/d;

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getNextPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/smaato/soma/internal/connector/a;->a()V

    .line 158
    :cond_0
    instance-of v1, v0, Lcom/smaato/soma/BannerView;

    if-nez v1, :cond_1

    .line 159
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->e()Z

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    instance-of v1, v1, Lcom/smaato/soma/bannerutilities/d;

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/smaato/soma/internal/connector/a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    throw v0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    new-instance v1, Lcom/smaato/soma/exception/TransitionFinishLoadingFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/TransitionFinishLoadingFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateIdleExitFailedException;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateXMLLoadingEnteredFailedException;
        }
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method public h()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateXMLLoadingExitFailedException;
        }
    .end annotation

    .prologue
    .line 199
    return-void
.end method

.method public i()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateBlockedExitFailedException;
        }
    .end annotation

    .prologue
    .line 207
    return-void
.end method

.method public j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerLoadingExitFailedException;
        }
    .end annotation

    .prologue
    .line 215
    return-void
.end method

.method public k()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionLoadBannerFailedException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public l()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionBlockLoadingFailedException;
        }
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method public m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionUnblockLoadingFailedException;
        }
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public n()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionErrorLoadingFailedException;
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method
