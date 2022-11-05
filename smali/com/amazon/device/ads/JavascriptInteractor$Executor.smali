.class public Lcom/amazon/device/ads/JavascriptInteractor$Executor;
.super Ljava/lang/Object;
.source "JavascriptInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/JavascriptInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Executor"
.end annotation


# instance fields
.field private final interactor:Lcom/amazon/device/ads/JavascriptInteractor;

.field private proguardKeeper:Z


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/JavascriptInteractor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->proguardKeeper:Z

    .line 135
    iput-object p1, p0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->interactor:Lcom/amazon/device/ads/JavascriptInteractor;

    .line 136
    iget-boolean v0, p0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->proguardKeeper:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, v1, v1}, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->interactor:Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-static {v0, p1, p2}, Lcom/amazon/device/ads/JavascriptInteractor;->access$000(Lcom/amazon/device/ads/JavascriptInteractor;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
