.class public Lcom/apprupt/sdk/CvMediator;
.super Ljava/lang/Object;
.source "CvMediator.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/Mediator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvMediator$Completion;
    }
.end annotation


# instance fields
.field private final a:Lcom/apprupt/sdk/Logger$log;

.field private final b:Lcom/apprupt/sdk/Logger$log;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/apprupt/sdk/CvContentOptions;

.field private final e:Lcom/apprupt/sdk/CvMediator$Completion;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/mediation/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/mediation/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/apprupt/sdk/mediation/AdWrapper$Listener;

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z

.field private final l:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/AdWrapper$Listener;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "Lifecycle.Mediator"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediator;->a:Lcom/apprupt/sdk/Logger$log;

    .line 18
    const-string v0, "Mediator"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediator;->b:Lcom/apprupt/sdk/Logger$log;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediator;->f:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediator;->g:Ljava/util/ArrayList;

    .line 25
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvMediator;->i:Z

    .line 26
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvMediator;->j:Z

    .line 27
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvMediator;->k:Z

    .line 36
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediator;->c:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/apprupt/sdk/CvMediator;->d:Lcom/apprupt/sdk/CvContentOptions;

    .line 38
    iput-object p3, p0, Lcom/apprupt/sdk/CvMediator;->e:Lcom/apprupt/sdk/CvMediator$Completion;

    .line 39
    iput-boolean p5, p0, Lcom/apprupt/sdk/CvMediator;->l:Z

    .line 40
    invoke-direct {p0, p4}, Lcom/apprupt/sdk/CvMediator;->a(Lcom/apprupt/sdk/mediation/AdWrapper$Listener;)Lcom/apprupt/sdk/mediation/AdWrapper$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvMediator;->h:Lcom/apprupt/sdk/mediation/AdWrapper$Listener;

    .line 41
    return-void
.end method

.method private a(Lcom/apprupt/sdk/mediation/AdWrapper$Listener;)Lcom/apprupt/sdk/mediation/AdWrapper$Listener;
    .locals 1

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 86
    :goto_0
    return-object p1

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvMediator;->l:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->d:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v0, v0, Lcom/apprupt/sdk/CvContentOptions;->i:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    move-result-object v0

    .line 49
    new-instance p1, Lcom/apprupt/sdk/CvMediator$1;

    invoke-direct {p1, p0, v0}, Lcom/apprupt/sdk/CvMediator$1;-><init>(Lcom/apprupt/sdk/CvMediator;Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;)V

    goto :goto_0

    .line 86
    :cond_1
    new-instance p1, Lcom/apprupt/sdk/CvMediator$2;

    invoke-direct {p1, p0}, Lcom/apprupt/sdk/CvMediator$2;-><init>(Lcom/apprupt/sdk/CvMediator;)V

    goto :goto_0
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvMediator;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediator;->a:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Adapter not ready for mediation"

    aput-object v3, v2, v4

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/Adapter;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    .line 143
    iput-boolean v4, p0, Lcom/apprupt/sdk/CvMediator;->k:Z

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/Adapter;

    .line 132
    iget-boolean v1, p0, Lcom/apprupt/sdk/CvMediator;->k:Z

    if-nez v1, :cond_2

    invoke-interface {v0, p0}, Lcom/apprupt/sdk/mediation/Adapter;->b(Lcom/apprupt/sdk/mediation/Mediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-interface {v0, p0}, Lcom/apprupt/sdk/mediation/Adapter;->a(Lcom/apprupt/sdk/mediation/Mediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediator;->a:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Loading with adapter"

    aput-object v3, v2, v4

    invoke-interface {v0}, Lcom/apprupt/sdk/mediation/Adapter;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 134
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediator;->d:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v1, v1, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v0, p0}, Lcom/apprupt/sdk/mediation/Adapter;->d(Lcom/apprupt/sdk/mediation/Mediator;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-interface {v0, p0}, Lcom/apprupt/sdk/mediation/Adapter;->c(Lcom/apprupt/sdk/mediation/Mediator;)V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->a:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Cannot load ad (no more adapters)."

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->e:Lcom/apprupt/sdk/CvMediator$Completion;

    const-string v1, "Cannot load ad"

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvMediator$Completion;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/apprupt/sdk/CvContentOptions;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->d:Lcom/apprupt/sdk/CvContentOptions;

    return-object v0
.end method

.method a(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 1

    .prologue
    .line 117
    invoke-interface {p1, p0}, Lcom/apprupt/sdk/mediation/AdWrapper;->a(Lcom/apprupt/sdk/mediation/Mediator;)V

    .line 118
    new-instance v0, Lcom/apprupt/sdk/CvMediator$3;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvMediator$3;-><init>(Lcom/apprupt/sdk/CvMediator;Lcom/apprupt/sdk/mediation/AdWrapper;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method a(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/mediation/Adapter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/apprupt/sdk/mediation/Adapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 112
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-direct {p0}, Lcom/apprupt/sdk/CvMediator;->h()V

    .line 114
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->c:Landroid/content/Context;

    return-object v0
.end method

.method public b(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->a:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ad loaded with"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/apprupt/sdk/mediation/AdWrapper;->i()Lcom/apprupt/sdk/mediation/Adapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/apprupt/sdk/mediation/Adapter;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvMediator;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->e:Lcom/apprupt/sdk/CvMediator$Completion;

    invoke-interface {v0, p1}, Lcom/apprupt/sdk/CvMediator$Completion;->a(Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 192
    :cond_0
    return-void
.end method

.method public c(Lcom/apprupt/sdk/mediation/AdWrapper;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-interface {p1}, Lcom/apprupt/sdk/mediation/AdWrapper;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p1}, Lcom/apprupt/sdk/mediation/AdWrapper;->h()Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediator;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iput-boolean v5, p0, Lcom/apprupt/sdk/CvMediator;->k:Z

    .line 201
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediator;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/apprupt/sdk/CvMediator;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 207
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/apprupt/sdk/CvMediator;->h()V

    .line 208
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediator;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Got fallback of type"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v3, "but cannot find such adapter!"

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvMediator;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->d:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v0, v0, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/apprupt/sdk/CvMediator$4;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvMediator$4;-><init>(Lcom/apprupt/sdk/CvMediator;)V

    return-object v0
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvMediator;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Lcom/apprupt/sdk/mediation/AdWrapper$Listener;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediator;->h:Lcom/apprupt/sdk/mediation/AdWrapper$Listener;

    return-object v0
.end method
