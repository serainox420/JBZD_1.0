.class Lcom/intentsoftware/addapptr/c$7;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c;->createConfigDownloaderListener()Lcom/intentsoftware/addapptr/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c$7;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDownloaded(Lcom/intentsoftware/addapptr/a/a;Z)V
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->getAdConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const-string v0, "Downloaded config with no supported ad networks. Please check the \"Settings\"-tab on the Addapptr website or contact Addapptr support."

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$7;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/c;->access$702(Lcom/intentsoftware/addapptr/c;Lcom/intentsoftware/addapptr/a/a;)Lcom/intentsoftware/addapptr/a/a;

    .line 716
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$7;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/c;->access$800(Lcom/intentsoftware/addapptr/c;Lcom/intentsoftware/addapptr/a/a;)V

    .line 718
    invoke-virtual {p1}, Lcom/intentsoftware/addapptr/a/a;->isUnrecognizedBundleId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$7;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$900(Lcom/intentsoftware/addapptr/c;)Lcom/intentsoftware/addapptr/AATKit$Delegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$7;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$900(Lcom/intentsoftware/addapptr/c;)Lcom/intentsoftware/addapptr/AATKit$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitUnknownBundleId()V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$7;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$900(Lcom/intentsoftware/addapptr/c;)Lcom/intentsoftware/addapptr/AATKit$Delegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$7;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$900(Lcom/intentsoftware/addapptr/c;)Lcom/intentsoftware/addapptr/AATKit$Delegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/intentsoftware/addapptr/AATKit$Delegate;->aatkitObtainedAdRules(Z)V

    .line 725
    :cond_2
    return-void
.end method
