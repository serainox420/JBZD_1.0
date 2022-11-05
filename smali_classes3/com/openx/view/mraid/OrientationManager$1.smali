.class Lcom/openx/view/mraid/OrientationManager$1;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/mraid/OrientationManager;->setOrientationEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/mraid/OrientationManager;


# direct methods
.method constructor <init>(Lcom/openx/view/mraid/OrientationManager;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/openx/view/mraid/OrientationManager$1;->this$0:Lcom/openx/view/mraid/OrientationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowedInitital()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager$1;->this$0:Lcom/openx/view/mraid/OrientationManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;->none:Lcom/openx/view/mraid/OrientationManager$ForcedOrientation;

    invoke-static {v0, v1, v2}, Lcom/openx/view/mraid/OrientationManager;->access$000(Lcom/openx/view/mraid/OrientationManager;ZLcom/openx/view/mraid/OrientationManager$ForcedOrientation;)V

    .line 115
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationManager$1;->this$0:Lcom/openx/view/mraid/OrientationManager;

    invoke-virtual {v0}, Lcom/openx/view/mraid/OrientationManager;->disableOrientationListener()V

    .line 117
    return-void
.end method
