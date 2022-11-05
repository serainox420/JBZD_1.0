.class Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;
.super Ljava/lang/Object;
.source "SmartAdServerFullscreen.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->createResponseHandler()Lcom/smartadserver/android/library/ui/SASAdView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Landroid/app/Activity;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$202(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;I)I

    .line 123
    new-instance v1, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1$1;

    invoke-direct {v1, p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    invoke-static {}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$600()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Lcom/smartadserver/android/library/SASBannerView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)Lcom/smartadserver/android/library/SASBannerView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$700(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;)V

    .line 141
    return-void
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;Ljava/lang/String;)V

    .line 116
    return-void
.end method
