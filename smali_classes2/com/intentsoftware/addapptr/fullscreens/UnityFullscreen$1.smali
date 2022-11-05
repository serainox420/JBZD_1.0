.class Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;
.super Ljava/lang/Object;
.source "UnityFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Z)Z

    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$102(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Z)Z

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/UnityFullscreen;Ljava/lang/String;)V

    goto :goto_0
.end method
