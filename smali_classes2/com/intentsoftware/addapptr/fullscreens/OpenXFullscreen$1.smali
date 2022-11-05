.class Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;
.super Ljava/lang/Object;
.source "OpenXFullscreen.java"

# interfaces
.implements Lcom/openx/view/AdEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->createListener()Lcom/openx/view/AdEventsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V

    .line 80
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V

    .line 75
    return-void
.end method

.method public onAdDidLoad()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;)V

    .line 70
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/OpenXFullscreen;Ljava/lang/String;)V

    .line 65
    return-void
.end method
