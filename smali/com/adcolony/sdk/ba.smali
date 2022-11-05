.class Lcom/adcolony/sdk/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/adcolony/sdk/cr;


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/cr;)V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    .line 9
    iput-object p1, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    .line 10
    return-void
.end method


# virtual methods
.method public claimServerReward(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->h(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public clearClientStorage(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->p(Lcom/adcolony/sdk/cr;I)V

    .line 151
    return-void
.end method

.method public close(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->g(Lcom/adcolony/sdk/cr;I)V

    .line 55
    return-void
.end method

.method public consoleLog(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->d(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public getServerRewardQueue(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->n(Lcom/adcolony/sdk/cr;I)V

    .line 115
    return-void
.end method

.method public getValueFromClientStorage(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->j(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method public logEvent(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->b(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public openCatalog(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->a(Lcom/adcolony/sdk/cr;I)V

    .line 15
    return-void
.end method

.method public openCatalogItem(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->a(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public openIAP(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->b(Lcom/adcolony/sdk/cr;I)V

    .line 30
    return-void
.end method

.method public openUrl(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/adcolony/sdk/cq;->a(Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public purchaseDigitalItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2, p3}, Lcom/adcolony/sdk/cq;->a(Lcom/adcolony/sdk/cr;Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public purgeFacebookCookiesCmd(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->d(Lcom/adcolony/sdk/cr;I)V

    .line 45
    return-void
.end method

.method public removeValueFromClientStorage(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->l(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public resetDeviceId(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->c(Lcom/adcolony/sdk/cr;I)V

    .line 35
    return-void
.end method

.method public restoreNonConsumables(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->c(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public setCloseButtonParams(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->e(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public setValueFromClientStorage(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->k(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public startPurchaseDigitalItem(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->i(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public suEraseAll(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->j(Lcom/adcolony/sdk/cr;I)V

    .line 80
    return-void
.end method

.method public suEraseAssets(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->i(Lcom/adcolony/sdk/cr;I)V

    .line 75
    return-void
.end method

.method public suEraseBacklog(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->h(Lcom/adcolony/sdk/cr;I)V

    .line 70
    return-void
.end method

.method public suFlushLogs(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->l(Lcom/adcolony/sdk/cr;I)V

    .line 90
    return-void
.end method

.method public suGrantCustomReward(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->f(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public suInitialize(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->k(Lcom/adcolony/sdk/cr;I)V

    .line 85
    return-void
.end method

.method public suReInit(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->g(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public suRefreshDevice(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/cq;->m(Lcom/adcolony/sdk/cr;I)V

    .line 95
    return-void
.end method

.method public suSendCommand(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adcolony/sdk/ba;->a:Lcom/adcolony/sdk/cr;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/cq;->f(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V

    .line 105
    return-void
.end method
