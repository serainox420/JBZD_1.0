.class Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$3;
.super Ljava/lang/Object;
.source "AppruptFullscreen.java"

# interfaces
.implements Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cvInterstitialDidAppear(I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V

    .line 96
    return-void
.end method

.method public cvInterstitialDidDisappear(I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public cvInterstitialDidFail(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public cvInterstitialFirstTap()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$3;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V

    .line 106
    return-void
.end method

.method public cvInterstitialWillAppear(I)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public cvInterstitialWillDisappear(I)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
