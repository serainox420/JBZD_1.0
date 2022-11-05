.class Lcom/openx/view/tp/chain/ChainManager$2;
.super Ljava/lang/Object;
.source "ChainManager.java"

# interfaces
.implements Lcom/openx/view/tp/chain/SDKAdEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/tp/chain/ChainManager;->setSDKAdEventsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/chain/ChainManager;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/chain/ChainManager;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleAdLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0, v4}, Lcom/openx/view/tp/chain/ChainManager;->access$602(Lcom/openx/view/tp/chain/ChainManager;Z)Z

    .line 159
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/openx/view/tp/chain/ChainManager;->access$102(Lcom/openx/view/tp/chain/ChainManager;J)J

    .line 161
    const-string v0, "ChainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK AdDidLoad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/view/tp/chain/SDK;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$700(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/model/AdType;

    move-result-object v0

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0, v5}, Lcom/openx/view/tp/chain/ChainManager;->access$002(Lcom/openx/view/tp/chain/ChainManager;Z)Z

    .line 166
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->stopTimeout()V

    .line 167
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0, p2}, Lcom/openx/view/tp/chain/ChainManager;->access$800(Lcom/openx/view/tp/chain/ChainManager;Ljava/lang/Object;)V

    .line 177
    :cond_0
    :goto_0
    const-string v0, "ChainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child count after: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v2}, Lcom/openx/view/tp/chain/ChainManager;->access$900(Lcom/openx/view/tp/chain/ChainManager;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdDidLoad()V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iput v4, v0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    .line 186
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$700(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/model/AdType;

    move-result-object v0

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0, v5}, Lcom/openx/view/tp/chain/ChainManager;->access$002(Lcom/openx/view/tp/chain/ChainManager;Z)Z

    .line 173
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->stopTimeout()V

    goto :goto_0
.end method

.method private handleAdLoadFail(Lcom/openx/errors/AdError;)V
    .locals 3

    .prologue
    .line 196
    const-string v0, "ChainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send rdf: ad load failure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/view/tp/chain/ChainManager;->access$002(Lcom/openx/view/tp/chain/ChainManager;Z)Z

    .line 199
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/ChainManager;->stopTimeout()V

    .line 201
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    const-string v1, "rdf"

    invoke-virtual {v0, v1}, Lcom/openx/view/tp/chain/ChainManager;->record(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iget v0, v0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v1}, Lcom/openx/view/tp/chain/ChainManager;->access$300(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/openx/view/AdEventsListener;->onAdFailedToLoad(Lcom/openx/errors/AdError;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$300(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/tp/chain/parser/ChainResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/view/tp/chain/parser/ChainResponse;->getAds()Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    iget v2, v2, Lcom/openx/view/tp/chain/ChainManager;->chainIndex:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/view/tp/chain/parser/ChainItem;

    invoke-virtual {v1, v0}, Lcom/openx/view/tp/chain/ChainManager;->loadThirdPartyAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V

    goto :goto_0
.end method


# virtual methods
.method public onAdClicked(Lcom/openx/view/tp/chain/SDK;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$600(Lcom/openx/view/tp/chain/ChainManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClicked()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    const-string v1, "rc"

    invoke-virtual {v0, v1}, Lcom/openx/view/tp/chain/ChainManager;->record(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openx/view/tp/chain/ChainManager;->access$602(Lcom/openx/view/tp/chain/ChainManager;Z)Z

    .line 244
    :cond_1
    return-void
.end method

.method public onAdClosed(Lcom/openx/view/tp/chain/SDK;)V
    .locals 2

    .prologue
    .line 221
    const-string v0, "ChainManager"

    const-string v1, " closing the add - so activity can disable the button"

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/openx/view/tp/chain/ChainManager$2;->this$0:Lcom/openx/view/tp/chain/ChainManager;

    invoke-static {v0}, Lcom/openx/view/tp/chain/ChainManager;->access$1000(Lcom/openx/view/tp/chain/ChainManager;)Lcom/openx/view/AdEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/openx/view/AdEventsListener;->onAdClosed()V

    .line 228
    :cond_0
    return-void
.end method

.method public onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/openx/view/tp/chain/ChainManager$2;->handleAdLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/view/tp/chain/SDK;Lcom/openx/errors/AdError;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p2}, Lcom/openx/view/tp/chain/ChainManager$2;->handleAdLoadFail(Lcom/openx/errors/AdError;)V

    .line 192
    return-void
.end method
