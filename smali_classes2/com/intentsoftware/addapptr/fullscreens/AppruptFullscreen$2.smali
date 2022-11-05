.class Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$2;
.super Ljava/lang/Object;
.source "AppruptFullscreen.java"

# interfaces
.implements Lcom/apprupt/sdk/CvValueExchange$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->createValueExchangeListener()Lcom/apprupt/sdk/CvValueExchange$Listener;
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
    .line 53
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/apprupt/sdk/CvValueExchange$Reward;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/AppruptFullscreen;)V

    .line 58
    return-void
.end method
