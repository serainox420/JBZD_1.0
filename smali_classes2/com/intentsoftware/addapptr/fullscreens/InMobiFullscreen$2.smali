.class Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$2;
.super Ljava/lang/Object;
.source "InMobiFullscreen.java"

# interfaces
.implements Lcom/inmobi/monetization/IMIncentivisedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->createIncentivisedListener()Lcom/inmobi/monetization/IMIncentivisedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncentCompleted(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen$2;->this$0:Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/InMobiFullscreen;)V

    .line 113
    return-void
.end method
