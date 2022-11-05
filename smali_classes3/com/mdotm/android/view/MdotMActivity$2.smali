.class Lcom/mdotm/android/view/MdotMActivity$2;
.super Ljava/util/TimerTask;
.source "MdotMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$2;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    .line 255
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMActivity$2;)Lcom/mdotm/android/view/MdotMActivity;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$2;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$2;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    new-instance v1, Lcom/mdotm/android/view/MdotMActivity$2$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMActivity$2$1;-><init>(Lcom/mdotm/android/view/MdotMActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/MdotMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method
