.class Lcom/intentsoftware/addapptr/s$2;
.super Ljava/lang/Object;
.source "Placement.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/s;->createAdLoaderListener()Lcom/intentsoftware/addapptr/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/s;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/s;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/intentsoftware/addapptr/s$2;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/intentsoftware/addapptr/ad/a;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$2;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/ad/a;->getConfig()Lcom/intentsoftware/addapptr/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/v;->reportResponse(Lcom/intentsoftware/addapptr/b;)V

    .line 265
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$2;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/s;->handleAdLoad(Lcom/intentsoftware/addapptr/ad/a;)V

    .line 266
    return-void
.end method

.method public onAdRequested(Lcom/intentsoftware/addapptr/b;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$2;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->getStats()Lcom/intentsoftware/addapptr/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intentsoftware/addapptr/v;->reportRequest(Lcom/intentsoftware/addapptr/b;)V

    .line 249
    return-void
.end method

.method public onFailedToLoadAd(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    const-string v0, "LOGNTS"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTS: nothingToShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/s$2;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/s;->access$000(Lcom/intentsoftware/addapptr/s;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "No Content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->log(Ljava/lang/String;)V

    .line 256
    :cond_0
    const-string v0, "TRIGNOTHINGTOSHOW"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const-string v0, "nothingToShow"

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/h;->writeLog(Ljava/lang/String;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/s$2;->this$0:Lcom/intentsoftware/addapptr/s;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/s;->handleAdLoadFail()V

    .line 260
    return-void
.end method
