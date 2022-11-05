.class Lcom/loopme/BaseAd$3;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Lcom/loopme/tasks/AdvIdFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/BaseAd;->detectGoogleAdvertisingId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/BaseAd;


# direct methods
.method constructor <init>(Lcom/loopme/BaseAd;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/loopme/BaseAd$3;->this$0:Lcom/loopme/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/loopme/request/AdRequestParametersProvider;->getInstance()Lcom/loopme/request/AdRequestParametersProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/loopme/request/AdRequestParametersProvider;->setGoogleAdvertisingId(Ljava/lang/String;Z)V

    .line 317
    iget-object v0, p0, Lcom/loopme/BaseAd$3;->this$0:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->fetchAd()V

    .line 318
    return-void
.end method
