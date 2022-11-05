.class Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$1;
.super Ljava/lang/Object;
.source "MdotMFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)Lcom/mdotm/android/view/MdotMInterstitial;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)Lcom/mdotm/android/listener/MdotMAdEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/MdotMFullscreen;)Lcom/mdotm/android/model/MdotMAdRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/view/MdotMInterstitial;->loadInterstitial(Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/model/MdotMAdRequest;)V

    .line 43
    return-void
.end method
