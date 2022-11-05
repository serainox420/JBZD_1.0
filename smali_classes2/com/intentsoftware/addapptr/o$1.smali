.class Lcom/intentsoftware/addapptr/o$1;
.super Ljava/lang/Object;
.source "FullscreenPlacement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/o;-><init>(Ljava/lang/String;Lcom/intentsoftware/addapptr/PlacementSize;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/o;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/o;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/intentsoftware/addapptr/o$1;->this$0:Lcom/intentsoftware/addapptr/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o$1;->this$0:Lcom/intentsoftware/addapptr/o;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/o;->getLoadedAd()Lcom/intentsoftware/addapptr/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/o$1;->this$0:Lcom/intentsoftware/addapptr/o;

    iget-object v0, v0, Lcom/intentsoftware/addapptr/o;->loader:Lcom/intentsoftware/addapptr/h;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/h;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/intentsoftware/addapptr/o$1;->this$0:Lcom/intentsoftware/addapptr/o;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/o;->reloadInternal()Z

    .line 54
    :cond_0
    return-void
.end method
