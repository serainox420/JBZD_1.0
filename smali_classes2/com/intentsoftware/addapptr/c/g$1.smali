.class final Lcom/intentsoftware/addapptr/c/g$1;
.super Lcom/revmob/RevMobAdsListener;
.source "RevMobHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c/g;->init(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobSessionNotStarted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/c/g$a;

    .line 41
    invoke-interface {v0, p1}, Lcom/intentsoftware/addapptr/c/g$a;->onInitFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public onRevMobSessionStarted()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/g;->access$002(Z)Z

    .line 33
    invoke-static {}, Lcom/intentsoftware/addapptr/c/g;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/c/g$a;

    .line 34
    invoke-interface {v0}, Lcom/intentsoftware/addapptr/c/g$a;->onInitialized()V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method
