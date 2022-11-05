.class Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "AdColonyFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->createInterstitialListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V

    .line 88
    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V

    .line 93
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 82
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;)V

    .line 83
    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;

    const-string v1, "Request not filled"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/AdColonyFullscreen;Ljava/lang/String;)V

    .line 98
    return-void
.end method
