.class Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$2;
.super Ljava/lang/Object;
.source "AppLovinFullscreen.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$202(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;Z)Z

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/AppLovinFullscreen;)V

    .line 58
    :cond_0
    return-void
.end method
